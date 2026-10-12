import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical058
import NoFourMUBs.Step2.SOS.Canonical059
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical065
import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical100
import NoFourMUBs.Step2.SOS.Canonical101
import NoFourMUBs.Step2.SOS.Canonical114
import NoFourMUBs.Step2.SOS.Canonical118
import NoFourMUBs.Step2.SOS.Canonical156
import NoFourMUBs.Step2.SOS.Canonical200
import NoFourMUBs.Step2.SOS.Canonical238
import NoFourMUBs.Step2.SOS.Canonical266
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions127
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical82
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection4096 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -15), (421, -720), (555, -720), (697, 240), (807, -720), (1251, -5)]

def reductionPivot4096 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound4096 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1651).moment H =
      Integer.Sparse.eval reductionProjection4096 (momentVector H) := by
  have heq : reductionPivot4096 = (fun u v => (normalNode1651).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1651).moment H = injectiveMoment H reductionPivot4096 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1651).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4096 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4096 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4096 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1451, oldProjection1007, oldProjection602, reductionProjection4080] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4096 (0 : Fin 4)) = canonicalInput6453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6453 hH))).trans (reductionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4096 (1 : Fin 4)) = canonicalInput3832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3832 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4096 (2 : Fin 4)) = canonicalInput3763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection602 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3763 hH))).trans (oldProjectionSound602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4096 (3 : Fin 4)) = canonicalInput3761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4080 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4096 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3761 hH))).trans (reductionSound4080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1651).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4096 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1651).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4096 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection4096 ![reductionProjection1451, oldProjection1007, oldProjection602, reductionProjection4080]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4097 : Integer.Sparse (Fin 1613) := [(81, -96), (94, 7), (247, 32), (389, -288), (421, 144), (433, 288), (484, 144), (555, 288), (697, -96), (698, 32), (807, 288), (808, 144), (1251, -5)]

def reductionPivot4097 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound4097 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1645).moment H =
      Integer.Sparse.eval reductionProjection4097 (momentVector H) := by
  have heq : reductionPivot4097 = (fun u v => (normalNode1645).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1645).moment H = injectiveMoment H reductionPivot4097 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1645).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4097 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4097 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4097 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2934, reductionProjection4095, reductionProjection2818, reductionProjection2670, reductionProjection4096] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4097 (0 : Fin 5)) = (normalNode3369).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2934 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4097 (1 : Fin 5)) = (normalNode1806).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4095 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4097 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code389).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2818 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4097 (3 : Fin 5)) = canonicalInput3743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2670 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3743 hH))).trans (reductionSound2670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4097 (4 : Fin 5)) = (normalNode1651).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4096 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4097 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1645).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4097 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1645).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4097 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1, 1440, 1440] ![5, 1, 1440, 1, 1] reductionProjection4097 ![reductionProjection2934, reductionProjection4095, reductionProjection2818, reductionProjection2670, reductionProjection4096]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4098 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -15), (555, -720), (668, -720), (697, 240), (761, -720), (1251, -5)]

def reductionPivot4098 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound4098 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3372).moment H =
      Integer.Sparse.eval reductionProjection4098 (momentVector H) := by
  have heq : reductionPivot4098 = (fun u v => (normalNode3372).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3372).moment H = injectiveMoment H reductionPivot4098 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3372).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4098 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4098 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4098 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection521, oldProjection1007, reductionProjection178, reductionProjection1451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4098 (0 : Fin 4)) = canonicalInput10033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection521 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10033 hH))).trans (oldProjectionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4098 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3083 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3083 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4098 (2 : Fin 4)) = canonicalInput6455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6455 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4098 (3 : Fin 4)) = canonicalInput6453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4098 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6453 hH))).trans (reductionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3372).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4098 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3372).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4098 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection4098 ![oldProjection521, oldProjection1007, reductionProjection178, reductionProjection1451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4099 : Integer.Sparse (Fin 1613) := [(0, -7), (81, -480), (94, 60), (390, -1440), (395, 720), (421, 720), (423, 720), (431, 720), (433, 720), (555, 720), (668, 720), (697, -480), (698, 400), (700, 160), (761, 720), (806, 720), (807, 720), (865, 720), (1059, 80), (1219, -240), (1227, 160), (1251, 35)]

def reductionPivot4099 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound4099 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1646).moment H =
      Integer.Sparse.eval reductionProjection4099 (momentVector H) := by
  have heq : reductionPivot4099 = (fun u v => (normalNode1646).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1646).moment H = injectiveMoment H reductionPivot4099 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1646).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4099 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4099 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4099 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4098, oldProjection1639, reductionProjection2848, reductionProjection2783, reductionProjection4081] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4099 (0 : Fin 5)) = (normalNode3372).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4098 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4099 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1639 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4099 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code390).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2848 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4099 (3 : Fin 5)) = canonicalInput3745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2783 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3745 hH))).trans (reductionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4099 (4 : Fin 5)) = (normalNode1652).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4081 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4099 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4081 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1646).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4099 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1646).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4099 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1, 2, 2] ![1, 5, 1440, 720, 720] reductionProjection4099 ![reductionProjection4098, oldProjection1639, reductionProjection2848, reductionProjection2783, reductionProjection4081]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4100 : Integer.Sparse (Fin 1613) := [(76, 1), (81, 1), (458, -3), (801, -3), (807, -3), (1221, 1)]

def reductionPivot4100 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound4100 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1653).moment H =
      Integer.Sparse.eval reductionProjection4100 (momentVector H) := by
  have heq : reductionPivot4100 = (fun u v => (normalNode1653).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1653).moment H = injectiveMoment H reductionPivot4100 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1653).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4100 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4100 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4100 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2405, oldProjection598, oldProjection602, oldProjection480] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4100 (0 : Fin 4)) = canonicalInput15248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2405 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15248 hH))).trans (reductionSound2405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4100 (1 : Fin 4)) = canonicalInput4202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection598 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4202 hH))).trans (oldProjectionSound598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4100 (2 : Fin 4)) = canonicalInput3763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection602 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3763 hH))).trans (oldProjectionSound602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4100 (3 : Fin 4)) = canonicalInput3746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection480 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4100 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3746 hH))).trans (oldProjectionSound480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1653).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4100 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1653).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4100 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection4100 ![reductionProjection2405, oldProjection598, oldProjection602, oldProjection480]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4101 : Integer.Sparse (Fin 1613) := [(0, -11), (76, -240), (81, -480), (94, 110), (247, 80), (388, -1440), (433, 720), (458, 720), (489, 720), (559, 720), (697, -480), (698, 800), (700, 320), (789, 720), (801, 720), (807, 720), (808, 720), (1058, -240), (1059, 400), (1221, -240), (1251, -55)]

def reductionPivot4101 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound4101 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1647).moment H =
      Integer.Sparse.eval reductionProjection4101 (momentVector H) := by
  have heq : reductionPivot4101 = (fun u v => (normalNode1647).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1647).moment H = injectiveMoment H reductionPivot4101 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1647).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4101 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4101 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 1, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4101 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3029, oldProjection1640, oldProjection1964, reductionProjection2861, reductionProjection4100] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4101 (0 : Fin 5)) = (normalNode3373).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3029 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4101 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1640⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1640 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4101 (2 : Fin 5)) = canonicalInput3752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1964 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3752 hH))).trans (oldProjectionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4101 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code388).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2861 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4101 (4 : Fin 5)) = (normalNode1653).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4100 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4101 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1647).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4101 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1647).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4101 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 1, 6] ![1, 2, 2, 1440, 240] reductionProjection4101 ![reductionProjection3029, oldProjection1640, oldProjection1964, reductionProjection2861, reductionProjection4100]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4102 : Integer.Sparse (Fin 1613) := [(392, 1)]

theorem reductionSound4102 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code392).moment H =
      Integer.Sparse.eval reductionProjection4102 (momentVector H) := by
  have hc : coordinates (392 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code392) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4102, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4103 : Integer.Sparse (Fin 1613) := [(94, 1), (392, -24), (406, -24), (421, -24), (1052, 16), (1251, 1)]

def reductionPivot4103 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 3, -3, 0], ![1, 0, 1, -2]]

theorem reductionSound4103 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode1655).moment H =
      Integer.Sparse.eval reductionProjection4103 (momentVector H) := by
  have heq : reductionPivot4103 = (fun u v => (normalNode1655).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1655).moment H = injectiveMoment H reductionPivot4103 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1655).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4103 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4103 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4103 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1374, reductionProjection4075, reductionProjection4080, reductionProjection4102] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4103 (0 : Fin 4)) = canonicalInput17066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1374 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17066 hH))).trans (oldProjectionSound1374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4103 (1 : Fin 4)) = canonicalInput4209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4075 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4209 hH))).trans (reductionSound4075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4103 (2 : Fin 4)) = canonicalInput3764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4080 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3764 hH))).trans (reductionSound4080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4103 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code392).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4102 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4103 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1655).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4103 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1655).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4103 (j : Fin 4)))
      2 48 48 2 ![24, 1, 1, 1] ![2, 48, 48, 48] reductionProjection4103 ![oldProjection1374, reductionProjection4075, reductionProjection4080, reductionProjection4102]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4104 : Integer.Sparse (Fin 1613) := [(81, -48), (94, -7), (389, -288), (392, 144), (406, 144), (421, 144), (433, 144), (555, 288), (697, -48), (698, 32), (758, 288), (807, 288), (1050, -96), (1052, -192), (1059, 32), (1221, -96), (1251, -3)]

def reductionPivot4104 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound4104 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1649).moment H =
      Integer.Sparse.eval reductionProjection4104 (momentVector H) := by
  have heq : reductionPivot4104 = (fun u v => (normalNode1649).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1649).moment H = injectiveMoment H reductionPivot4104 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1649).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4104 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4104 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 48, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4104 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2744, oldProjection1642, reductionProjection4103, reductionProjection2818, reductionProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4104 (0 : Fin 5)) = (normalNode3375).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2744 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4104 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1642⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4104 (2 : Fin 5)) = (normalNode1655).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4103 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4104 (3 : Fin 5)) = canonicalInput3749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2818 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3749 hH))).trans (reductionSound2818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4104 (4 : Fin 5)) = canonicalInput3748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2744 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4104 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3748 hH))).trans (reductionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1649).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4104 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1649).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4104 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 48, 1, 1440] ![1, 1, 30, 1440, 1] reductionProjection4104 ![reductionProjection2744, oldProjection1642, reductionProjection4103, reductionProjection2818, reductionProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4105 : Integer.Sparse (Fin 1613) := [(94, 1), (392, -24), (758, -48), (1052, 16), (1251, 1)]

def reductionPivot4105 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![2, 0, 1, -3]]

theorem reductionSound4105 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode1650).moment H =
      Integer.Sparse.eval reductionProjection4105 (momentVector H) := by
  have heq : reductionPivot4105 = (fun u v => (normalNode1650).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1650).moment H = injectiveMoment H reductionPivot4105 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1650).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4105 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4105 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 24, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4105 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection587, oldProjection1374, reductionProjection4102, oldProjection587] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4105 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection587 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4105 (1 : Fin 4)) = canonicalInput3822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1374 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3822 hH))).trans (oldProjectionSound1374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4105 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code392).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4102 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4105 (3 : Fin 4)) = canonicalInput3750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection587 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4105 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3750 hH))).trans (oldProjectionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1650).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4105 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1650).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4105 (j : Fin 4)))
      2 48 48 2 ![1, 24, 1, 1] ![48, 2, 48, 48] reductionProjection4105 ![oldProjection587, oldProjection1374, reductionProjection4102, oldProjection587]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4106 : Integer.Sparse (Fin 1613) := [(391, 1)]

theorem reductionSound4106 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code391).moment H =
      Integer.Sparse.eval reductionProjection4106 (momentVector H) := by
  have hc : coordinates (391 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code391) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4106, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4107 : Integer.Sparse (Fin 1613) := [(393, 1)]

theorem reductionSound4107 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code393).moment H =
      Integer.Sparse.eval reductionProjection4107 (momentVector H) := by
  have hc : coordinates (393 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code393) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4107, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4108 : Integer.Sparse (Fin 1613) := [(38, 3), (393, -9), (700, -1), (701, -1), (704, -1), (796, -9), (804, -9), (1040, 3)]

def reductionPivot4108 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -2, 2, 0], ![0, 3, 1, -4], ![1, 0, -2, 1]]

theorem reductionSound4108 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1657).moment H =
      Integer.Sparse.eval reductionProjection4108 (momentVector H) := by
  have heq : reductionPivot4108 = (fun u v => (normalNode1657).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1657).moment H = injectiveMoment H reductionPivot4108 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1657).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot4108 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4108 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4108 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection929, oldProjection600, oldProjection595, reductionProjection4107] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4108 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node929⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection929 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection929 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4108 (1 : Fin 4)) = canonicalInput4204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection600 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4204 hH))).trans (oldProjectionSound600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4108 (2 : Fin 4)) = canonicalInput3765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection595 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3765 hH))).trans (oldProjectionSound595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4108 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code393).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4107 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4108 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1657).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4108 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1657).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4108 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection4108 ![oldProjection929, oldProjection600, oldProjection595, reductionProjection4107]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4109 : Integer.Sparse (Fin 1613) := [(394, 1)]

theorem reductionSound4109 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code394).moment H =
      Integer.Sparse.eval reductionProjection4109 (momentVector H) := by
  have hc : coordinates (394 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code394) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4109, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4110 : Integer.Sparse (Fin 1613) := [(435, 1)]

theorem reductionSound4110 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code435).moment H =
      Integer.Sparse.eval reductionProjection4110 (momentVector H) := by
  have hc : coordinates (435 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code435) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4110, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4111 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (397, -720), (405, -720), (435, -720), (698, -80), (1058, 240), (1226, -80), (1251, 40)]

def reductionPivot4111 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound4111 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1675).moment H =
      Integer.Sparse.eval reductionProjection4111 (momentVector H) := by
  have heq : reductionPivot4111 = (fun u v => (normalNode1675).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1675).moment H = injectiveMoment H reductionPivot4111 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1675).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4111 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4111 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4111 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1347, reductionProjection4110, reductionProjection4091, reductionProjection4083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4111 (0 : Fin 4)) = canonicalInput17071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17071 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4111 (1 : Fin 4)) = canonicalInput4213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4213 hH))).trans (reductionSound4110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4111 (2 : Fin 4)) = canonicalInput3775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3775 hH))).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4111 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code397).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4111 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1675).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4111 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1675).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4111 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection4111 ![oldProjection1347, reductionProjection4110, reductionProjection4091, reductionProjection4083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4112 : Integer.Sparse (Fin 1613) := [(405, -2), (434, -1), (768, -1)]

def reductionPivot4112 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound4112 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1663).moment H =
      Integer.Sparse.eval reductionProjection4112 (momentVector H) := by
  have heq : reductionPivot4112 = (fun u v => (normalNode1663).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1663).moment H = injectiveMoment H reductionPivot4112 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1663).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4112 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4112 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4112 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection211, oldProjection477, reductionProjection4091, reductionProjection4091] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4112 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code768).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4112 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4112 (2 : Fin 4)) = canonicalInput3775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3775 hH))).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4112 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code405).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4112 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1663).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4112 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1663).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4112 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection4112 ![reductionProjection211, oldProjection477, reductionProjection4091, reductionProjection4091]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4113 : Integer.Sparse (Fin 1613) := [(0, 1), (55, 240), (76, 240), (79, 240), (81, 240), (84, 240), (94, 10), (243, -80), (405, -720), (698, -160), (1058, 240), (1226, -160), (1227, -80), (1251, 25)]

def reductionPivot4113 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]

theorem reductionSound4113 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1662).moment H =
      Integer.Sparse.eval reductionProjection4113 (momentVector H) := by
  have heq : reductionPivot4113 = (fun u v => (normalNode1662).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1662).moment H = injectiveMoment H reductionPivot4113 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1662).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4113 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4113 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4113 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection306, oldProjection944, reductionProjection4091, reductionProjection153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4113 (0 : Fin 4)) = canonicalInput6476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6476 hH))).trans (reductionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4113 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1794 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection944 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1794 hH))).trans (oldProjectionSound944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4113 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code405).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4113 (3 : Fin 4)) = canonicalInput3773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection153 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4113 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3773 hH))).trans (reductionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1662).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4113 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1662).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4113 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 144] ![10, 2, 1440, 10] reductionProjection4113 ![reductionProjection306, oldProjection944, reductionProjection4091, reductionProjection153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4114 : Integer.Sparse (Fin 1613) := [(0, 1), (55, -48), (76, -144), (79, -96), (81, -96), (84, -48), (94, 10), (243, 16), (397, 144), (405, 576), (434, 288), (435, 144), (698, 160), (768, 288), (1058, -144), (1226, 96), (1227, 64), (1251, -23), (1323, -48)]

def reductionPivot4114 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound4114 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1658).moment H =
      Integer.Sparse.eval reductionProjection4114 (momentVector H) := by
  have heq : reductionPivot4114 = (fun u v => (normalNode1658).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1658).moment H = injectiveMoment H reductionPivot4114 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1658).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4114 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4114 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![36, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4114 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection307, oldProjection1649, reductionProjection4111, reductionProjection4112, reductionProjection4113] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4114 (0 : Fin 5)) = (normalNode3392).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4114 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4114 (2 : Fin 5)) = (normalNode1675).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4111 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4114 (3 : Fin 5)) = (normalNode1663).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4112 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4114 (4 : Fin 5)) = (normalNode1662).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4113 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4114 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1658).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4114 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1658).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4114 (j : Fin 5)))
      1 288 1440 5 ![36, 1440, 1440, 2, 1440] ![40, 1, 1, 720, 1] reductionProjection4114 ![reductionProjection307, oldProjection1649, reductionProjection4111, reductionProjection4112, reductionProjection4113]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4115 : Integer.Sparse (Fin 1613) := [(404, 1)]

theorem reductionSound4115 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code404).moment H =
      Integer.Sparse.eval reductionProjection4115 (momentVector H) := by
  have hc : coordinates (404 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code404) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4115, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4116 : Integer.Sparse (Fin 1613) := [(398, 1)]

theorem reductionSound4116 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code398).moment H =
      Integer.Sparse.eval reductionProjection4116 (momentVector H) := by
  have hc : coordinates (398 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code398) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4116, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4117 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (398, -720), (404, -720), (444, -720), (698, -160), (1058, 240), (1226, -80), (1227, -80), (1251, -20)]

def reductionPivot4117 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]

theorem reductionSound4117 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1677).moment H =
      Integer.Sparse.eval reductionProjection4117 (momentVector H) := by
  have heq : reductionPivot4117 = (fun u v => (normalNode1677).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1677).moment H = injectiveMoment H reductionPivot4117 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1677).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4117 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4117 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4117 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1277, reductionProjection1408, reductionProjection4115, reductionProjection4116] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4117 (0 : Fin 4)) = canonicalInput17072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17072 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4117 (1 : Fin 4)) = canonicalInput4214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4214 hH))).trans (reductionSound1408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4117 (2 : Fin 4)) = canonicalInput3776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3776 hH))).trans (reductionSound4115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4117 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code398).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4116 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4117 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1677).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4117 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1677).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4117 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection4117 ![oldProjection1277, reductionProjection1408, reductionProjection4115, reductionProjection4116]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4118 : Integer.Sparse (Fin 1613) := [(446, 1)]

theorem reductionSound4118 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code446).moment H =
      Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
  have hc : coordinates (446 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code446) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4118, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4119 : Integer.Sparse (Fin 1613) := [(404, -1), (405, -1), (433, -1), (446, -1)]

def reductionPivot4119 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound4119 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1672).moment H =
      Integer.Sparse.eval reductionProjection4119 (momentVector H) := by
  have heq : reductionPivot4119 = (fun u v => (normalNode1672).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1672).moment H = injectiveMoment H reductionPivot4119 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1672).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4119 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4119 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4119 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection476, reductionProjection4118, reductionProjection4091, reductionProjection4115] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4119 (0 : Fin 4)) = canonicalInput7344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7344 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4119 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code446).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4119 (2 : Fin 4)) = canonicalInput3775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3775 hH))).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4119 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code404).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4119 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1672).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4119 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1672).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4119 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection4119 ![oldProjection476, reductionProjection4118, reductionProjection4091, reductionProjection4115]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4120 : Integer.Sparse (Fin 1613) := [(0, -3), (55, -240), (56, -240), (58, -240), (76, -240), (79, -240), (81, -480), (84, -240), (90, 80), (94, 30), (243, 80), (398, 720), (404, 1440), (405, 720), (406, 720), (433, 1440), (444, 720), (446, 720), (697, -240), (698, 880), (700, 400), (704, 80), (767, 720), (1052, -480), (1058, -480), (1059, 320), (1226, 240), (1227, 160), (1251, -95)]

def reductionPivot4120 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound4120 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1659).moment H =
      Integer.Sparse.eval reductionProjection4120 (momentVector H) := by
  have heq : reductionPivot4120 = (fun u v => (normalNode1659).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1659).moment H = injectiveMoment H reductionPivot4120 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1659).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4120 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4120 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4120 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2274, oldProjection1653, reductionProjection4117, reductionProjection4119, reductionProjection4076] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4120 (0 : Fin 5)) = canonicalInput6463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6463 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4120 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1653 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4120 (2 : Fin 5)) = (normalNode1677).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4117 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4117 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4120 (3 : Fin 5)) = canonicalInput3766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4119 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3766 hH))).trans (reductionSound4119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4120 (4 : Fin 5)) = (normalNode1670).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4076 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4120 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1659).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4120 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1659).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4120 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 288] ![1, 1, 1, 720, 5] reductionProjection4120 ![reductionProjection2274, oldProjection1653, reductionProjection4117, reductionProjection4119, reductionProjection4076]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4121 : Integer.Sparse (Fin 1613) := [(53, -48), (84, -48), (94, -3), (243, 16), (700, 16), (1251, 1)]

def reductionPivot4121 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -3, 3, 0], ![2, 1, 0, -3], ![-1, 2, -3, 2]]

theorem reductionSound4121 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10876).moment H =
      Integer.Sparse.eval reductionProjection4121 (momentVector H) := by
  have heq : reductionPivot4121 = (fun u v => (normalNode10876).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10876).moment H = injectiveMoment H reductionPivot4121 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10876).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10876).entries)).symm
  have hshape : reductionPivot4121 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4121 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4121 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection146, oldProjection214, oldProjection91] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4121 (0 : Fin 3)) = canonicalInput12814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4121 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4121 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12814 hH))).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4121 (1 : Fin 3)) = canonicalInput23911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4121 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4121 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23911 hH))).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4121 (2 : Fin 3)) = canonicalInput23913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4121 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection91 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4121 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection91 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23913 hH))).trans (oldProjectionSound91 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10876).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4121 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10876).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4121 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection4121 ![reductionProjection146, oldProjection214, oldProjection91]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4122 : Integer.Sparse (Fin 1613) := [(399, 1)]

theorem reductionSound4122 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code399).moment H =
      Integer.Sparse.eval reductionProjection4122 (momentVector H) := by
  have hc : coordinates (399 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code399) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4122, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4123 : Integer.Sparse (Fin 1613) := [(53, 48), (55, 48), (84, 96), (94, 3), (243, -64), (399, -144), (700, -32), (1226, -32), (1251, -1)]

def reductionPivot4123 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]

theorem reductionSound4123 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1680).moment H =
      Integer.Sparse.eval reductionProjection4123 (momentVector H) := by
  have heq : reductionPivot4123 = (fun u v => (normalNode1680).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1680).moment H = injectiveMoment H reductionPivot4123 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1680).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4123 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4123 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4123 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1355, reductionProjection4121, reductionProjection153, reductionProjection4122] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4123 (0 : Fin 4)) = canonicalInput17074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1355 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17074 hH))).trans (oldProjectionSound1355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4123 (1 : Fin 4)) = canonicalInput4216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4121 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4216 hH))).trans (reductionSound4121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4123 (2 : Fin 4)) = canonicalInput3778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection153 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3778 hH))).trans (reductionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4123 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code399).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4122 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4123 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1680).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4123 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1680).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4123 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection4123 ![oldProjection1355, reductionProjection4121, reductionProjection153, reductionProjection4122]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4124 : Integer.Sparse (Fin 1613) := [(0, -3), (53, -240), (55, -240), (76, -480), (79, -240), (81, -480), (84, -480), (94, -20), (241, 160), (243, 320), (397, 1440), (399, 720), (405, 1440), (423, 720), (435, 1440), (691, -240), (698, 800), (700, 160), (762, 720), (1052, -240), (1058, -720), (1059, 160), (1226, 480), (1227, 160), (1251, -105)]

def reductionPivot4124 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound4124 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1660).moment H =
      Integer.Sparse.eval reductionProjection4124 (momentVector H) := by
  have heq : reductionPivot4124 = (fun u v => (normalNode1660).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1660).moment H = injectiveMoment H reductionPivot4124 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1660).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4124 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4124 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4124 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2207, oldProjection1654, reductionProjection4123, reductionProjection4111, reductionProjection4111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4124 (0 : Fin 5)) = canonicalInput6468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6468 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4124 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4124 (2 : Fin 5)) = (normalNode1680).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4123 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4124 (3 : Fin 5)) = canonicalInput3769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4111 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3769 hH))).trans (reductionSound4111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4124 (4 : Fin 5)) = (normalNode1675).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4111 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4124 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1660).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4124 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1660).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4124 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 1440, 1440] ![5, 1, 5, 1, 1] reductionProjection4124 ![reductionProjection2207, oldProjection1654, reductionProjection4123, reductionProjection4111, reductionProjection4111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4125 : Integer.Sparse (Fin 1613) := [(0, 1), (55, 240), (76, 240), (79, 240), (81, 240), (88, -80), (90, -160), (94, -15), (404, -720), (698, -240), (700, -80), (1058, 240), (1226, -160), (1227, -80), (1251, -20)]

def reductionPivot4125 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound4125 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1661).moment H =
      Integer.Sparse.eval reductionProjection4125 (momentVector H) := by
  have heq : reductionPivot4125 = (fun u v => (normalNode1661).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1661).moment H = injectiveMoment H reductionPivot4125 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1661).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4125 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4125 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4125 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection301, oldProjection1277, reductionProjection4115, reductionProjection4068] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4125 (0 : Fin 4)) = canonicalInput6475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection301 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6475 hH))).trans (reductionSound301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4125 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1793 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1793 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4125 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code404).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4125 (3 : Fin 4)) = canonicalInput3772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4068 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4125 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4068 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3772 hH))).trans (reductionSound4068 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1661).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4125 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1661).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4125 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 9] ![160, 2, 1440, 160] reductionProjection4125 ![reductionProjection301, oldProjection1277, reductionProjection4115, reductionProjection4068]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4126 : Integer.Sparse (Fin 1613) := [(56, -3), (81, -3), (90, 1), (698, 1), (1226, 1)]

def reductionPivot4126 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![0, 3, -1, -2], ![3, -2, -1, 0]]

theorem reductionSound4126 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6714).moment H =
      Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
  have heq : reductionPivot4126 = (fun u v => (normalNode6714).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6714).moment H = injectiveMoment H reductionPivot4126 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6714).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6714).entries)).symm
  have hshape : reductionPivot4126 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4126 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4126 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection97, oldProjection109, oldProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4126 (0 : Fin 3)) = canonicalInput337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4126 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4126 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound337 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4126 (1 : Fin 3)) = canonicalInput5508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4126 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4126 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5508 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4126 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2638 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4126 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4126 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2638 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6714).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4126 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6714).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4126 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection4126 ![oldProjection97, oldProjection109, oldProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4127 : Integer.Sparse (Fin 1613) := [(0, 2), (56, 240), (60, -80), (81, 240), (90, -80), (94, -15), (446, -720), (698, -320), (700, -480), (1059, -160), (1226, -80), (1251, -5)]

def reductionPivot4127 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound4127 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1894).moment H =
      Integer.Sparse.eval reductionProjection4127 (momentVector H) := by
  have heq : reductionPivot4127 = (fun u v => (normalNode1894).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1894).moment H = injectiveMoment H reductionPivot4127 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1894).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4127 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4127 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4127 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection802, oldProjection810, reductionProjection4118, reductionProjection4126] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4127 (0 : Fin 4)) = canonicalInput7571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection802 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7571 hH))).trans (oldProjectionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4127 (1 : Fin 4)) = canonicalInput4060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection810 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4060 hH))).trans (oldProjectionSound810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4127 (2 : Fin 4)) = canonicalInput3873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3873 hH))).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4127 (3 : Fin 4)) = canonicalInput3871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4127 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3871 hH))).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1894).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4127 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1894).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4127 (j : Fin 4)))
      2 1440 1440 2 ![360, 144, 1, 9] ![4, 10, 1440, 160] reductionProjection4127 ![oldProjection802, oldProjection810, reductionProjection4118, reductionProjection4126]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

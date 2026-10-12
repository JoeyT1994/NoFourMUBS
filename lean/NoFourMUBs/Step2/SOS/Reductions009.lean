import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical073
import NoFourMUBs.Step2.SOS.Canonical083
import NoFourMUBs.Step2.SOS.Canonical101
import NoFourMUBs.Step2.SOS.Canonical117
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical136
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical162
import NoFourMUBs.Step2.SOS.Canonical164
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical235
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical283
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical385
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions008
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical146
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection288 : Integer.Sparse (Fin 1613) := [(47, 1), (49, -2), (400, 2), (426, 2), (763, 1), (913, 2), (956, 1), (1137, 1), (1139, 2), (1203, 2), (1245, 2)]

def reductionPivot288 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]

theorem reductionSound288 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode146).moment H =
      Integer.Sparse.eval reductionProjection288 (momentVector H) := by
  have heq : reductionPivot288 = (fun u v => (normalNode146).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode146).moment H = injectiveMoment H reductionPivot288 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode146).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot288 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot288 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot288 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection228, reductionProjection280, reductionProjection285, reductionProjection286, reductionProjection287] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot288 (0 : Fin 5)) = canonicalInput324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection228 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound324 hH))).trans (reductionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot288 (1 : Fin 5)) = canonicalInput488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection280 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound488 hH))).trans (reductionSound280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot288 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code49).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection285 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot288 (3 : Fin 5)) = canonicalInput501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection286 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound501 hH))).trans (reductionSound286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot288 (4 : Fin 5)) = canonicalInput502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection287 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot288 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound502 hH))).trans (reductionSound287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode146).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot288 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode146).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot288 (j : Fin 5)))
      1 2 2 1 ![2, 2, 1, 2, 2] ![1, 1, 2, 1, 1] reductionProjection288 ![reductionProjection228, reductionProjection280, reductionProjection285, reductionProjection286, reductionProjection287]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection289 : Integer.Sparse (Fin 1613) := [(1024, 1)]

theorem reductionSound289 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1024).moment H =
      Integer.Sparse.eval reductionProjection289 (momentVector H) := by
  have hc : coordinates (1024 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1024) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection289, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection290 : Integer.Sparse (Fin 1613) := [(426, -1), (782, -1), (1024, -1), (1205, -1)]

def reductionPivot290 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -3, 1, 1], ![1, 1, -2, 0]]

theorem reductionSound290 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4491).moment H =
      Integer.Sparse.eval reductionProjection290 (momentVector H) := by
  have heq : reductionPivot290 = (fun u v => (normalNode4491).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4491).moment H = injectiveMoment H reductionPivot290 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4491).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot290 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot290 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot290 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection590, oldProjection473, reductionProjection282, reductionProjection289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot290 (0 : Fin 4)) = canonicalInput7934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7934 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot290 (1 : Fin 4)) = canonicalInput8914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8914 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot290 (2 : Fin 4)) = canonicalInput8920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection282 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8920 hH))).trans (reductionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot290 (3 : Fin 4)) = canonicalInput8921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot290 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8921 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4491).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot290 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4491).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot290 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection290 ![oldProjection590, oldProjection473, reductionProjection282, reductionProjection289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection291 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -80), (94, 10), (243, -160), (698, -160), (700, -80), (1004, -720), (1219, 240), (1226, -80), (1227, -160), (1251, 25)]

def reductionPivot291 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 0, 1], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 1, -3, 1]]

theorem reductionSound291 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5322).moment H =
      Integer.Sparse.eval reductionProjection291 (momentVector H) := by
  have heq : reductionPivot291 = (fun u v => (normalNode5322).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5322).moment H = injectiveMoment H reductionPivot291 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5322).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot291 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot291 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot291 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection951, oldProjection616, oldProjection1208, oldProjection1214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot291 (0 : Fin 4)) = canonicalInput7493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection951 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7493 hH))).trans (oldProjectionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot291 (1 : Fin 4)) = canonicalInput10411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10411 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot291 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4684 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4684 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot291 (3 : Fin 4)) = canonicalInput10542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot291 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10542 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5322).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot291 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5322).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot291 (j : Fin 4)))
      2 1440 1440 2 ![9, 1, 720, 72] ![160, 1440, 2, 20] reductionProjection291 ![oldProjection951, oldProjection616, oldProjection1208, oldProjection1214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection292 : Integer.Sparse (Fin 1613) := [(934, 1)]

theorem reductionSound292 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code934).moment H =
      Integer.Sparse.eval reductionProjection292 (momentVector H) := by
  have hc : coordinates (934 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code934) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection292, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection293 : Integer.Sparse (Fin 1613) := [(426, -1), (934, -1), (1004, -1), (1203, -1)]

def reductionPivot293 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound293 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4158).moment H =
      Integer.Sparse.eval reductionProjection293 (momentVector H) := by
  have heq : reductionPivot293 = (fun u v => (normalNode4158).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4158).moment H = injectiveMoment H reductionPivot293 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4158).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot293 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot293 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot293 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection616, oldProjection473, reductionProjection292, reductionProjection223] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot293 (0 : Fin 4)) = canonicalInput10373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10373 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot293 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3661 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3661 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot293 (2 : Fin 4)) = canonicalInput8169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8169 hH))).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot293 (3 : Fin 4)) = canonicalInput8167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot293 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8167 hH))).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4158).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot293 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4158).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot293 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection293 ![oldProjection616, oldProjection473, reductionProjection292, reductionProjection223]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection294 : Integer.Sparse (Fin 1613) := [(531, 1)]

theorem reductionSound294 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code531).moment H =
      Integer.Sparse.eval reductionProjection294 (momentVector H) := by
  have hc : coordinates (531 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code531) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection294, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection295 : Integer.Sparse (Fin 1613) := [(50, 1)]

theorem reductionSound295 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code50).moment H =
      Integer.Sparse.eval reductionProjection295 (momentVector H) := by
  have hc : coordinates (50 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code50) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection295, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection296 : Integer.Sparse (Fin 1613) := [(50, -1), (400, -1), (531, -1), (934, -1)]

def reductionPivot296 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, 1, 1, -3], ![1, 2, -3, 0]]

theorem reductionSound296 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode151).moment H =
      Integer.Sparse.eval reductionProjection296 (momentVector H) := by
  have heq : reductionPivot296 = (fun u v => (normalNode151).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode151).moment H = injectiveMoment H reductionPivot296 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode151).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot296 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot296 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot296 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection294, reductionProjection295, reductionProjection278, reductionProjection292] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot296 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code531).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection294 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot296 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code50).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection295 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot296 (2 : Fin 4)) = canonicalInput506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound506 hH))).trans (reductionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot296 (3 : Fin 4)) = canonicalInput505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot296 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound505 hH))).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode151).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot296 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode151).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot296 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection296 ![reductionProjection294, reductionProjection295, reductionProjection278, reductionProjection292]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection297 : Integer.Sparse (Fin 1613) := [(781, -1), (934, -1), (1139, -1), (1203, -1)]

def reductionPivot297 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 1, 0, -2], ![1, 2, -3, 0]]

theorem reductionSound297 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4151).moment H =
      Integer.Sparse.eval reductionProjection297 (momentVector H) := by
  have heq : reductionPivot297 = (fun u v => (normalNode4151).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4151).moment H = injectiveMoment H reductionPivot297 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4151).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot297 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot297 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot297 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection589, reductionProjection223, reductionProjection292, reductionProjection227] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot297 (0 : Fin 4)) = canonicalInput9357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection589 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9357 hH))).trans (oldProjectionSound589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot297 (1 : Fin 4)) = canonicalInput8183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8183 hH))).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot297 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code934).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot297 (3 : Fin 4)) = canonicalInput8168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection227 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot297 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8168 hH))).trans (reductionSound227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4151).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot297 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4151).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot297 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection297 ![oldProjection589, reductionProjection223, reductionProjection292, reductionProjection227]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection298 : Integer.Sparse (Fin 1613) := [(0, -1), (50, 720), (90, 80), (94, -10), (243, 160), (400, 720), (426, 1440), (531, 720), (698, 160), (700, 80), (781, 720), (782, 720), (934, 2160), (1004, 1440), (1024, 720), (1139, 720), (1203, 1440), (1205, 720), (1219, -240), (1226, 80), (1227, 160), (1251, -25)]

def reductionPivot298 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound298 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode147).moment H =
      Integer.Sparse.eval reductionProjection298 (momentVector H) := by
  have heq : reductionPivot298 = (fun u v => (normalNode147).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode147).moment H = injectiveMoment H reductionPivot298 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode147).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot298 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot298 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1440, 2, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot298 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection290, reductionProjection291, reductionProjection293, reductionProjection296, reductionProjection297] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot298 (0 : Fin 5)) = canonicalInput641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection290 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound641 hH))).trans (reductionSound290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot298 (1 : Fin 5)) = canonicalInput508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound508 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot298 (2 : Fin 5)) = canonicalInput500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection293 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound500 hH))).trans (reductionSound293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot298 (3 : Fin 5)) = canonicalInput498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection296 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound498 hH))).trans (reductionSound296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot298 (4 : Fin 5)) = canonicalInput497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection297 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot298 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection297 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound497 hH))).trans (reductionSound297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode147).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot298 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode147).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot298 (j : Fin 5)))
      1 1440 1440 1 ![2, 1440, 2, 2, 2] ![720, 1, 720, 720, 720] reductionProjection298 ![reductionProjection290, reductionProjection291, reductionProjection293, reductionProjection296, reductionProjection297]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection299 : Integer.Sparse (Fin 1613) := [(630, 1)]

theorem reductionSound299 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code630).moment H =
      Integer.Sparse.eval reductionProjection299 (momentVector H) := by
  have hc : coordinates (630 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code630) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection299, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection300 : Integer.Sparse (Fin 1613) := [(426, -1), (630, -1), (1004, -1), (1024, -1)]

def reductionPivot300 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, 2, -3, 1], ![1, -2, 1, 0], ![1, 1, 1, -3]]

theorem reductionSound300 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4402).moment H =
      Integer.Sparse.eval reductionProjection300 (momentVector H) := by
  have heq : reductionPivot300 = (fun u v => (normalNode4402).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4402).moment H = injectiveMoment H reductionPivot300 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4402).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot300 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot300 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot300 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection299, oldProjection616, reductionProjection289, oldProjection473] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot300 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code630).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot300 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot300 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1024).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot300 (3 : Fin 4)) = canonicalInput8896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot300 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8896 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4402).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot300 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4402).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot300 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection300 ![reductionProjection299, oldProjection616, reductionProjection289, oldProjection473]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection301 : Integer.Sparse (Fin 1613) := [(79, -3), (81, -3), (90, 1), (698, 1), (700, 1)]

def reductionPivot301 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 2, 1], ![-1, 3, 0, -2], ![3, -1, -2, 0]]

theorem reductionSound301 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7839).moment H =
      Integer.Sparse.eval reductionProjection301 (momentVector H) := by
  have heq : reductionPivot301 = (fun u v => (normalNode7839).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7839).moment H = injectiveMoment H reductionPivot301 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7839).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7839).entries)).symm
  have hshape : reductionPivot301 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot301 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot301 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection110, oldProjection107, oldProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot301 (0 : Fin 3)) = canonicalInput1820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot301 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot301 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1820 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot301 (1 : Fin 3)) = canonicalInput14007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot301 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection107 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot301 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14007 hH))).trans (oldProjectionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot301 (2 : Fin 3)) = canonicalInput14063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot301 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot301 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14063 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7839).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot301 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7839).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot301 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection301 ![oldProjection110, oldProjection107, oldProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection302 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (79, 240), (81, 240), (90, -80), (94, -5), (243, -80), (698, -80), (700, -80), (763, -720), (1058, 240), (1226, -160), (1227, -80), (1251, 30)]

def reductionPivot302 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound302 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3390).moment H =
      Integer.Sparse.eval reductionProjection302 (momentVector H) := by
  have heq : reductionPivot302 = (fun u v => (normalNode3390).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3390).moment H = injectiveMoment H reductionPivot302 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3390).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot302 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot302 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot302 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection953, oldProjection946, reductionProjection197, reductionProjection301] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot302 (0 : Fin 4)) = canonicalInput9764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9764 hH))).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot302 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3074 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection946 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3074 hH))).trans (oldProjectionSound946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot302 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code763).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot302 (3 : Fin 4)) = canonicalInput6466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection301 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot302 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6466 hH))).trans (reductionSound301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3390).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot302 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3390).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot302 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 9] ![160, 2, 1440, 160] reductionProjection302 ![oldProjection953, oldProjection946, reductionProjection197, reductionProjection301]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection303 : Integer.Sparse (Fin 1613) := [(0, -1), (50, 720), (76, -240), (79, -240), (81, -240), (90, 80), (94, 5), (243, 80), (400, 1440), (426, 1440), (500, 720), (531, 720), (630, 720), (698, 80), (700, 80), (763, 1440), (799, 720), (913, 1440), (934, 720), (1004, 720), (1024, 720), (1058, -240), (1226, 160), (1227, 80), (1234, 720), (1251, -30)]

def reductionPivot303 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 0, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound303 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode148).moment H =
      Integer.Sparse.eval reductionProjection303 (momentVector H) := by
  have heq : reductionPivot303 = (fun u v => (normalNode148).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode148).moment H = injectiveMoment H reductionPivot303 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode148).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot303 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot303 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1440, 2, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot303 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection300, reductionProjection302, reductionProjection286, reductionProjection296, reductionProjection203] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot303 (0 : Fin 5)) = canonicalInput667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection300 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound667 hH))).trans (reductionSound300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot303 (1 : Fin 5)) = canonicalInput510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound510 hH))).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot303 (2 : Fin 5)) = canonicalInput501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection286 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound501 hH))).trans (reductionSound286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot303 (3 : Fin 5)) = (normalNode151).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection296 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot303 (4 : Fin 5)) = canonicalInput496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection203 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot303 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound496 hH))).trans (reductionSound203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode148).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot303 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode148).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot303 (j : Fin 5)))
      1 1440 1440 1 ![2, 1440, 2, 2, 2] ![720, 1, 720, 720, 720] reductionProjection303 ![reductionProjection300, reductionProjection302, reductionProjection286, reductionProjection296, reductionProjection203]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection304 : Integer.Sparse (Fin 1613) := [(87, -3), (90, 1), (698, 2), (1226, 2), (1227, 1)]

def reductionPivot304 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 2, 1], ![-1, 3, -1, -1], ![3, -1, -1, -1]]

theorem reductionSound304 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7838).moment H =
      Integer.Sparse.eval reductionProjection304 (momentVector H) := by
  have heq : reductionPivot304 = (fun u v => (normalNode7838).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7838).moment H = injectiveMoment H reductionPivot304 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7838).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7838).entries)).symm
  have hshape : reductionPivot304 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot304 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot304 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection114, oldProjection109, oldProjection229] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot304 (0 : Fin 3)) = canonicalInput1819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot304 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot304 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1819 hH))).trans (oldProjectionSound114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot304 (1 : Fin 3)) = canonicalInput14006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot304 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot304 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14006 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot304 (2 : Fin 3)) = canonicalInput14056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot304 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection229 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot304 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14056 hH))).trans (oldProjectionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7838).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot304 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7838).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot304 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection304 ![oldProjection114, oldProjection109, oldProjection229]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection305 : Integer.Sparse (Fin 1613) := [(87, 48), (90, -16), (94, -1), (596, -144), (630, -144), (698, -80), (1226, -80), (1227, -48), (1251, 3)]

def reductionPivot305 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, -1, 1, -1]]

theorem reductionSound305 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7669).moment H =
      Integer.Sparse.eval reductionProjection305 (momentVector H) := by
  have heq : reductionPivot305 = (fun u v => (normalNode7669).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7669).moment H = injectiveMoment H reductionPivot305 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7669).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot305 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot305 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot305 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1249, reductionProjection304, oldProjection509, reductionProjection299] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot305 (0 : Fin 4)) = canonicalInput24690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24690 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot305 (1 : Fin 4)) = canonicalInput15301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15301 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot305 (2 : Fin 4)) = canonicalInput15091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15091 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot305 (3 : Fin 4)) = canonicalInput15079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot305 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15079 hH))).trans (reductionSound299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7669).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot305 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7669).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot305 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 1] ![2, 32, 288, 288] reductionProjection305 ![oldProjection1249, reductionProjection304, oldProjection509, reductionProjection299]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection306 : Integer.Sparse (Fin 1613) := [(76, -48), (79, -48), (94, 1), (698, 16), (1226, 16), (1251, -3)]

def reductionPivot306 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 3, 0], ![-1, 2, -2, 1], ![3, 0, -1, -2]]

theorem reductionSound306 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7824).moment H =
      Integer.Sparse.eval reductionProjection306 (momentVector H) := by
  have heq : reductionPivot306 = (fun u v => (normalNode7824).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7824).moment H = injectiveMoment H reductionPivot306 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7824).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7824).entries)).symm
  have hshape : reductionPivot306 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot306 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot306 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection103, oldProjection110, oldProjection226] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot306 (0 : Fin 3)) = canonicalInput2215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot306 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot306 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2215 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot306 (1 : Fin 3)) = canonicalInput14151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot306 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot306 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14151 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot306 (2 : Fin 3)) = canonicalInput14159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot306 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection226 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot306 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14159 hH))).trans (oldProjectionSound226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7824).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot306 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7824).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot306 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection306 ![oldProjection103, oldProjection110, oldProjection226]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection307 : Integer.Sparse (Fin 1613) := [(76, 12), (79, 6), (94, -1), (698, -8), (768, -18), (1226, -4), (1227, -2), (1323, 6)]

def reductionPivot307 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound307 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode3392).moment H =
      Integer.Sparse.eval reductionProjection307 (momentVector H) := by
  have heq : reductionPivot307 = (fun u v => (normalNode3392).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3392).moment H = injectiveMoment H reductionPivot307 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3392).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot307 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot307 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot307 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection948, oldProjection939, reductionProjection211, reductionProjection306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot307 (0 : Fin 4)) = canonicalInput9769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9769 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot307 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3082 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection939 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3082 hH))).trans (oldProjectionSound939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot307 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code768).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot307 (3 : Fin 4)) = canonicalInput6476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot307 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6476 hH))).trans (reductionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3392).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot307 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3392).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot307 (j : Fin 4)))
      2 36 720 40 ![720, 720, 1, 144] ![1, 1, 720, 5] reductionProjection307 ![oldProjection948, oldProjection939, reductionProjection211, reductionProjection306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection308 : Integer.Sparse (Fin 1613) := [(49, -288), (76, -96), (79, -48), (87, -48), (90, 16), (94, 9), (400, 144), (426, 144), (432, 144), (475, 144), (483, 144), (500, 144), (596, 144), (630, 144), (698, 144), (763, 144), (768, 144), (913, 144), (1226, 112), (1227, 64), (1251, -3), (1323, -48)]

def reductionPivot308 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-3, 0, 1, 2], ![0, -2, 1, 1], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound308 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode149).moment H =
      Integer.Sparse.eval reductionProjection308 (momentVector H) := by
  have heq : reductionPivot308 = (fun u v => (normalNode149).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode149).moment H = injectiveMoment H reductionPivot308 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode149).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot308 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot308 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 36, 2, 1, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot308 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection305, reductionProjection307, reductionProjection286, reductionProjection285, reductionProjection151] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot308 (0 : Fin 5)) = canonicalInput668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection305 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound668 hH))).trans (reductionSound305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot308 (1 : Fin 5)) = canonicalInput511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound511 hH))).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot308 (2 : Fin 5)) = canonicalInput503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection286 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound503 hH))).trans (reductionSound286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot308 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code49).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection285 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot308 (4 : Fin 5)) = canonicalInput499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection151 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot308 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound499 hH))).trans (reductionSound151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode149).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot308 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode149).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot308 (j : Fin 5)))
      1 288 288 1 ![288, 36, 2, 1, 2] ![1, 8, 144, 288, 144] reductionProjection308 ![reductionProjection305, reductionProjection307, reductionProjection286, reductionProjection285, reductionProjection151]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection309 : Integer.Sparse (Fin 1613) := [(0, 1), (531, -720), (698, -160), (919, -720), (1126, -720), (1219, 240), (1226, -80), (1227, -160), (1251, 15)]

def reductionPivot309 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound309 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2249).moment H =
      Integer.Sparse.eval reductionProjection309 (momentVector H) := by
  have heq : reductionPivot309 = (fun u v => (normalNode2249).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2249).moment H = injectiveMoment H reductionPivot309 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2249).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot309 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot309 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot309 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1208, oldProjection612, reductionProjection294, oldProjection682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot309 (0 : Fin 4)) = canonicalInput18157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18157 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot309 (1 : Fin 4)) = canonicalInput5326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5326 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot309 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code531).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection294 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot309 (3 : Fin 4)) = canonicalInput4686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot309 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4686 hH))).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2249).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot309 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2249).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot309 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection309 ![oldProjection1208, oldProjection612, reductionProjection294, oldProjection682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection310 : Integer.Sparse (Fin 1613) := [(441, 1)]

theorem reductionSound310 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code441).moment H =
      Integer.Sparse.eval reductionProjection310 (momentVector H) := by
  have hc : coordinates (441 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code441) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection310, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection311 : Integer.Sparse (Fin 1613) := [(50, -1), (441, -1), (1004, -1), (1243, -1)]

def reductionPivot311 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, 0, 1, 2], ![1, -2, 0, 1], ![1, 1, 1, -3], ![1, 2, -3, 0]]

theorem reductionSound311 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode153).moment H =
      Integer.Sparse.eval reductionProjection311 (momentVector H) := by
  have heq : reductionPivot311 = (fun u v => (normalNode153).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode153).moment H = injectiveMoment H reductionPivot311 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode153).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot311 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot311 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot311 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection229, reductionProjection295, reductionProjection310, oldProjection616] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot311 (0 : Fin 4)) = canonicalInput340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection229 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound340 hH))).trans (reductionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot311 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code50).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection295 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot311 (2 : Fin 4)) = canonicalInput527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection310 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound527 hH))).trans (reductionSound310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot311 (3 : Fin 4)) = canonicalInput529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot311 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound529 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode153).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot311 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode153).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot311 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection311 ![reductionProjection229, reductionProjection295, reductionProjection310, oldProjection616]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection312 : Integer.Sparse (Fin 1613) := [(48, 1)]

theorem reductionSound312 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code48).moment H =
      Integer.Sparse.eval reductionProjection312 (momentVector H) := by
  have hc : coordinates (48 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code48) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection312, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection313 : Integer.Sparse (Fin 1613) := [(426, -1), (782, -1), (934, -1), (1187, -1)]

def reductionPivot313 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 0, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound313 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4160).moment H =
      Integer.Sparse.eval reductionProjection313 (momentVector H) := by
  have heq : reductionPivot313 = (fun u v => (normalNode4160).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4160).moment H = injectiveMoment H reductionPivot313 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4160).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot313 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot313 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot313 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection590, oldProjection473, reductionProjection292, reductionProjection158] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot313 (0 : Fin 4)) = canonicalInput10986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10986 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot313 (1 : Fin 4)) = canonicalInput8281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8281 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot313 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code934).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot313 (3 : Fin 4)) = canonicalInput8166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection158 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot313 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8166 hH))).trans (reductionSound158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4160).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot313 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4160).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot313 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection313 ![oldProjection590, oldProjection473, reductionProjection292, reductionProjection158]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection314 : Integer.Sparse (Fin 1613) := [(0, -1), (48, -1440), (50, 720), (400, 720), (426, 1440), (441, 720), (531, 720), (698, 160), (763, 720), (782, 720), (913, 720), (919, 720), (934, 720), (1004, 720), (1126, 720), (1187, 720), (1219, -240), (1226, 80), (1227, 160), (1243, 720), (1251, -15)]

def reductionPivot314 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound314 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode150).moment H =
      Integer.Sparse.eval reductionProjection314 (momentVector H) := by
  have heq : reductionPivot314 = (fun u v => (normalNode150).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode150).moment H = injectiveMoment H reductionPivot314 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode150).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot314 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot314 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot314 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection309, reductionProjection311, reductionProjection286, reductionProjection312, reductionProjection313] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot314 (0 : Fin 5)) = (normalNode2249).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection309 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot314 (1 : Fin 5)) = canonicalInput521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection311 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound521 hH))).trans (reductionSound311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot314 (2 : Fin 5)) = canonicalInput503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection286 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound503 hH))).trans (reductionSound286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot314 (3 : Fin 5)) = canonicalInput495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound495 hH))).trans (reductionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot314 (4 : Fin 5)) = canonicalInput494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection313 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot314 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound494 hH))).trans (reductionSound313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode150).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot314 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode150).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot314 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 1, 2] ![1, 720, 720, 1440, 720] reductionProjection314 ![reductionProjection309, reductionProjection311, reductionProjection286, reductionProjection312, reductionProjection313]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection315 : Integer.Sparse (Fin 1613) := [(50, -1), (934, -1), (1004, -1), (1024, -1)]

def reductionPivot315 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, 0, 1, 2], ![1, -3, 1, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound315 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode154).moment H =
      Integer.Sparse.eval reductionProjection315 (momentVector H) := by
  have heq : reductionPivot315 = (fun u v => (normalNode154).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode154).moment H = injectiveMoment H reductionPivot315 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode154).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot315 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot315 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot315 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection289, oldProjection616, reductionProjection295, reductionProjection292] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot315 (0 : Fin 4)) = canonicalInput642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound642 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot315 (1 : Fin 4)) = canonicalInput528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound528 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot315 (2 : Fin 4)) = canonicalInput523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection295 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound523 hH))).trans (reductionSound295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot315 (3 : Fin 4)) = canonicalInput522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot315 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound522 hH))).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode154).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot315 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode154).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot315 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection315 ![reductionProjection289, oldProjection616, reductionProjection295, reductionProjection292]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection316 : Integer.Sparse (Fin 1613) := [(90, -3), (441, -9), (698, -3), (700, -1), (782, -9), (1004, -9), (1226, -2)]

def reductionPivot316 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 2, 1, -3], ![1, -2, 1, 0]]

theorem reductionSound316 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4526).moment H =
      Integer.Sparse.eval reductionProjection316 (momentVector H) := by
  have heq : reductionPivot316 = (fun u v => (normalNode4526).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4526).moment H = injectiveMoment H reductionPivot316 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4526).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot316 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot316 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot316 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1018, oldProjection590, oldProjection616, reductionProjection310] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot316 (0 : Fin 4)) = canonicalInput18289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18289 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot316 (1 : Fin 4)) = canonicalInput8990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8990 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot316 (2 : Fin 4)) = canonicalInput8745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8745 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot316 (3 : Fin 4)) = canonicalInput8738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection310 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot316 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8738 hH))).trans (reductionSound310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4526).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot316 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4526).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot316 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection316 ![oldProjection1018, oldProjection590, oldProjection616, reductionProjection310]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection317 : Integer.Sparse (Fin 1613) := [(0, -1), (50, 720), (90, 480), (94, -5), (243, 80), (441, 720), (596, 720), (698, 480), (700, 160), (782, 720), (913, 720), (934, 720), (1004, 1440), (1024, 720), (1226, 320), (1227, 80), (1243, 720), (1251, -40)]

def reductionPivot317 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, 0, 1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound317 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode152).moment H =
      Integer.Sparse.eval reductionProjection317 (momentVector H) := by
  have heq : reductionPivot317 = (fun u v => (normalNode152).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode152).moment H = injectiveMoment H reductionPivot317 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode152).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot317 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot317 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 2, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot317 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection230, oldProjection616, reductionProjection315, oldProjection2075, reductionProjection316] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot317 (0 : Fin 5)) = (normalNode102).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection230 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection230 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot317 (1 : Fin 5)) = canonicalInput512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound512 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot317 (2 : Fin 5)) = (normalNode154).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection315 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot317 (3 : Fin 5)) = canonicalInput513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound513 hH))).trans (oldProjectionSound2075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot317 (4 : Fin 5)) = canonicalInput514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection316 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot317 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound514 hH))).trans (reductionSound316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode152).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot317 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode152).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot317 (j : Fin 5)))
      1 1440 1440 1 ![2, 1, 2, 1440, 18] ![720, 1440, 720, 1, 80] reductionProjection317 ![reductionProjection230, oldProjection616, reductionProjection315, oldProjection2075, reductionProjection316]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection318 : Integer.Sparse (Fin 1613) := [(26, -1), (27, -1), (703, -1)]

def reductionPivot318 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-3, 0, 3], ![1, -3, 2], ![1, 4, -5]]

theorem reductionSound318 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode175).moment H =
      Integer.Sparse.eval reductionProjection318 (momentVector H) := by
  have heq : reductionPivot318 = (fun u v => (normalNode175).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode175).moment H = injectiveMoment H reductionPivot318 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode175).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot318 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot318 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot318 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection39, reductionProjection113, oldProjection17] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot318 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node39⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot318 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection39 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot318 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection39 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound39 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot318 (1 : Fin 3)) = canonicalInput607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot318 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection113 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot318 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound607 hH))).trans (reductionSound113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot318 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw572 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot318 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection17 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot318 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection17 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical572 hH))).trans (oldProjectionSound17 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode175).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot318 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode175).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot318 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection318 ![oldProjection39, reductionProjection113, oldProjection17]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection319 : Integer.Sparse (Fin 1613) := [(54, 1)]

theorem reductionSound319 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code54).moment H =
      Integer.Sparse.eval reductionProjection319 (momentVector H) := by
  have hc : coordinates (54 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code54) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection319, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical094
import NoFourMUBs.Step2.SOS.Canonical095
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical300
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical429
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions130
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions140
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions192
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical181
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical90
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6304 : Integer.Sparse (Fin 1613) := [(19, -4), (35, -48), (40, -48), (94, 1), (104, 16), (704, 16), (1251, 1)]

def reductionPivot6304 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -2, 3, -1], ![2, 0, 1, -3], ![-1, 2, -4, 3]]

theorem reductionSound6304 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10883).moment H =
      Integer.Sparse.eval reductionProjection6304 (momentVector H) := by
  have heq : reductionPivot6304 = (fun u v => (normalNode10883).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10883).moment H = injectiveMoment H reductionPivot6304 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10883).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10883).entries)).symm
  have hshape : reductionPivot6304 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6304 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6304 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection86, oldProjection166, reductionProjection238] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6304 (0 : Fin 3)) = canonicalInput14179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6304 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6304 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14179 hH))).trans (oldProjectionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6304 (1 : Fin 3)) = canonicalInput24494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6304 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6304 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24494 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6304 (2 : Fin 3)) = canonicalInput24498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6304 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection238 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6304 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24498 hH))).trans (reductionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10883).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6304 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10883).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6304 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection6304 ![oldProjection86, oldProjection166, reductionProjection238]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6305 : Integer.Sparse (Fin 1613) := [(721, 1)]

theorem reductionSound6305 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code721).moment H =
      Integer.Sparse.eval reductionProjection6305 (momentVector H) := by
  have hc : coordinates (721 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code721) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6305, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6306 : Integer.Sparse (Fin 1613) := [(19, -4), (40, -48), (77, -48), (94, 1), (241, 16), (243, 16), (1251, 1)]

def reductionPivot6306 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 3, 0], ![2, 0, 1, -3], ![0, 2, -4, 2]]

theorem reductionSound6306 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9546).moment H =
      Integer.Sparse.eval reductionProjection6306 (momentVector H) := by
  have heq : reductionPivot6306 = (fun u v => (normalNode9546).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9546).moment H = injectiveMoment H reductionPivot6306 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9546).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9546).entries)).symm
  have hshape : reductionPivot6306 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6306 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6306 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection104, oldProjection201, oldProjection86] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6306 (0 : Fin 3)) = canonicalInput2260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6306 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6306 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2260 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6306 (1 : Fin 3)) = canonicalInput14175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6306 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection201 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6306 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14175 hH))).trans (oldProjectionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6306 (2 : Fin 3)) = canonicalInput14179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6306 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6306 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14179 hH))).trans (oldProjectionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9546).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6306 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9546).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6306 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection6306 ![oldProjection104, oldProjection201, oldProjection86]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6307 : Integer.Sparse (Fin 1613) := [(19, 4), (35, 48), (40, 96), (77, 48), (94, -1), (104, -32), (241, -32), (243, -32), (704, -32), (721, -144), (1251, -1)]

def reductionPivot6307 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]

theorem reductionSound6307 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3140).moment H =
      Integer.Sparse.eval reductionProjection6307 (momentVector H) := by
  have heq : reductionPivot6307 = (fun u v => (normalNode3140).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3140).moment H = injectiveMoment H reductionPivot6307 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3140).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6307 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6307 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6307 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6304, oldProjection1295, reductionProjection6305, reductionProjection6306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6307 (0 : Fin 4)) = canonicalInput9644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6304 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9644 hH))).trans (reductionSound6304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6307 (1 : Fin 4)) = canonicalInput6165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6165 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6307 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code721).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6305 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6307 (3 : Fin 4)) = canonicalInput6086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6307 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6086 hH))).trans (reductionSound6306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3140).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6307 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3140).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6307 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection6307 ![reductionProjection6304, oldProjection1295, reductionProjection6305, reductionProjection6306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6308 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (104, -16), (241, -16), (243, -16), (691, 48), (692, 48), (704, -16), (716, -144), (1052, 48), (1053, 48), (1251, 1)]

def reductionPivot6308 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]

theorem reductionSound6308 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3129).moment H =
      Integer.Sparse.eval reductionProjection6308 (momentVector H) := by
  have heq : reductionPivot6308 = (fun u v => (normalNode3129).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3129).moment H = injectiveMoment H reductionPivot6308 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3129).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6308 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6308 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6308 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6161, oldProjection1178, oldProjection576, oldProjection1180] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6308 (0 : Fin 4)) = canonicalInput9637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6161 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9637 hH))).trans (reductionSound6161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6308 (1 : Fin 4)) = canonicalInput6146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6146 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6308 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node576⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection576 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6308 (3 : Fin 4)) = canonicalInput6076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1180 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6308 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6076 hH))).trans (oldProjectionSound1180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3129).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6308 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3129).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6308 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection6308 ![reductionProjection6161, oldProjection1178, oldProjection576, oldProjection1180]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6309 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 8), (20, 1), (94, 1), (235, -48), (692, -48)]

def reductionPivot6309 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![2, 0, 0, -2], ![0, -2, 4, -2], ![-1, 2, -4, 3]]

theorem reductionSound6309 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11219).moment H =
      Integer.Sparse.eval reductionProjection6309 (momentVector H) := by
  have heq : reductionPivot6309 = (fun u v => (normalNode11219).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11219).moment H = injectiveMoment H reductionPivot6309 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11219).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11219).entries)).symm
  have hshape : reductionPivot6309 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6309 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6309 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection266, oldProjection164, reductionProjection1729] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6309 (0 : Fin 3)) = canonicalInput33834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6309 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection266 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6309 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33834 hH))).trans (oldProjectionSound266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6309 (1 : Fin 3)) = canonicalInput34297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6309 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6309 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34297 hH))).trans (oldProjectionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6309 (2 : Fin 3)) = canonicalInput34298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6309 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1729 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6309 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34298 hH))).trans (reductionSound1729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11219).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6309 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11219).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6309 (j : Fin 3)))
      3 144 144 3 ![48, 1, 1] ![3, 144, 144] reductionProjection6309 ![oldProjection266, oldProjection164, reductionProjection1729]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6310 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -32), (20, 2), (94, 3), (1251, 1)]

def reductionPivot6310 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 1, -2, 2], ![0, 0, -2, 2], ![0, 0, 4, -4]]

theorem reductionSound6310 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11050).moment H =
      Integer.Sparse.eval reductionProjection6310 (momentVector H) := by
  have heq : reductionPivot6310 = (fun u v => (normalNode11050).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11050).moment H = injectiveMoment H reductionPivot6310 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11050).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot6310 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6310 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6310 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection9, oldProjection131, oldProjection139] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6310 (0 : Fin 3)) = canonicalInput27628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6310 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection9 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6310 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection9 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27628 hH))).trans (oldProjectionSound9 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6310 (1 : Fin 3)) = canonicalInput22685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6310 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection131 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6310 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection131 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22685 hH))).trans (oldProjectionSound131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6310 (2 : Fin 3)) = canonicalInput22650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6310 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection139 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6310 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22650 hH))).trans (oldProjectionSound139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11050).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6310 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11050).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6310 (j : Fin 3)))
      3 144 144 3 ![1, 24, 48] ![144, 6, 3] reductionProjection6310 ![oldProjection9, oldProjection131, oldProjection139]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6311 : Integer.Sparse (Fin 1613) := [(715, 1)]

theorem reductionSound6311 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code715).moment H =
      Integer.Sparse.eval reductionProjection6311 (momentVector H) := by
  have hc : coordinates (715 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code715) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6311, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6312 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -2), (94, -3), (235, 24), (692, 48), (715, -72), (1053, 24), (1251, -1)]

def reductionPivot6312 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, -1, 0], ![2, 0, 2, -4]]

theorem reductionSound6312 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3128).moment H =
      Integer.Sparse.eval reductionProjection6312 (momentVector H) := by
  have heq : reductionPivot6312 = (fun u v => (normalNode3128).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3128).moment H = injectiveMoment H reductionPivot6312 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3128).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6312 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6312 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6312 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6309, reductionProjection6310, reductionProjection6311, reductionProjection2226] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6312 (0 : Fin 4)) = canonicalInput9636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6309 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9636 hH))).trans (reductionSound6309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6312 (1 : Fin 4)) = canonicalInput6142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6310 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6142 hH))).trans (reductionSound6310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6312 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code715).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6311 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6312 (3 : Fin 4)) = canonicalInput6074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6312 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6074 hH))).trans (reductionSound2226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3128).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6312 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3128).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6312 (j : Fin 4)))
      2 144 144 2 ![144, 144, 1, 144] ![1, 1, 144, 1] reductionProjection6312 ![reductionProjection6309, reductionProjection6310, reductionProjection6311, reductionProjection2226]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6313 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -12), (20, 6), (35, -48), (40, -96), (77, -48), (94, 5), (104, 64), (235, -48), (241, 64), (243, 64), (691, -144), (692, -192), (704, 64), (715, 144), (716, 288), (721, 144), (758, 144), (1052, -240), (1053, -144), (1251, -1)]

def reductionPivot6313 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]

theorem reductionSound6313 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3124).moment H =
      Integer.Sparse.eval reductionProjection6313 (momentVector H) := by
  have heq : reductionPivot6313 = (fun u v => (normalNode3124).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3124).moment H = injectiveMoment H reductionPivot6313 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3124).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6313 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6313 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6313 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2719, reductionProjection6307, reductionProjection6308, reductionProjection6308, reductionProjection6312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6313 (0 : Fin 5)) = (normalNode3364).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6313 (1 : Fin 5)) = (normalNode3140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6307 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6313 (2 : Fin 5)) = canonicalInput6075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6308 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6075 hH))).trans (reductionSound6308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6313 (3 : Fin 5)) = (normalNode3129).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6308 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6313 (4 : Fin 5)) = (normalNode3128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6312 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6313 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3124).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6313 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3124).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6313 (j : Fin 5)))
      1 288 288 1 ![144, 288, 288, 288, 144] ![2, 1, 1, 1, 2] reductionProjection6313 ![reductionProjection2719, reductionProjection6307, reductionProjection6308, reductionProjection6308, reductionProjection6312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6314 : Integer.Sparse (Fin 1613) := [(722, 1)]

theorem reductionSound6314 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code722).moment H =
      Integer.Sparse.eval reductionProjection6314 (momentVector H) := by
  have hc : coordinates (722 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code722) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6314, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6315 : Integer.Sparse (Fin 1613) := [(38, 9), (42, -2), (77, 3), (700, -4), (701, -1), (704, -2), (722, -9)]

def reductionPivot6315 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 2, 1, -3], ![1, 0, -1, 0]]

theorem reductionSound6315 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3155).moment H =
      Integer.Sparse.eval reductionProjection6315 (momentVector H) := by
  have heq : reductionPivot6315 = (fun u v => (normalNode3155).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3155).moment H = injectiveMoment H reductionPivot6315 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3155).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6315 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6315 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6315 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4505, oldProjection1087, reductionProjection2256, reductionProjection6314] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6315 (0 : Fin 4)) = (normalNode9654).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4505 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6315 (1 : Fin 4)) = canonicalInput6370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1087 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6370 hH))).trans (oldProjectionSound1087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6315 (2 : Fin 4)) = canonicalInput6098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2256 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6098 hH))).trans (reductionSound2256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6315 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code722).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6314 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6315 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3155).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6315 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3155).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6315 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection6315 ![reductionProjection4505, oldProjection1087, reductionProjection2256, reductionProjection6314]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6316 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (243, 16), (244, -16), (700, 16), (701, 16)]

def reductionPivot6316 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, 0, -3, 4], ![0, -2, 2, 0], ![0, 2, 2, -4]]

theorem reductionSound6316 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9649).moment H =
      Integer.Sparse.eval reductionProjection6316 (momentVector H) := by
  have heq : reductionPivot6316 = (fun u v => (normalNode9649).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9649).moment H = injectiveMoment H reductionPivot6316 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9649).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot6316 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6316 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6316 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection33, oldProjection217, oldProjection171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6316 (0 : Fin 3)) = canonicalInput27501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6316 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6316 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27501 hH))).trans (oldProjectionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6316 (1 : Fin 3)) = canonicalInput19347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6316 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6316 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19347 hH))).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6316 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6988 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6316 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection171 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6316 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6988 hH))).trans (oldProjectionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9649).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6316 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9649).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6316 (j : Fin 3)))
      3 144 144 3 ![1, 48, 3] ![144, 3, 48] reductionProjection6316 ![oldProjection33, oldProjection217, oldProjection171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6317 : Integer.Sparse (Fin 1613) := [(718, 1)]

theorem reductionSound6317 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code718).moment H =
      Integer.Sparse.eval reductionProjection6317 (momentVector H) := by
  have hc : coordinates (718 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code718) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6317, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6318 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -1), (243, -16), (244, -8), (700, -16), (701, -16), (718, -72), (1053, 48), (1061, 48)]

def reductionPivot6318 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound6318 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3137).moment H =
      Integer.Sparse.eval reductionProjection6318 (momentVector H) := by
  have heq : reductionPivot6318 = (fun u v => (normalNode3137).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3137).moment H = injectiveMoment H reductionPivot6318 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3137).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6318 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6318 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6318 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6316, reductionProjection867, reductionProjection2232, reductionProjection6317] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6318 (0 : Fin 4)) = (normalNode9649).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6316 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6318 (1 : Fin 4)) = canonicalInput6367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection867 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6367 hH))).trans (reductionSound867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6318 (2 : Fin 4)) = canonicalInput6084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2232 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6084 hH))).trans (reductionSound2232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6318 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6317 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6318 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3137).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6318 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3137).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6318 (j : Fin 4)))
      2 144 144 2 ![144, 144, 9, 1] ![1, 1, 16, 144] reductionProjection6318 ![reductionProjection6316, reductionProjection867, reductionProjection2232, reductionProjection6317]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6319 : Integer.Sparse (Fin 1613) := [(38, 48), (94, -1), (244, -8), (698, -8), (700, -16), (701, -16), (704, -8), (717, -72), (1053, 24), (1059, -8), (1061, 24), (1251, -1)]

def reductionPivot6319 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, 0, 0, -1]]

theorem reductionSound6319 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3136).moment H =
      Integer.Sparse.eval reductionProjection6319 (momentVector H) := by
  have heq : reductionPivot6319 = (fun u v => (normalNode3136).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3136).moment H = injectiveMoment H reductionPivot6319 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3136).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6319 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6319 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6319 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1165, oldProjection997, oldProjection1164, oldProjection577] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6319 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1165⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1165 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6319 (1 : Fin 4)) = canonicalInput6366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6366 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6319 (2 : Fin 4)) = canonicalInput6083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1164 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6083 hH))).trans (oldProjectionSound1164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6319 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node577⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection577 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6319 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3136).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6319 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3136).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6319 (j : Fin 4)))
      2 144 144 2 ![9, 72, 9, 1] ![16, 2, 16, 144] reductionProjection6319 ![oldProjection1165, oldProjection997, oldProjection1164, oldProjection577]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6320 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (38, -168), (42, 16), (77, -24), (94, 7), (243, 16), (244, 24), (698, 48), (700, 136), (701, 56), (704, 32), (717, 144), (718, 72), (722, 72), (759, 72), (1052, -24), (1053, -96), (1059, 40), (1061, -96), (1251, 6)]

def reductionPivot6320 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound6320 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3125).moment H =
      Integer.Sparse.eval reductionProjection6320 (momentVector H) := by
  have heq : reductionPivot6320 = (fun u v => (normalNode3125).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3125).moment H = injectiveMoment H reductionPivot6320 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3125).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6320 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6320 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![36, 18, 144, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6320 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5814, reductionProjection6315, reductionProjection6318, reductionProjection6319, reductionProjection6319] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6320 (0 : Fin 5)) = (normalNode3378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5814 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6320 (1 : Fin 5)) = (normalNode3155).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6315 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6320 (2 : Fin 5)) = (normalNode3137).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6318 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6320 (3 : Fin 5)) = canonicalInput6078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6319 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6078 hH))).trans (reductionSound6319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6320 (4 : Fin 5)) = (normalNode3136).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6319 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6320 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3125).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6320 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3125).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6320 (j : Fin 5)))
      1 144 144 1 ![36, 18, 144, 144, 144] ![4, 8, 1, 1, 1] reductionProjection6320 ![reductionProjection5814, reductionProjection6315, reductionProjection6318, reductionProjection6319, reductionProjection6319]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6321 : Integer.Sparse (Fin 1613) := [(717, -1), (718, -1), (722, -1), (759, -1)]

def reductionPivot6321 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 2, 1, -3], ![2, 0, -2, 0]]

theorem reductionSound6321 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3126).moment H =
      Integer.Sparse.eval reductionProjection6321 (momentVector H) := by
  have heq : reductionPivot6321 = (fun u v => (normalNode3126).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3126).moment H = injectiveMoment H reductionPivot6321 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3126).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6321 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6321 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6321 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4394, reductionProjection6314, reductionProjection6317, oldProjection577] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6321 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code759).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6321 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code722).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6314 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6321 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6317 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6321 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node577⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection577 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6321 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3126).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6321 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3126).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6321 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6321 ![reductionProjection4394, reductionProjection6314, reductionProjection6317, oldProjection577]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6322 : Integer.Sparse (Fin 1613) := [(723, 1)]

theorem reductionSound6322 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code723).moment H =
      Integer.Sparse.eval reductionProjection6322 (momentVector H) := by
  have hc : coordinates (723 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code723) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6322, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6323 : Integer.Sparse (Fin 1613) := [(719, 1)]

theorem reductionSound6323 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code719).moment H =
      Integer.Sparse.eval reductionProjection6323 (momentVector H) := by
  have hc : coordinates (719 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code719) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6323, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6324 : Integer.Sparse (Fin 1613) := [(719, -1), (720, -1), (723, -1), (761, -1)]

def reductionPivot6324 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound6324 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3127).moment H =
      Integer.Sparse.eval reductionProjection6324 (momentVector H) := by
  have heq : reductionPivot6324 = (fun u v => (normalNode3127).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3127).moment H = injectiveMoment H reductionPivot6324 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3127).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6324 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6324 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6324 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection178, reductionProjection6322, oldProjection578, reductionProjection6323] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6324 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6324 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code723).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6324 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node578⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection578 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6324 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code719).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6323 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6324 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3127).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6324 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3127).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6324 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6324 ![reductionProjection178, reductionProjection6322, oldProjection578, reductionProjection6323]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6325 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (38, 240), (45, 240), (94, -15), (243, -80), (247, -80), (692, 240), (698, -80), (700, -240), (720, -720), (1053, 240), (1059, -80), (1251, -15)]

def reductionPivot6325 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound6325 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3130).moment H =
      Integer.Sparse.eval reductionProjection6325 (momentVector H) := by
  have heq : reductionPivot6325 = (fun u v => (normalNode3130).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3130).moment H = injectiveMoment H reductionPivot6325 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3130).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6325 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6325 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6325 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4183, oldProjection1168, oldProjection578, oldProjection1164] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6325 (0 : Fin 4)) = canonicalInput9640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4183 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9640 hH))).trans (reductionSound4183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6325 (1 : Fin 4)) = canonicalInput6157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6157 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6325 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node578⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection578 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6325 (3 : Fin 4)) = canonicalInput6080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1164 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6325 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6080 hH))).trans (oldProjectionSound1164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3130).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6325 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3130).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6325 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 9] ![160, 2, 1440, 160] reductionProjection6325 ![reductionProjection4183, oldProjection1168, oldProjection578, oldProjection1164]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6326 : Integer.Sparse (Fin 1613) := [(1081, 1)]

theorem reductionSound6326 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1081).moment H =
      Integer.Sparse.eval reductionProjection6326 (momentVector H) := by
  have hc : coordinates (1081 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1081) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6326, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6327 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -2), (243, -16), (567, -144), (704, -16), (720, -144), (1081, -144), (1251, -1)]

def reductionPivot6327 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound6327 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3131).moment H =
      Integer.Sparse.eval reductionProjection6327 (momentVector H) := by
  have heq : reductionPivot6327 = (fun u v => (normalNode3131).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3131).moment H = injectiveMoment H reductionPivot6327 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3131).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6327 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6327 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6327 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6326, oldProjection1095, oldProjection578, reductionProjection1454] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6327 (0 : Fin 4)) = canonicalInput9642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6326 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9642 hH))).trans (reductionSound6326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6327 (1 : Fin 4)) = canonicalInput6159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6159 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6327 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2888 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection578 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2888 hH))).trans (oldProjectionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6327 (3 : Fin 4)) = canonicalInput6081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6327 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6081 hH))).trans (reductionSound1454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3131).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6327 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3131).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6327 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection6327 ![reductionProjection6326, oldProjection1095, oldProjection578, reductionProjection1454]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6328 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (94, -6), (241, -16), (243, -32), (244, -16), (247, -16), (698, -16), (700, -32), (701, -16), (704, -16), (720, -144), (1052, 48), (1053, 48), (1061, 48), (1219, 48), (1251, -5)]

def reductionPivot6328 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound6328 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3132).moment H =
      Integer.Sparse.eval reductionProjection6328 (momentVector H) := by
  have heq : reductionPivot6328 = (fun u v => (normalNode3132).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3132).moment H = injectiveMoment H reductionPivot6328 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3132).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6328 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6328 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6328 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1270, oldProjection940, oldProjection578, reductionProjection2232] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6328 (0 : Fin 4)) = canonicalInput9759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1270 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9759 hH))).trans (oldProjectionSound1270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6328 (1 : Fin 4)) = canonicalInput6177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection940 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6177 hH))).trans (oldProjectionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6328 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node578⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection578 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6328 (3 : Fin 4)) = canonicalInput6079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2232 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6328 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6079 hH))).trans (reductionSound2232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3132).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6328 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3132).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6328 (j : Fin 4)))
      2 288 288 2 ![9, 144, 1, 9] ![32, 2, 288, 32] reductionProjection6328 ![oldProjection1270, oldProjection940, oldProjection578, reductionProjection2232]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6329 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -4), (229, 48), (240, 48), (567, -144), (719, -144), (914, -144), (1251, -3)]

def reductionPivot6329 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound6329 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3133).moment H =
      Integer.Sparse.eval reductionProjection6329 (momentVector H) := by
  have heq : reductionPivot6329 = (fun u v => (normalNode3133).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3133).moment H = injectiveMoment H reductionPivot6329 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3133).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6329 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6329 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6329 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection611, oldProjection1014, reductionProjection6323, reductionProjection1454] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6329 (0 : Fin 4)) = canonicalInput9760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection611 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection611 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9760 hH))).trans (oldProjectionSound611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6329 (1 : Fin 4)) = canonicalInput6178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6178 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6329 (2 : Fin 4)) = canonicalInput6082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6323 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6082 hH))).trans (reductionSound6323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6329 (3 : Fin 4)) = canonicalInput6081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6329 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6081 hH))).trans (reductionSound1454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3133).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6329 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3133).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6329 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection6329 ![oldProjection611, oldProjection1014, reductionProjection6323, reductionProjection1454]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6330 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (243, 32), (244, 16), (700, 16), (1040, -48), (1251, 1)]

def reductionPivot6330 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![1, -2, -2, 3], ![1, 3, 0, -4]]

theorem reductionSound6330 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9370).moment H =
      Integer.Sparse.eval reductionProjection6330 (momentVector H) := by
  have heq : reductionPivot6330 = (fun u v => (normalNode9370).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9370).moment H = injectiveMoment H reductionPivot6330 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9370).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9370).entries)).symm
  have hshape : reductionPivot6330 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6330 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6330 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection191, oldProjection217, oldProjection214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6330 (0 : Fin 3)) = canonicalInput5750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6330 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6330 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5750 hH))).trans (oldProjectionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6330 (1 : Fin 3)) = canonicalInput18741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6330 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6330 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18741 hH))).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6330 (2 : Fin 3)) = canonicalInput18775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6330 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6330 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18775 hH))).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9370).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6330 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9370).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6330 (j : Fin 3)))
      3 144 144 3 ![1, 48, 48] ![144, 3, 3] reductionProjection6330 ![oldProjection191, oldProjection217, oldProjection214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6331 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 2), (243, -32), (244, -16), (568, -144), (700, -16), (720, -144), (741, -144), (1040, 48), (1251, -1)]

def reductionPivot6331 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound6331 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3134).moment H =
      Integer.Sparse.eval reductionProjection6331 (momentVector H) := by
  have heq : reductionPivot6331 = (fun u v => (normalNode3134).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3134).moment H = injectiveMoment H reductionPivot6331 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3134).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6331 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6331 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6331 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6330, oldProjection583, oldProjection578, reductionProjection1561] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6331 (0 : Fin 4)) = canonicalInput19253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6330 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19253 hH))).trans (reductionSound6330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6331 (1 : Fin 4)) = canonicalInput6365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection583 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6365 hH))).trans (oldProjectionSound583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6331 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2888 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection578 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2888 hH))).trans (oldProjectionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6331 (3 : Fin 4)) = canonicalInput6077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1561 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6331 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6077 hH))).trans (reductionSound1561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3134).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6331 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3134).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6331 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6331 ![reductionProjection6330, oldProjection583, oldProjection578, reductionProjection1561]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6332 : Integer.Sparse (Fin 1613) := [(742, 1)]

theorem reductionSound6332 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code742).moment H =
      Integer.Sparse.eval reductionProjection6332 (momentVector H) := by
  have hc : coordinates (742 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code742) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6332, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6333 : Integer.Sparse (Fin 1613) := [(72, 48), (94, 3), (243, -16), (568, -144), (700, -16), (719, -144), (742, -144), (1058, 48), (1251, -1)]

def reductionPivot6333 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -2, 4], ![0, -2, 2, 0], ![0, 1, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound6333 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3135).moment H =
      Integer.Sparse.eval reductionProjection6333 (momentVector H) := by
  have heq : reductionPivot6333 = (fun u v => (normalNode3135).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3135).moment H = injectiveMoment H reductionPivot6333 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3135).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6333 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6333 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6333 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1017, reductionProjection6332, reductionProjection6323, reductionProjection1561] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6333 (0 : Fin 4)) = canonicalInput19551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19551 hH))).trans (oldProjectionSound1017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6333 (1 : Fin 4)) = canonicalInput6368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6332 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6368 hH))).trans (reductionSound6332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6333 (2 : Fin 4)) = canonicalInput6082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6323 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6082 hH))).trans (reductionSound6323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6333 (3 : Fin 4)) = canonicalInput6077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1561 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6333 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6077 hH))).trans (reductionSound1561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3135).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6333 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3135).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6333 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6333 ![oldProjection1017, reductionProjection6332, reductionProjection6323, reductionProjection1561]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6334 : Integer.Sparse (Fin 1613) := [(726, 1)]

theorem reductionSound6334 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code726).moment H =
      Integer.Sparse.eval reductionProjection6334 (momentVector H) := by
  have hc : coordinates (726 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code726) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6334, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6335 : Integer.Sparse (Fin 1613) := [(12, -3), (91, 1), (231, -3), (243, 1), (244, 1)]

def reductionPivot6335 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 2, 1], ![-2, 4, 0, -2], ![4, -2, -2, 0]]

theorem reductionSound6335 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7374).moment H =
      Integer.Sparse.eval reductionProjection6335 (momentVector H) := by
  have heq : reductionPivot6335 = (fun u v => (normalNode7374).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7374).moment H = injectiveMoment H reductionPivot6335 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7374).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7374).entries)).symm
  have hshape : reductionPivot6335 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6335 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6335 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection28, oldProjection138, oldProjection136] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6335 (0 : Fin 3)) = canonicalInput1782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6335 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection28 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6335 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection28 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1782 hH))).trans (reductionSound28 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6335 (1 : Fin 3)) = canonicalInput14002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6335 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection138 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6335 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14002 hH))).trans (oldProjectionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6335 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5816 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6335 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6335 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5816 hH))).trans (oldProjectionSound136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7374).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6335 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7374).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6335 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection6335 ![reductionProjection28, oldProjection138, oldProjection136]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

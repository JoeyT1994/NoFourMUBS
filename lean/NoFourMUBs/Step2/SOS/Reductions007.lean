import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical073
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions006
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical172
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical173
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection224 : Integer.Sparse (Fin 1613) := [(1245, 1)]

theorem reductionSound224 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1245).moment H =
      Integer.Sparse.eval reductionProjection224 (momentVector H) := by
  have hc : coordinates (1245 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1245) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection224, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection225 : Integer.Sparse (Fin 1613) := [(1137, 1)]

theorem reductionSound225 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1137).moment H =
      Integer.Sparse.eval reductionProjection225 (momentVector H) := by
  have hc : coordinates (1137 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1137) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection225, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection226 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (243, -16), (698, -32), (1047, 48), (1137, -144), (1203, -144), (1226, -16), (1245, -144), (1251, 3)]

def reductionPivot226 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 2, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![2, 1, 0, -3]]

theorem reductionSound226 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode100).moment H =
      Integer.Sparse.eval reductionProjection226 (momentVector H) := by
  have heq : reductionPivot226 = (fun u v => (normalNode100).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode100).moment H = injectiveMoment H reductionPivot226 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode100).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot226 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot226 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot226 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection223, oldProjection1318, reductionProjection224, reductionProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot226 (0 : Fin 4)) = canonicalInput504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound504 hH))).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot226 (1 : Fin 4)) = canonicalInput328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1318 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound328 hH))).trans (oldProjectionSound1318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot226 (2 : Fin 4)) = canonicalInput326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection224 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound326 hH))).trans (reductionSound224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot226 (3 : Fin 4)) = canonicalInput325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot226 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound325 hH))).trans (reductionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode100).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot226 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode100).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot226 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection226 ![reductionProjection223, oldProjection1318, reductionProjection224, reductionProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection227 : Integer.Sparse (Fin 1613) := [(1139, 1)]

theorem reductionSound227 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1139).moment H =
      Integer.Sparse.eval reductionProjection227 (momentVector H) := by
  have hc : coordinates (1139 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1139) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection227, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection228 : Integer.Sparse (Fin 1613) := [(913, -1), (1137, -1), (1139, -1), (1245, -1)]

def reductionPivot228 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-3, -1, 2, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![1, 2, 0, -3]]

theorem reductionSound228 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode101).moment H =
      Integer.Sparse.eval reductionProjection228 (momentVector H) := by
  have heq : reductionPivot228 = (fun u v => (normalNode101).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode101).moment H = injectiveMoment H reductionPivot228 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode101).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot228 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot228 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot228 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection227, reductionProjection202, reductionProjection224, reductionProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot228 (0 : Fin 4)) = canonicalInput4704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection227 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4704 hH))).trans (reductionSound227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot228 (1 : Fin 4)) = canonicalInput339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound339 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot228 (2 : Fin 4)) = canonicalInput327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection224 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound327 hH))).trans (reductionSound224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot228 (3 : Fin 4)) = canonicalInput325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot228 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound325 hH))).trans (reductionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode101).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot228 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode101).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot228 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection228 ![reductionProjection227, reductionProjection202, reductionProjection224, reductionProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection229 : Integer.Sparse (Fin 1613) := [(1243, 1)]

theorem reductionSound229 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1243).moment H =
      Integer.Sparse.eval reductionProjection229 (momentVector H) := by
  have hc : coordinates (1243 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1243) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection229, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection230 : Integer.Sparse (Fin 1613) := [(596, -1), (913, -1), (1004, -1), (1243, -1)]

def reductionPivot230 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 2, 2], ![1, -2, 0, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound230 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode102).moment H =
      Integer.Sparse.eval reductionProjection230 (momentVector H) := by
  have heq : reductionPivot230 = (fun u v => (normalNode102).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode102).moment H = injectiveMoment H reductionPivot230 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode102).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot230 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot230 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot230 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection616, oldProjection509, reductionProjection229, reductionProjection202] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot230 (0 : Fin 4)) = canonicalInput528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound528 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot230 (1 : Fin 4)) = canonicalInput343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound343 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot230 (2 : Fin 4)) = canonicalInput341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection229 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound341 hH))).trans (reductionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot230 (3 : Fin 4)) = canonicalInput339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot230 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound339 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode102).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot230 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode102).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot230 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection230 ![oldProjection616, oldProjection509, reductionProjection229, reductionProjection202]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection231 : Integer.Sparse (Fin 1613) := [(3, 2), (20, 1), (94, 3)]

def reductionPivot231 : Matrix (Fin 4) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, -3, 4], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound231 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode6267).moment H =
      Integer.Sparse.eval reductionProjection231 (momentVector H) := by
  have heq : reductionPivot231 = (fun u v => (normalNode6267).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6267).moment H = injectiveMoment H reductionPivot231 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6267).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot231 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot231 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 4, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot231 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection49, oldProjection8, oldProjection53] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot231 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw962 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot231 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot231 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical962 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot231 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5519 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot231 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection8 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot231 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection8 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5519 hH))).trans (oldProjectionSound8 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot231 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5554 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot231 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection53 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot231 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection53 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5554 hH))).trans (oldProjectionSound53 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6267).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot231 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6267).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot231 (j : Fin 3)))
      3 24 48 6 ![16, 4, 16] ![3, 12, 3] reductionProjection231 ![oldProjection49, oldProjection8, oldProjection53]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection232 : Integer.Sparse (Fin 1613) := [(32, 1)]

theorem reductionSound232 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code32).moment H =
      Integer.Sparse.eval reductionProjection232 (momentVector H) := by
  have hc : coordinates (32 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code32) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection232, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection233 : Integer.Sparse (Fin 1613) := [(3, -1), (32, -6), (94, -1), (96, 2), (105, 4), (243, 2)]

def reductionPivot233 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, -2, 2], ![0, 1, -1], ![3, 1, -4]]

theorem reductionSound233 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode103).moment H =
      Integer.Sparse.eval reductionProjection233 (momentVector H) := by
  have heq : reductionPivot233 = (fun u v => (normalNode103).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode103).moment H = injectiveMoment H reductionPivot233 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode103).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot233 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot233 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 24, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot233 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection195, reductionProjection231, reductionProjection232, reductionProjection108] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot233 (0 : Fin 4)) = canonicalInput585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection195 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound585 hH))).trans (oldProjectionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot233 (1 : Fin 4)) = canonicalInput376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection231 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound376 hH))).trans (reductionSound231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot233 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code32).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection232 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot233 (3 : Fin 4)) = canonicalInput365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection108 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot233 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound365 hH))).trans (reductionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode103).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot233 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode103).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot233 (j : Fin 4)))
      2 12 48 8 ![48, 24, 1, 48] ![1, 2, 48, 1] reductionProjection233 ![oldProjection195, reductionProjection231, reductionProjection232, reductionProjection108]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection234 : Integer.Sparse (Fin 1613) := [(33, 1)]

theorem reductionSound234 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code33).moment H =
      Integer.Sparse.eval reductionProjection234 (momentVector H) := by
  have hc : coordinates (33 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code33) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection234, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection235 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 2), (33, -48), (94, 3), (96, 16), (104, 16), (105, 16), (241, 16), (243, 16), (703, 16), (1251, 1)]

def reductionPivot235 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, -2, 2], ![1, 0, -1], ![2, 2, -4]]

theorem reductionSound235 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode104).moment H =
      Integer.Sparse.eval reductionProjection235 (momentVector H) := by
  have heq : reductionPivot235 = (fun u v => (normalNode104).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode104).moment H = injectiveMoment H reductionPivot235 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode104).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot235 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot235 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 48, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot235 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection141, oldProjection143, reductionProjection234, reductionProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot235 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw480 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection141 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical480 hH))).trans (oldProjectionSound141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot235 (1 : Fin 4)) = canonicalInput380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection143 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound380 hH))).trans (oldProjectionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot235 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code33).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot235 (3 : Fin 4)) = canonicalInput366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection111 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot235 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound366 hH))).trans (reductionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode104).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot235 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode104).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot235 (j : Fin 4)))
      2 96 96 2 ![3, 48, 1, 3] ![32, 2, 96, 32] reductionProjection235 ![oldProjection141, oldProjection143, reductionProjection234, reductionProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection236 : Integer.Sparse (Fin 1613) := [(34, 1)]

theorem reductionSound236 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code34).moment H =
      Integer.Sparse.eval reductionProjection236 (momentVector H) := by
  have hc : coordinates (34 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code34) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection236, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection237 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (33, -48), (34, -48), (94, 3), (108, 16), (1047, -48), (1251, 2)]

def reductionPivot237 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, -2, 2], ![1, 1, -2], ![2, 1, -3]]

theorem reductionSound237 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode105).moment H =
      Integer.Sparse.eval reductionProjection237 (momentVector H) := by
  have heq : reductionPivot237 = (fun u v => (normalNode105).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode105).moment H = injectiveMoment H reductionPivot237 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode105).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot237 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot237 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 48, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot237 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection196, oldProjection241, reductionProjection236, reductionProjection234] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot237 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw482 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical482 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot237 (1 : Fin 4)) = canonicalInput381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection241 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound381 hH))).trans (oldProjectionSound241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot237 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code34).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection236 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot237 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code33).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot237 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode105).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot237 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode105).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot237 (j : Fin 4)))
      2 96 96 2 ![1, 48, 1, 1] ![96, 2, 96, 96] reductionProjection237 ![oldProjection196, oldProjection241, reductionProjection236, reductionProjection234]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection238 : Integer.Sparse (Fin 1613) := [(35, 1)]

theorem reductionSound238 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code35).moment H =
      Integer.Sparse.eval reductionProjection238 (momentVector H) := by
  have hc : coordinates (35 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code35) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection238, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection239 : Integer.Sparse (Fin 1613) := [(19, -4), (35, -48), (94, 1), (96, 16), (104, 32), (701, 16), (703, 32), (704, 32), (1251, 1)]

def reductionPivot239 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-3, -1, 4], ![0, -2, 2], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound239 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode106).moment H =
      Integer.Sparse.eval reductionProjection239 (momentVector H) := by
  have heq : reductionPivot239 = (fun u v => (normalNode106).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode106).moment H = injectiveMoment H reductionPivot239 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode106).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot239 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot239 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 3, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot239 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection166, oldProjection80, reductionProjection238, reductionProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot239 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot239 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw321 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical321 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot239 (2 : Fin 4)) = canonicalInput367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection238 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound367 hH))).trans (reductionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot239 (3 : Fin 4)) = canonicalInput366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection111 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot239 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound366 hH))).trans (reductionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode106).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot239 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode106).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot239 (j : Fin 4)))
      2 96 96 2 ![48, 3, 1, 3] ![2, 32, 96, 32] reductionProjection239 ![oldProjection166, oldProjection80, reductionProjection238, reductionProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection240 : Integer.Sparse (Fin 1613) := [(33, -1), (34, -1), (45, -1), (694, -1)]

def reductionPivot240 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-3, -1, 4], ![0, -2, 2], ![1, 1, -2], ![1, 2, -3]]

theorem reductionSound240 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode107).moment H =
      Integer.Sparse.eval reductionProjection240 (momentVector H) := by
  have heq : reductionPivot240 = (fun u v => (normalNode107).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode107).moment H = injectiveMoment H reductionPivot240 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode107).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot240 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot240 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot240 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection167, oldProjection89, reductionProjection236, reductionProjection234] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot240 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node167⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot240 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot240 (2 : Fin 4)) = canonicalInput368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection236 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound368 hH))).trans (reductionSound236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot240 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code33).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot240 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode107).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot240 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode107).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot240 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection240 ![oldProjection167, oldProjection89, reductionProjection236, reductionProjection234]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection241 : Integer.Sparse (Fin 1613) := [(2, 4), (3, -16), (20, -2), (32, 48), (94, -19), (96, -32), (105, -64), (243, -32), (1251, -1)]

def reductionPivot241 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![3, 1, -4]]

theorem reductionSound241 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode108).moment H =
      Integer.Sparse.eval reductionProjection241 (momentVector H) := by
  have heq : reductionPivot241 = (fun u v => (normalNode108).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode108).moment H = injectiveMoment H reductionPivot241 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode108).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot241 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot241 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 12, 24, 24, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot241 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection105, reductionProjection233, reductionProjection231, reductionProjection231, oldProjection734] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot241 (0 : Fin 5)) = (normalNode44).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection105 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot241 (1 : Fin 5)) = (normalNode103).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection233 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot241 (2 : Fin 5)) = canonicalInput369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection231 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound369 hH))).trans (reductionSound231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot241 (3 : Fin 5)) = canonicalInput372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection231 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound372 hH))).trans (reductionSound231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot241 (4 : Fin 5)) = canonicalInput373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection734 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot241 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound373 hH))).trans (oldProjectionSound734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode108).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot241 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode108).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot241 (j : Fin 5)))
      1 96 96 1 ![96, 12, 24, 24, 96] ![1, 8, 4, 4, 1] reductionProjection241 ![reductionProjection105, reductionProjection233, reductionProjection231, reductionProjection231, oldProjection734]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection242 : Integer.Sparse (Fin 1613) := [(2, 2), (3, 12), (19, 6), (20, -1), (33, 24), (94, 3), (96, -8), (99, -8), (104, -8), (105, -8), (108, -16), (241, -8), (243, -16), (703, -16)]

def reductionPivot242 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![2, 2, -4]]

theorem reductionSound242 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode109).moment H =
      Integer.Sparse.eval reductionProjection242 (momentVector H) := by
  have heq : reductionPivot242 = (fun u v => (normalNode109).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode109).moment H = injectiveMoment H reductionPivot242 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode109).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot242 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot242 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot242 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection106, reductionProjection235, oldProjection143, oldProjection306, oldProjection732] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot242 (0 : Fin 5)) = (normalNode45).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection106 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot242 (1 : Fin 5)) = (normalNode104).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection235 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot242 (2 : Fin 5)) = canonicalInput370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection143 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound370 hH))).trans (oldProjectionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot242 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node306⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection306 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot242 (4 : Fin 5)) = canonicalInput374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection732 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot242 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection732 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound374 hH))).trans (oldProjectionSound732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode109).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot242 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode109).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot242 (j : Fin 5)))
      1 48 96 2 ![96, 96, 48, 96, 96] ![1, 1, 2, 1, 1] reductionProjection242 ![reductionProjection106, reductionProjection235, oldProjection143, oldProjection306, oldProjection732]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection243 : Integer.Sparse (Fin 1613) := [(20, 1), (104, 16), (108, 16), (704, 16), (1251, -1)]

def reductionPivot243 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, -3, 4], ![0, 2, -2], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound243 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6265).moment H =
      Integer.Sparse.eval reductionProjection243 (momentVector H) := by
  have heq : reductionPivot243 = (fun u v => (normalNode6265).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6265).moment H = injectiveMoment H reductionPivot243 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6265).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot243 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot243 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 16, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot243 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection127, oldProjection246, oldProjection52, oldProjection254] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot243 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot243 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot243 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5541 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection52 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection52 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5541 hH))).trans (oldProjectionSound52 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot243 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5546 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection254 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot243 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5546 hH))).trans (oldProjectionSound254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6265).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot243 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6265).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot243 (j : Fin 4)))
      2 96 96 2 ![48, 48, 16, 48] ![2, 2, 6, 2] reductionProjection243 ![oldProjection127, oldProjection246, oldProjection52, oldProjection254]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection244 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 16), (20, -2), (21, -16), (33, 48), (34, 48), (94, 5), (99, -16), (104, -32), (108, -16), (704, -16), (1047, 48), (1251, 3)]

def reductionPivot244 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![2, 1, -3]]

theorem reductionSound244 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode110).moment H =
      Integer.Sparse.eval reductionProjection244 (momentVector H) := by
  have heq : reductionPivot244 = (fun u v => (normalNode110).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode110).moment H = injectiveMoment H reductionPivot244 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode110).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot244 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot244 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot244 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection107, reductionProjection237, oldProjection241, oldProjection732, reductionProjection243] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot244 (0 : Fin 5)) = (normalNode46).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection107 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot244 (1 : Fin 5)) = (normalNode105).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection237 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot244 (2 : Fin 5)) = canonicalInput371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection241 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound371 hH))).trans (oldProjectionSound241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot244 (3 : Fin 5)) = canonicalInput374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection732 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection732 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound374 hH))).trans (oldProjectionSound732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot244 (4 : Fin 5)) = canonicalInput375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection243 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot244 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound375 hH))).trans (reductionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode110).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot244 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode110).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot244 (j : Fin 5)))
      1 96 96 1 ![96, 96, 48, 96, 96] ![1, 1, 2, 1, 1] reductionProjection244 ![reductionProjection107, reductionProjection237, oldProjection241, oldProjection732, reductionProjection243]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection245 : Integer.Sparse (Fin 1613) := [(0, 1), (2, 20), (3, 240), (19, 360), (20, -70), (35, 240), (94, -140), (96, -160), (104, -320), (701, -400), (703, -640), (704, -640), (1251, -75)]

def reductionPivot245 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound245 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode111).moment H =
      Integer.Sparse.eval reductionProjection245 (momentVector H) := by
  have heq : reductionPivot245 = (fun u v => (normalNode111).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode111).moment H = injectiveMoment H reductionPivot245 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode111).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot245 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot245 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 48, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot245 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection109, reductionProjection239, oldProjection311, oldProjection311, oldProjection553] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot245 (0 : Fin 5)) = (normalNode48).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection109 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot245 (1 : Fin 5)) = (normalNode106).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection239 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot245 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node311⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection311 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot245 (3 : Fin 5)) = canonicalInput377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection311 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound377 hH))).trans (oldProjectionSound311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot245 (4 : Fin 5)) = canonicalInput378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection553 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot245 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound378 hH))).trans (oldProjectionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode111).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot245 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode111).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot245 (j : Fin 5)))
      1 480 480 1 ![96, 96, 48, 48, 480] ![5, 5, 10, 10, 1] reductionProjection245 ![reductionProjection109, reductionProjection239, oldProjection311, oldProjection311, oldProjection553]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection246 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (45, -48), (94, 5), (104, 16), (108, 32), (247, 16), (704, 16), (1251, 4)]

def reductionPivot246 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![1, -1, 0], ![1, 1, -2], ![1, 2, -3]]

theorem reductionSound246 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode121).moment H =
      Integer.Sparse.eval reductionProjection246 (momentVector H) := by
  have heq : reductionPivot246 = (fun u v => (normalNode121).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode121).moment H = injectiveMoment H reductionPivot246 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode121).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot246 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot246 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 48, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot246 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection78, oldProjection89, oldProjection173, oldProjection244] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot246 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection78 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot246 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot246 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw326 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical326 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot246 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw327 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection244 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot246 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical327 hH))).trans (oldProjectionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode121).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot246 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode121).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot246 (j : Fin 4)))
      2 96 96 2 ![3, 1, 48, 24] ![32, 96, 2, 4] reductionProjection246 ![oldProjection78, oldProjection89, oldProjection173, oldProjection244]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection247 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 40), (19, 280), (20, -30), (21, -80), (33, 240), (34, 240), (45, 480), (94, -135), (99, -80), (104, -320), (108, -720), (247, -320), (694, 240), (704, -240), (1251, -120)]

def reductionPivot247 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, -1, 1], ![1, 0, -1], ![1, 1, -2], ![1, 2, -3]]

theorem reductionSound247 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode112).moment H =
      Integer.Sparse.eval reductionProjection247 (momentVector H) := by
  have heq : reductionPivot247 = (fun u v => (normalNode112).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode112).moment H = injectiveMoment H reductionPivot247 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode112).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot247 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot247 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 2, 96, 480, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot247 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection110, reductionProjection240, reductionProjection246, oldProjection553, oldProjection733] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot247 (0 : Fin 5)) = (normalNode49).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection110 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot247 (1 : Fin 5)) = (normalNode107).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection240 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot247 (2 : Fin 5)) = (normalNode121).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection246 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot247 (3 : Fin 5)) = canonicalInput378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection553 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound378 hH))).trans (oldProjectionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot247 (4 : Fin 5)) = canonicalInput379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection733 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot247 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound379 hH))).trans (oldProjectionSound733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode112).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot247 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode112).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot247 (j : Fin 5)))
      1 480 480 1 ![96, 2, 96, 480, 240] ![5, 240, 5, 1, 2] reductionProjection247 ![reductionProjection110, reductionProjection240, reductionProjection246, oldProjection553, oldProjection733]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection248 : Integer.Sparse (Fin 1613) := [(3, 4), (20, 2), (26, -32), (42, -32), (94, -21), (105, -48), (700, -48), (1251, 1)]

def reductionPivot248 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![3, -1, -2]]

theorem reductionSound248 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode113).moment H =
      Integer.Sparse.eval reductionProjection248 (momentVector H) := by
  have heq : reductionPivot248 = (fun u v => (normalNode113).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode113).moment H = injectiveMoment H reductionPivot248 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode113).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot248 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot248 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 48, 48, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot248 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection116, oldProjection248, oldProjection248, oldProjection248, oldProjection312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot248 (0 : Fin 5)) = (normalNode53).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection116 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot248 (1 : Fin 5)) = canonicalInput382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection248 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound382 hH))).trans (oldProjectionSound248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot248 (2 : Fin 5)) = canonicalInput386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection248 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound386 hH))).trans (oldProjectionSound248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot248 (3 : Fin 5)) = canonicalInput388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection248 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound388 hH))).trans (oldProjectionSound248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot248 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node312⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection312 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot248 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode113).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot248 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode113).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot248 (j : Fin 5)))
      1 96 96 1 ![96, 48, 48, 48, 96] ![1, 2, 2, 2, 1] reductionProjection248 ![reductionProjection116, oldProjection248, oldProjection248, oldProjection248, oldProjection312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection249 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (23, 240), (38, 240), (94, 10), (104, -160), (108, -80), (243, -80), (698, -160), (700, -160), (701, -80), (703, -80), (704, -160), (1251, 10)]

def reductionPivot249 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, 1, -1], ![0, 1, -1], ![1, 1, -2], ![2, -1, -1]]

theorem reductionSound249 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode114).moment H =
      Integer.Sparse.eval reductionProjection249 (momentVector H) := by
  have heq : reductionPivot249 = (fun u v => (normalNode114).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode114).moment H = injectiveMoment H reductionPivot249 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode114).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot249 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot249 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![24, 48, 48, 480, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot249 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection298, oldProjection246, oldProjection246, oldProjection742, oldProjection314] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot249 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node298⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection298 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot249 (1 : Fin 5)) = canonicalInput383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound383 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot249 (2 : Fin 5)) = canonicalInput387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound387 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot249 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw283 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection742 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical283 hH))).trans (oldProjectionSound742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot249 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node314⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection314 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot249 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode114).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot249 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode114).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot249 (j : Fin 5)))
      1 480 480 1 ![24, 48, 48, 480, 96] ![20, 10, 10, 1, 5] reductionProjection249 ![oldProjection298, oldProjection246, oldProjection246, oldProjection742, oldProjection314]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection250 : Integer.Sparse (Fin 1613) := [(46, 1)]

theorem reductionSound250 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code46).moment H =
      Integer.Sparse.eval reductionProjection250 (momentVector H) := by
  have hc : coordinates (46 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code46) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection250, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection251 : Integer.Sparse (Fin 1613) := [(46, -1), (246, -1), (703, -1)]

def reductionPivot251 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-3, -1, 4], ![1, -2, 1], ![1, 4, -5]]

theorem reductionSound251 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode143).moment H =
      Integer.Sparse.eval reductionProjection251 (momentVector H) := by
  have heq : reductionPivot251 = (fun u v => (normalNode143).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode143).moment H = injectiveMoment H reductionPivot251 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode143).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot251 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot251 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot251 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection34, reductionProjection250, oldProjection39] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot251 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node34⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot251 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection34 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot251 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection34 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound34 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot251 (1 : Fin 3)) = canonicalInput404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot251 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection250 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot251 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound404 hH))).trans (reductionSound250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot251 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw324 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot251 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection39 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot251 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection39 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical324 hH))).trans (oldProjectionSound39 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode143).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot251 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode143).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot251 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection251 ![oldProjection34, reductionProjection250, oldProjection39]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection252 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (42, 8), (46, 8), (94, 1), (243, 8), (246, 8), (701, 16), (703, 16), (704, 16)]

def reductionPivot252 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![1, -2, 1], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound252 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode134).moment H =
      Integer.Sparse.eval reductionProjection252 (momentVector H) := by
  have heq : reductionPivot252 = (fun u v => (normalNode134).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode134).moment H = injectiveMoment H reductionPivot252 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode134).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot252 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot252 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 24, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot252 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection87, oldProjection90, oldProjection80, reductionProjection251] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot252 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical574 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot252 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot252 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw321 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical321 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot252 (3 : Fin 4)) = (normalNode143).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection251 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot252 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode134).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot252 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode134).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot252 (j : Fin 4)))
      2 48 48 2 ![3, 24, 3, 3] ![16, 2, 16, 16] reductionProjection252 ![oldProjection87, oldProjection90, oldProjection80, reductionProjection251]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection253 : Integer.Sparse (Fin 1613) := [(3, 28), (4, -1), (19, 32), (20, -9), (42, -32), (46, -32), (94, -11), (243, -32), (245, -16), (246, -32), (700, -16), (701, -64), (703, -96), (704, -96), (1251, -7)]

def reductionPivot253 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound253 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode115).moment H =
      Integer.Sparse.eval reductionProjection253 (momentVector H) := by
  have heq : reductionPivot253 = (fun u v => (normalNode115).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode115).moment H = injectiveMoment H reductionPivot253 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode115).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot253 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot253 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 24, 48, 48, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot253 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection131, oldProjection90, reductionProjection252, reductionProjection252, oldProjection320] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot253 (0 : Fin 5)) = (normalNode63).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection131 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection131 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot253 (1 : Fin 5)) = canonicalInput384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound384 hH))).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot253 (2 : Fin 5)) = (normalNode134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection252 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot253 (3 : Fin 5)) = canonicalInput390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection252 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound390 hH))).trans (reductionSound252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot253 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node320⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection320 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot253 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode115).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot253 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode115).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot253 (j : Fin 5)))
      1 96 96 1 ![96, 24, 48, 48, 96] ![1, 4, 2, 2, 1] reductionProjection253 ![reductionProjection131, oldProjection90, reductionProjection252, reductionProjection252, oldProjection320]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection254 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (45, 120), (94, -20), (104, -40), (108, -120), (247, -60), (704, -40), (1219, 60), (1251, -20)]

def reductionPivot254 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, 1, -1], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2]]

theorem reductionSound254 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * (normalNode116).moment H =
      Integer.Sparse.eval reductionProjection254 (momentVector H) := by
  have heq : reductionPivot254 = (fun u v => (normalNode116).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode116).moment H = injectiveMoment H reductionPivot254 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode116).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot254 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot254 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 24, 48, 240, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot254 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection302, oldProjection244, oldProjection319, oldProjection737, oldProjection737] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot254 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node302⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection302 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot254 (1 : Fin 5)) = canonicalInput385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection244 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound385 hH))).trans (oldProjectionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot254 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node319⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection319 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot254 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw294 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection737 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical294 hH))).trans (oldProjectionSound737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot254 (4 : Fin 5)) = canonicalInput391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection737 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot254 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound391 hH))).trans (oldProjectionSound737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode116).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot254 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode116).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot254 (j : Fin 5)))
      1 120 240 2 ![48, 24, 48, 240, 240] ![5, 10, 5, 1, 1] reductionProjection254 ![oldProjection302, oldProjection244, oldProjection319, oldProjection737, oldProjection737]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection255 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 220), (20, -15), (23, 240), (37, 240), (38, 480), (45, 240), (94, -95), (104, -160), (105, -80), (108, -240), (241, -320), (243, -240), (247, -320), (697, 240), (698, -160), (704, -240), (1251, -75)]

def reductionPivot255 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, 2, -2], ![1, -1, 0], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound255 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode117).moment H =
      Integer.Sparse.eval reductionProjection255 (momentVector H) := by
  have heq : reductionPivot255 = (fun u v => (normalNode117).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode117).moment H = injectiveMoment H reductionPivot255 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode117).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot255 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot255 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 240, 2, 24, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot255 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection303, oldProjection737, oldProjection321, oldProjection322, oldProjection653] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot255 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node303⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection303 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot255 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw294 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection737 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical294 hH))).trans (oldProjectionSound737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot255 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node321⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection321 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot255 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node322⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection322 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot255 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw306 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection653 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot255 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical306 hH))).trans (oldProjectionSound653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode117).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot255 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode117).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot255 (j : Fin 5)))
      1 480 480 1 ![96, 240, 2, 24, 480] ![5, 2, 240, 20, 1] reductionProjection255 ![oldProjection303, oldProjection737, oldProjection321, oldProjection322, oldProjection653]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

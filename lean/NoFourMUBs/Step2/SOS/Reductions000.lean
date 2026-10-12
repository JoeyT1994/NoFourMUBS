import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical001
import NoFourMUBs.Step2.SOS.Canonical002
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.ReductionRules
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection0 : Integer.Sparse (Fin 1613) := [(1, 1)]

theorem reductionSound0 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1).moment H =
      Integer.Sparse.eval reductionProjection0 (momentVector H) := by
  have hc : coordinates (1 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection0, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1 : Integer.Sparse (Fin 1613) := [(2, 1)]

theorem reductionSound1 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code2).moment H =
      Integer.Sparse.eval reductionProjection1 (momentVector H) := by
  have hc : coordinates (2 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code2) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2 : Integer.Sparse (Fin 1613) := [(5, 1)]

theorem reductionSound2 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code5).moment H =
      Integer.Sparse.eval reductionProjection2 (momentVector H) := by
  have hc : coordinates (5 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code5) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection3 : Integer.Sparse (Fin 1613) := [(44, 1)]

theorem reductionSound3 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code44).moment H =
      Integer.Sparse.eval reductionProjection3 (momentVector H) := by
  have hc : coordinates (44 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code44) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection3, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4 : Integer.Sparse (Fin 1613) := [(44, -1), (244, -1), (701, -1)]

def reductionPivot4 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-3, -1, 4], ![0, 4, -4], ![2, -2, 0]]

theorem reductionSound4 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode141).moment H =
      Integer.Sparse.eval reductionProjection4 (momentVector H) := by
  have heq : reductionPivot4 = (fun u v => (normalNode141).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode141).moment H = injectiveMoment H reductionPivot4 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode141).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot4 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection33, oldProjection38, reductionProjection3] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node33⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw335 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection38 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical335 hH))).trans (oldProjectionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4 (2 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code44).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection3 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection3 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound3 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode141).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode141).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection4 ![oldProjection33, oldProjection38, reductionProjection3]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5 : Integer.Sparse (Fin 1613) := [(19, -3), (44, 8), (94, 1), (244, 12), (701, 12)]

def reductionPivot5 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, -1, 4], ![0, 4, -4], ![1, -1, 0], ![1, -1, 0]]

theorem reductionSound5 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode140).moment H =
      Integer.Sparse.eval reductionProjection5 (momentVector H) := by
  have heq : reductionPivot5 = (fun u v => (normalNode140).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode140).moment H = injectiveMoment H reductionPivot5 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode140).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 24, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection157, oldProjection90, reductionProjection4, reductionProjection4] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5 (1 : Fin 4)) = canonicalInput403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound403 hH))).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5 (2 : Fin 4)) = canonicalInput399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound399 hH))).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5 (3 : Fin 4)) = (normalNode141).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode140).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode140).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5 (j : Fin 4)))
      2 24 24 2 ![24, 24, 3, 3] ![1, 1, 8, 8] reductionProjection5 ![oldProjection157, oldProjection90, reductionProjection4, reductionProjection4]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6 : Integer.Sparse (Fin 1613) := [(19, -6), (20, 3), (44, -16), (94, 1), (244, -24)]

def reductionPivot6 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![4, -3, -1]]

theorem reductionSound6 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode0).moment H =
      Integer.Sparse.eval reductionProjection6 (momentVector H) := by
  have heq : reductionPivot6 = (fun u v => (normalNode0).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode0).moment H = injectiveMoment H reductionPivot6 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode0).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![24, 24, 24, 24, 24] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5, oldProjection90, oldProjection90, oldProjection90, reductionProjection5] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6 (0 : Fin 5)) = canonicalInput30.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30 hH))).trans (reductionSound5 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6 (1 : Fin 5)) = canonicalInput72.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound72 hH))).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6 (2 : Fin 5)) = canonicalInput74.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound74 hH))).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6 (3 : Fin 5)) = canonicalInput76.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound76 hH))).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6 (4 : Fin 5)) = canonicalInput77.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound77 hH))).trans (reductionSound5 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode0).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode0).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6 (j : Fin 5)))
      1 24 24 1 ![24, 24, 24, 24, 24] ![1, 1, 1, 1, 1] reductionProjection6 ![reductionProjection5, oldProjection90, oldProjection90, oldProjection90, reductionProjection5]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7 : Integer.Sparse (Fin 1613) := [(42, -1), (44, -1), (701, -1)]

def reductionPivot7 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-3, 0, 3], ![0, 4, -4], ![2, -3, 1]]

theorem reductionSound7 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode174).moment H =
      Integer.Sparse.eval reductionProjection7 (momentVector H) := by
  have heq : reductionPivot7 = (fun u v => (normalNode174).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode174).moment H = injectiveMoment H reductionPivot7 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode174).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot7 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot7 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot7 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection38, oldProjection18, reductionProjection3] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node38⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection38 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw583 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection18 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical583 hH))).trans (oldProjectionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7 (2 : Fin 3)) = canonicalInput603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection3 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection3 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound603 hH))).trans (reductionSound3 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode174).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot7 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode174).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot7 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection7 ![oldProjection38, oldProjection18, reductionProjection3]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (42, 32), (44, 16), (61, -48), (94, 1), (243, 16), (701, 32), (704, 32)]

def reductionPivot8 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, 0, 3], ![0, 4, -4], ![1, -2, 1], ![1, -1, 0]]

theorem reductionSound8 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode173).moment H =
      Integer.Sparse.eval reductionProjection8 (momentVector H) := by
  have heq : reductionPivot8 = (fun u v => (normalNode173).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode173).moment H = injectiveMoment H reductionPivot8 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode173).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 3, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection190, oldProjection87, reductionProjection7, oldProjection99] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection190 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8 (1 : Fin 4)) = canonicalInput605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound605 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8 (2 : Fin 4)) = canonicalInput602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound602 hH))).trans (reductionSound7 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection99 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection99 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound99 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode173).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode173).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8 (j : Fin 4)))
      2 96 96 2 ![48, 3, 3, 1] ![2, 32, 32, 96] reductionProjection8 ![oldProjection190, oldProjection87, reductionProjection7, oldProjection99]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9 : Integer.Sparse (Fin 1613) := [(6, 1)]

theorem reductionSound9 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code6).moment H =
      Integer.Sparse.eval reductionProjection9 (momentVector H) := by
  have hc : coordinates (6 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code6) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10 : Integer.Sparse (Fin 1613) := [(9, 1)]

theorem reductionSound10 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code9).moment H =
      Integer.Sparse.eval reductionProjection10 (momentVector H) := by
  have hc : coordinates (9 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code9) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection11 : Integer.Sparse (Fin 1613) := [(9, -1), (42, -1), (91, -1)]

def reductionPivot11 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-4, 1, 3], ![1, 2, -3], ![3, -4, 1]]

theorem reductionSound11 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7).moment H =
      Integer.Sparse.eval reductionProjection11 (momentVector H) := by
  have heq : reductionPivot11 = (fun u v => (normalNode7).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7).moment H = injectiveMoment H reductionPivot11 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot11 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot11 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection22, reductionProjection10, oldProjection18] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11 (0 : Fin 3)) = canonicalInput157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection22 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection22 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound157 hH))).trans (oldProjectionSound22 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11 (1 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code9).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection10 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection10 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound10 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11 (2 : Fin 3)) = canonicalInput101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection18 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound101 hH))).trans (oldProjectionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection11 ![oldProjection22, reductionProjection10, oldProjection18]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12 : Integer.Sparse (Fin 1613) := [(6, -3), (9, 1), (42, 2), (91, 2), (243, 2), (704, 1), (1225, 1)]

def reductionPivot12 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-4, 1, 3], ![0, 1, -1], ![1, 1, -2], ![3, -4, 1]]

theorem reductionSound12 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5).moment H =
      Integer.Sparse.eval reductionProjection12 (momentVector H) := by
  have heq : reductionPivot12 = (fun u v => (normalNode5).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5).moment H = injectiveMoment H reductionPivot12 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection137, reductionProjection9, reductionProjection11, oldProjection87] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12 (0 : Fin 4)) = canonicalInput138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound138 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code6).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12 (2 : Fin 4)) = (normalNode7).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound11 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12 (3 : Fin 4)) = canonicalInput82.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound82 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection12 ![oldProjection137, reductionProjection9, reductionProjection11, oldProjection87]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection13 : Integer.Sparse (Fin 1613) := [(6, 48), (9, -16), (19, 12), (20, -3), (42, -32), (44, -16), (61, 48), (91, -32), (94, -2), (243, -16), (700, -16), (701, -48), (704, -16), (1225, -16), (1251, -3)]

def reductionPivot13 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![1, 1, -2], ![3, -3, 0]]

theorem reductionSound13 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode1).moment H =
      Integer.Sparse.eval reductionProjection13 (momentVector H) := by
  have heq : reductionPivot13 = (fun u v => (normalNode1).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1).moment H = injectiveMoment H reductionPivot13 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot13 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot13 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 3, 3, 96, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot13 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8, oldProjection87, oldProjection87, oldProjection324, reductionProjection12] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot13 (0 : Fin 5)) = canonicalInput31.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31 hH))).trans (reductionSound8 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot13 (1 : Fin 5)) = canonicalInput73.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound73 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot13 (2 : Fin 5)) = canonicalInput75.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound75 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot13 (3 : Fin 5)) = canonicalInput80.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound80 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot13 (4 : Fin 5)) = (normalNode5).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot13 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound12 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot13 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot13 (j : Fin 5)))
      1 96 96 1 ![96, 3, 3, 96, 6] ![1, 32, 32, 1, 16] reductionProjection13 ![reductionProjection8, oldProjection87, oldProjection87, oldProjection324, reductionProjection12]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection14 : Integer.Sparse (Fin 1613) := [(8, 1)]

theorem reductionSound14 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code8).moment H =
      Integer.Sparse.eval reductionProjection14 (momentVector H) := by
  have hc : coordinates (8 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code8) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection14, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection15 : Integer.Sparse (Fin 1613) := [(7, 1)]

theorem reductionSound15 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code7).moment H =
      Integer.Sparse.eval reductionProjection15 (momentVector H) := by
  have hc : coordinates (7 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code7) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection15, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection16 : Integer.Sparse (Fin 1613) := [(7, -1), (8, -1), (58, -1), (686, -1)]

def reductionPivot16 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-4, 1, 3], ![0, 3, -3], ![1, -2, 1], ![2, -1, -1]]

theorem reductionSound16 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode8).moment H =
      Integer.Sparse.eval reductionProjection16 (momentVector H) := by
  have heq : reductionPivot16 = (fun u v => (normalNode8).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8).moment H = injectiveMoment H reductionPivot16 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot16 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot16 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot16 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection98, oldProjection161, reductionProjection14, reductionProjection15] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot16 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection98 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection98 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound98 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot16 (1 : Fin 4)) = canonicalInput100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound100 hH))).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot16 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code8).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection14 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection14 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound14 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot16 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code7).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection15 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot16 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection15 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound15 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot16 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot16 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection16 ![oldProjection98, oldProjection161, reductionProjection14, reductionProjection15]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection17 : Integer.Sparse (Fin 1613) := [(36, 1)]

theorem reductionSound17 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code36).moment H =
      Integer.Sparse.eval reductionProjection17 (momentVector H) := by
  have hc : coordinates (36 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code36) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection17, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection18 : Integer.Sparse (Fin 1613) := [(42, -1), (44, -1), (60, -1)]

def reductionPivot18 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 3, -3], ![3, -3, 0]]

theorem reductionSound18 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode133).moment H =
      Integer.Sparse.eval reductionProjection18 (momentVector H) := by
  have heq : reductionPivot18 = (fun u v => (normalNode133).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode133).moment H = injectiveMoment H reductionPivot18 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode133).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot18 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot18 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot18 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection19, reductionProjection3, oldProjection18] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot18 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot18 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection19 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot18 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection19 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound19 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot18 (1 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code44).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot18 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection3 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot18 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection3 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound3 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot18 (2 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node18⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot18 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection18 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot18 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode133).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot18 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode133).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot18 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection18 ![oldProjection19, reductionProjection3, oldProjection18]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection19 : Integer.Sparse (Fin 1613) := [(36, -3), (42, 2), (44, 1), (60, 2), (243, 1), (700, 3)]

def reductionPivot19 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 1, -1], ![0, 2, -2], ![3, -3, 0]]

theorem reductionSound19 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode126).moment H =
      Integer.Sparse.eval reductionProjection19 (momentVector H) := by
  have heq : reductionPivot19 = (fun u v => (normalNode126).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode126).moment H = injectiveMoment H reductionPivot19 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode126).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot19 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot19 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot19 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection93, reductionProjection17, reductionProjection18, oldProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot19 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node93⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot19 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code36).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection17 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection17 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound17 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot19 (2 : Fin 4)) = (normalNode133).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection18 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot19 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot19 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode126).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot19 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode126).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot19 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection19 ![oldProjection93, reductionProjection17, reductionProjection18, oldProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection20 : Integer.Sparse (Fin 1613) := [(7, 96), (8, 96), (19, 8), (20, -1), (36, 48), (38, 48), (42, -64), (44, -32), (58, 96), (60, -32), (61, 48), (94, -6), (243, -32), (686, 96), (698, -16), (700, -80), (701, -48), (704, -64), (1251, -5)]

def reductionPivot20 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-4, 1, 3], ![0, 3, -3], ![1, -1, 0], ![1, -1, 0], ![2, -1, -1]]

theorem reductionSound20 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode2).moment H =
      Integer.Sparse.eval reductionProjection20 (momentVector H) := by
  have heq : reductionPivot20 = (fun u v => (normalNode2).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2).moment H = injectiveMoment H reductionPivot20 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot20 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot20 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 2, 2, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot20 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8, oldProjection314, reductionProjection16, reductionProjection16, reductionProjection19] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot20 (0 : Fin 5)) = canonicalInput32.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound32 hH))).trans (reductionSound8 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot20 (1 : Fin 5)) = canonicalInput86.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection314 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound86 hH))).trans (oldProjectionSound314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot20 (2 : Fin 5)) = (normalNode8).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection16 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection16 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound16 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot20 (3 : Fin 5)) = canonicalInput88.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection16 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection16 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound88 hH))).trans (reductionSound16 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot20 (4 : Fin 5)) = canonicalInput89.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection19 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot20 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection19 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound89 hH))).trans (reductionSound19 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot20 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot20 (j : Fin 5)))
      1 96 96 1 ![96, 96, 2, 2, 6] ![1, 1, 48, 48, 16] reductionProjection20 ![reductionProjection8, oldProjection314, reductionProjection16, reductionProjection16, reductionProjection19]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection21 : Integer.Sparse (Fin 1613) := [(6, 144), (9, -48), (19, 12), (20, -1), (42, -128), (44, -32), (91, -96), (94, 3), (243, -144), (244, -48), (700, -48), (701, -48), (704, -48), (1225, -48), (1251, -4)]

def reductionPivot21 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-4, 1, 3], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound21 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode3).moment H =
      Integer.Sparse.eval reductionProjection21 (momentVector H) := by
  have heq : reductionPivot21 = (fun u v => (normalNode3).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3).moment H = injectiveMoment H reductionPivot21 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot21 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot21 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![24, 6, 6, 6, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot21 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5, reductionProjection12, reductionProjection12, reductionProjection12, oldProjection312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot21 (0 : Fin 5)) = canonicalInput33.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound33 hH))).trans (reductionSound5 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot21 (1 : Fin 5)) = canonicalInput90.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound90 hH))).trans (reductionSound12 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot21 (2 : Fin 5)) = canonicalInput95.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound95 hH))).trans (reductionSound12 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot21 (3 : Fin 5)) = canonicalInput96.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound96 hH))).trans (reductionSound12 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot21 (4 : Fin 5)) = canonicalInput97.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection312 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot21 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound97 hH))).trans (oldProjectionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot21 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot21 (j : Fin 5)))
      1 96 96 1 ![24, 6, 6, 6, 96] ![4, 16, 16, 16, 1] reductionProjection21 ![reductionProjection5, reductionProjection12, reductionProjection12, reductionProjection12, oldProjection312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection22 : Integer.Sparse (Fin 1613) := [(7, -3), (229, -3), (700, 1), (701, 1), (704, 1), (1040, -3)]

def reductionPivot22 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-4, 1, 3], ![0, 2, -2], ![1, -2, 1], ![3, -2, -1]]

theorem reductionSound22 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode6).moment H =
      Integer.Sparse.eval reductionProjection22 (momentVector H) := by
  have heq : reductionPivot22 = (fun u v => (normalNode6).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6).moment H = injectiveMoment H reductionPivot22 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot22 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot22 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot22 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection135, reductionProjection15, oldProjection83, oldProjection191] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot22 (0 : Fin 4)) = canonicalInput141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection135 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound141 hH))).trans (oldProjectionSound135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot22 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code7).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection15 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection15 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound15 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot22 (2 : Fin 4)) = canonicalInput87.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound87 hH))).trans (oldProjectionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot22 (3 : Fin 4)) = canonicalInput85.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot22 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound85 hH))).trans (oldProjectionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot22 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot22 (j : Fin 4)))
      2 6 6 2 ![1, 1, 3, 1] ![6, 6, 2, 6] reductionProjection22 ![oldProjection135, reductionProjection15, oldProjection83, oldProjection191]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection23 : Integer.Sparse (Fin 1613) := [(7, 96), (19, 40), (20, -10), (94, -13), (229, 144), (243, -48), (700, -48), (701, -48), (704, -112), (1040, 144), (1225, -16), (1251, -15)]

def reductionPivot23 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-4, 1, 3], ![0, 1, -1], ![0, 1, -1], ![1, -2, 1], ![3, -2, -1]]

theorem reductionSound23 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4).moment H =
      Integer.Sparse.eval reductionProjection23 (momentVector H) := by
  have heq : reductionPivot23 = (fun u v => (normalNode4).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4).moment H = injectiveMoment H reductionPivot23 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot23 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot23 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 6, 6, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot23 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection425, reductionProjection22, reductionProjection22, oldProjection320, oldProjection694] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot23 (0 : Fin 5)) = canonicalInput133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection425 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound133 hH))).trans (oldProjectionSound425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot23 (1 : Fin 5)) = canonicalInput84.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection22 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection22 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound84 hH))).trans (reductionSound22 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot23 (2 : Fin 5)) = (normalNode6).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection22 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection22 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound22 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot23 (3 : Fin 5)) = canonicalInput79.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection320 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound79 hH))).trans (oldProjectionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot23 (4 : Fin 5)) = canonicalInput78.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection694 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot23 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound78 hH))).trans (oldProjectionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot23 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot23 (j : Fin 5)))
      1 96 96 1 ![96, 6, 6, 96, 96] ![1, 16, 16, 1, 1] reductionProjection23 ![oldProjection425, reductionProjection22, reductionProjection22, oldProjection320, oldProjection694]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection24 : Integer.Sparse (Fin 1613) := [(10, 1)]

theorem reductionSound24 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code10).moment H =
      Integer.Sparse.eval reductionProjection24 (momentVector H) := by
  have hc : coordinates (10 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code10) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection24, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection25 : Integer.Sparse (Fin 1613) := [(10, -12), (20, 1), (94, 1), (244, 8), (701, 8)]

def reductionPivot25 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-4, 2, 2], ![0, -2, 2], ![0, 1, -1], ![4, -2, -2]]

theorem reductionSound25 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode9).moment H =
      Integer.Sparse.eval reductionProjection25 (momentVector H) := by
  have heq : reductionPivot25 = (fun u v => (normalNode9).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9).moment H = injectiveMoment H reductionPivot25 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot25 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot25 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 24, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot25 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection133, oldProjection131, reductionProjection24, oldProjection133] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot25 (0 : Fin 4)) = canonicalInput168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection133 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound168 hH))).trans (oldProjectionSound133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot25 (1 : Fin 4)) = canonicalInput124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection131 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection131 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound124 hH))).trans (oldProjectionSound131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot25 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code10).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection24 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection24 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound24 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot25 (3 : Fin 4)) = canonicalInput111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection133 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot25 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound111 hH))).trans (oldProjectionSound133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot25 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot25 (j : Fin 4)))
      2 24 48 4 ![48, 24, 1, 48] ![1, 2, 48, 1] reductionProjection25 ![oldProjection133, oldProjection131, reductionProjection24, oldProjection133]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection26 : Integer.Sparse (Fin 1613) := [(11, 1)]

theorem reductionSound26 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code11).moment H =
      Integer.Sparse.eval reductionProjection26 (momentVector H) := by
  have hc : coordinates (11 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code11) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection26, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection27 : Integer.Sparse (Fin 1613) := [(11, -48), (19, -4), (94, 1), (229, -48), (243, 16), (704, 16), (1040, -48), (1251, 1)]

def reductionPivot27 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-4, 2, 2], ![0, -2, 2], ![1, 1, -2], ![3, -2, -1]]

theorem reductionSound27 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode10).moment H =
      Integer.Sparse.eval reductionProjection27 (momentVector H) := by
  have heq : reductionPivot27 = (fun u v => (normalNode10).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10).moment H = injectiveMoment H reductionPivot27 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot27 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot27 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 48, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot27 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection191, oldProjection132, reductionProjection26, oldProjection135] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot27 (0 : Fin 4)) = canonicalInput169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound169 hH))).trans (oldProjectionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot27 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw165 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection132 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical165 hH))).trans (oldProjectionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot27 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code11).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection26 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection26 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound26 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot27 (3 : Fin 4)) = canonicalInput113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection135 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot27 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound113 hH))).trans (oldProjectionSound135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot27 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot27 (j : Fin 4)))
      2 96 96 2 ![1, 48, 1, 1] ![96, 2, 96, 96] reductionProjection27 ![oldProjection191, oldProjection132, reductionProjection26, oldProjection135]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection28 : Integer.Sparse (Fin 1613) := [(12, 1)]

theorem reductionSound28 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code12).moment H =
      Integer.Sparse.eval reductionProjection28 (momentVector H) := by
  have hc : coordinates (12 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code12) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection28, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection29 : Integer.Sparse (Fin 1613) := [(12, -3), (77, -3), (88, 1), (231, -3), (241, 1), (243, 1)]

def reductionPivot29 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-4, 2, 2], ![0, -2, 2], ![2, -2, 0], ![2, 1, -3]]

theorem reductionSound29 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode11).moment H =
      Integer.Sparse.eval reductionProjection29 (momentVector H) := by
  have heq : reductionPivot29 = (fun u v => (normalNode11).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11).moment H = injectiveMoment H reductionPivot29 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot29 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot29 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot29 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection104, oldProjection102, oldProjection136, reductionProjection28] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot29 (0 : Fin 4)) = canonicalInput170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound170 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot29 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw166 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection102 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical166 hH))).trans (oldProjectionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot29 (2 : Fin 4)) = canonicalInput114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound114 hH))).trans (oldProjectionSound136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot29 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code12).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection28 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot29 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection28 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound28 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot29 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot29 (j : Fin 4)))
      2 6 6 2 ![1, 3, 1, 1] ![6, 2, 6, 6] reductionProjection29 ![oldProjection104, oldProjection102, oldProjection136, reductionProjection28]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection30 : Integer.Sparse (Fin 1613) := [(16, 1)]

theorem reductionSound30 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code16).moment H =
      Integer.Sparse.eval reductionProjection30 (momentVector H) := by
  have hc : coordinates (16 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code16) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection30, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection31 : Integer.Sparse (Fin 1613) := [(16, -1), (88, -1), (91, -1)]

def reductionPivot31 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, -1, 1], ![-4, 2, 2], ![2, -3, 1], ![2, 2, -4]]

theorem reductionSound31 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode28).moment H =
      Integer.Sparse.eval reductionProjection31 (momentVector H) := by
  have heq : reductionPivot31 = (fun u v => (normalNode28).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode28).moment H = injectiveMoment H reductionPivot31 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode28).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot31 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot31 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot31 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection22, reductionProjection30, oldProjection20] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot31 (0 : Fin 3)) = canonicalInput102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot31 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection22 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot31 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection22 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound102 hH))).trans (oldProjectionSound22 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot31 (1 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code16).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot31 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot31 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot31 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw177 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot31 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection20 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot31 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection20 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical177 hH))).trans (oldProjectionSound20 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode28).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot31 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode28).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot31 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection31 ![oldProjection22, reductionProjection30, oldProjection20]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

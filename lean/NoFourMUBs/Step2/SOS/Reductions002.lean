import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical001
import NoFourMUBs.Step2.SOS.Canonical002
import NoFourMUBs.Step2.SOS.Canonical003
import NoFourMUBs.Step2.SOS.Canonical004
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical113
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical120
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical131
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection64 : Integer.Sparse (Fin 1613) := [(14, 1)]

theorem reductionSound64 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code14).moment H =
      Integer.Sparse.eval reductionProjection64 (momentVector H) := by
  have hc : coordinates (14 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code14) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection64, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection65 : Integer.Sparse (Fin 1613) := [(14, -6), (15, 3), (82, 6), (87, 3), (88, -2), (89, 3), (228, 6), (241, -2), (243, -4), (698, -4), (1219, 3), (1223, 6), (1226, -4), (1227, -2)]

def reductionPivot65 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-4, 2, 2], ![1, -2, 1], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2]]

theorem reductionSound65 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode23).moment H =
      Integer.Sparse.eval reductionProjection65 (momentVector H) := by
  have heq : reductionPivot65 = (fun u v => (normalNode23).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode23).moment H = injectiveMoment H reductionPivot65 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode23).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot65 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot65 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 6, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot65 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection63, reductionProjection60, reductionProjection64, oldProjection422, oldProjection422] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot65 (0 : Fin 5)) = canonicalInput92.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection63 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection63 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound92 hH))).trans (reductionSound63 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot65 (1 : Fin 5)) = (normalNode30).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection60 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection60 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound60 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot65 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code14).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection64 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection64 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound64 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot65 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw168 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection422 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical168 hH))).trans (oldProjectionSound422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot65 (4 : Fin 5)) = canonicalInput149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection422 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot65 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound149 hH))).trans (oldProjectionSound422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode23).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot65 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode23).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot65 (j : Fin 5)))
      1 6 6 1 ![2, 2, 1, 6, 6] ![3, 3, 6, 1, 1] reductionProjection65 ![reductionProjection63, reductionProjection60, reductionProjection64, oldProjection422, oldProjection422]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection66 : Integer.Sparse (Fin 1613) := [(17, 1)]

theorem reductionSound66 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code17).moment H =
      Integer.Sparse.eval reductionProjection66 (momentVector H) := by
  have hc : coordinates (17 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code17) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection66, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection67 : Integer.Sparse (Fin 1613) := [(18, 1)]

theorem reductionSound67 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code18).moment H =
      Integer.Sparse.eval reductionProjection67 (momentVector H) := by
  have hc : coordinates (18 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code18) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection67, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection68 : Integer.Sparse (Fin 1613) := [(96, 1)]

theorem reductionSound68 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code96).moment H =
      Integer.Sparse.eval reductionProjection68 (momentVector H) := by
  have hc : coordinates (96 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code96) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection68, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection69 : Integer.Sparse (Fin 1613) := [(2, -1), (3, -1)]

def reductionPivot69 : Matrix (Fin 3) (Fin 3) ℤ := ![![-1, 0, 1], ![-5, 3, 2], ![6, -3, -3]]

theorem reductionSound69 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * (normalNode5973).moment H =
      Integer.Sparse.eval reductionProjection69 (momentVector H) := by
  have heq : reductionPivot69 = (fun u v => (normalNode5973).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation3 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5973).moment H = injectiveMoment H reductionPivot69 := by
    have hh := congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode5973).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation3)).trans (injectiveMoment_transpose H (normalNode5973).entries)).symm
  have hshape : reductionPivot69 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 2 < 6)
    hH reductionPivot69 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 2,
      ((![1, 1] : Fin 2 → ℤ) j : ℝ) * (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot69 (j : Fin 2))) j =
        Integer.Sparse.eval (![reductionProjection1, oldProjection7] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot69 (0 : Fin 2)) = canonicalInput1.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot69 (0 : Fin 2)) =
        Integer.Sparse.eval reductionProjection1 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot69 (0 : Fin 2)) =
          Integer.Sparse.eval reductionProjection1 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 2) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound1 hH))).trans (reductionSound1 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot69 (1 : Fin 2)) = OAI.MUB6.Certificate.PairSemantics.raw35 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot69 (1 : Fin 2)) =
        Integer.Sparse.eval oldProjection7 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot69 (1 : Fin 2)) =
          Integer.Sparse.eval oldProjection7 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 2) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical35 hH))).trans (oldProjectionSound7 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (4 : ℝ) * (normalNode5973).moment H + ∑ j : Fin 2, (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot69 (j : Fin 2))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5973).moment H) (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot69 (j : Fin 2)))
      4 4 4 4 ![1, 1] ![4, 4] reductionProjection69 ![reductionProjection1, oldProjection7]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection70 : Integer.Sparse (Fin 1613) := [(2, 4), (3, 8), (20, -1), (94, -1), (96, -16)]

def reductionPivot70 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -3, 6], ![0, 1, -1], ![3, 1, -4]]

theorem reductionSound70 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode31).moment H =
      Integer.Sparse.eval reductionProjection70 (momentVector H) := by
  have heq : reductionPivot70 = (fun u v => (normalNode31).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode31).moment H = injectiveMoment H reductionPivot70 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode31).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot70 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot70 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 1, 4] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot70 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection49, reductionProjection68, reductionProjection69] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot70 (0 : Fin 3)) = canonicalInput216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot70 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot70 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound216 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot70 (1 : Fin 3)) = canonicalInput175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot70 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection68 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot70 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection68 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound175 hH))).trans (reductionSound68 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot70 (2 : Fin 3)) = canonicalInput174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot70 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection69 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot70 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection69 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound174 hH))).trans (reductionSound69 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode31).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot70 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode31).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot70 (j : Fin 3)))
      3 48 48 3 ![16, 1, 4] ![3, 48, 12] reductionProjection70 ![oldProjection49, reductionProjection68, reductionProjection69]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection71 : Integer.Sparse (Fin 1613) := [(99, 1)]

theorem reductionSound71 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code99).moment H =
      Integer.Sparse.eval reductionProjection71 (momentVector H) := by
  have hc : coordinates (99 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code99) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection71, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection72 : Integer.Sparse (Fin 1613) := [(2, 1), (3, 2), (19, 1), (99, -4)]

def reductionPivot72 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -3, 6], ![1, 0, -1], ![2, 2, -4]]

theorem reductionSound72 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode32).moment H =
      Integer.Sparse.eval reductionProjection72 (momentVector H) := by
  have heq : reductionPivot72 = (fun u v => (normalNode32).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode32).moment H = injectiveMoment H reductionPivot72 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode32).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot72 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot72 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![4, 1, 4] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot72 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection48, reductionProjection71, reductionProjection69] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot72 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw253 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot72 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection48 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot72 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection48 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical253 hH))).trans (oldProjectionSound48 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot72 (1 : Fin 3)) = canonicalInput179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot72 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection71 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot72 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection71 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound179 hH))).trans (reductionSound71 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot72 (2 : Fin 3)) = canonicalInput178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot72 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection69 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot72 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection69 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound178 hH))).trans (reductionSound69 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode32).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot72 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode32).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot72 (j : Fin 3)))
      3 12 12 3 ![4, 1, 4] ![3, 12, 3] reductionProjection72 ![oldProjection48, reductionProjection71, reductionProjection69]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection73 : Integer.Sparse (Fin 1613) := [(21, 1)]

theorem reductionSound73 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code21).moment H =
      Integer.Sparse.eval reductionProjection73 (momentVector H) := by
  have hc : coordinates (21 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code21) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection73, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection74 : Integer.Sparse (Fin 1613) := [(21, -1), (99, -1), (108, -1)]

def reductionPivot74 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -3, 6], ![1, 1, -2], ![2, 1, -3]]

theorem reductionSound74 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode33).moment H =
      Integer.Sparse.eval reductionProjection74 (momentVector H) := by
  have heq : reductionPivot74 = (fun u v => (normalNode33).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode33).moment H = injectiveMoment H reductionPivot74 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode33).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot74 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot74 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot74 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection30, reductionProjection73, reductionProjection71] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot74 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw255 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot74 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot74 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical255 hH))).trans (oldProjectionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot74 (1 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code21).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot74 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection73 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot74 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection73 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound73 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot74 (2 : Fin 3)) = canonicalInput179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot74 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection71 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot74 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection71 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound179 hH))).trans (reductionSound71 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode33).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot74 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode33).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot74 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection74 ![oldProjection30, reductionProjection73, reductionProjection71]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection75 : Integer.Sparse (Fin 1613) := [(51, 1)]

theorem reductionSound75 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code51).moment H =
      Integer.Sparse.eval reductionProjection75 (momentVector H) := by
  have hc : coordinates (51 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code51) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection75, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection76 : Integer.Sparse (Fin 1613) := [(689, 1)]

theorem reductionSound76 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code689).moment H =
      Integer.Sparse.eval reductionProjection76 (momentVector H) := by
  have hc : coordinates (689 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code689) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection76, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection77 : Integer.Sparse (Fin 1613) := [(51, -1), (689, -1), (1047, -1)]

def reductionPivot77 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![0, -3, 2, 1], ![3, 3, -3, -3]]

theorem reductionSound77 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6722).moment H =
      Integer.Sparse.eval reductionProjection77 (momentVector H) := by
  have heq : reductionPivot77 = (fun u v => (normalNode6722).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6722).moment H = injectiveMoment H reductionPivot77 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6722).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6722).entries)).symm
  have hshape : reductionPivot77 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot77 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot77 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection75, reductionProjection76, oldProjection196] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot77 (0 : Fin 3)) = canonicalInput490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot77 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection75 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot77 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection75 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound490 hH))).trans (reductionSound75 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot77 (1 : Fin 3)) = canonicalInput8131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot77 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection76 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot77 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8131 hH))).trans (reductionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot77 (2 : Fin 3)) = canonicalInput8184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot77 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot77 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8184 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6722).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot77 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6722).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot77 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection77 ![reductionProjection75, reductionProjection76, oldProjection196]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection78 : Integer.Sparse (Fin 1613) := [(55, -48), (94, -3), (243, 16), (1047, -48), (1226, 16), (1251, 1)]

def reductionPivot78 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![1, -3, 2, 0], ![2, 3, -3, -2]]

theorem reductionSound78 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6959).moment H =
      Integer.Sparse.eval reductionProjection78 (momentVector H) := by
  have heq : reductionPivot78 = (fun u v => (normalNode6959).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6959).moment H = injectiveMoment H reductionPivot78 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6959).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6959).entries)).symm
  have hshape : reductionPivot78 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot78 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot78 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection96, oldProjection196, oldProjection222] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot78 (0 : Fin 3)) = canonicalInput525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot78 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection96 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot78 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection96 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound525 hH))).trans (oldProjectionSound96 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot78 (1 : Fin 3)) = canonicalInput8184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot78 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot78 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8184 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot78 (2 : Fin 3)) = canonicalInput8958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot78 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection222 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot78 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8958 hH))).trans (oldProjectionSound222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6959).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot78 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6959).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot78 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection78 ![oldProjection96, oldProjection196, oldProjection222]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection79 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (51, 48), (55, 48), (93, -12), (94, 6), (243, -16), (689, 48), (1226, -16), (1251, -1)]

def reductionPivot79 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, 0, -1, -2]]

theorem reductionSound79 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode34).moment H =
      Integer.Sparse.eval reductionProjection79 (momentVector H) := by
  have heq : reductionPivot79 = (fun u v => (normalNode34).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode34).moment H = injectiveMoment H reductionPivot79 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode34).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot79 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot79 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot79 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection77, oldProjection196, oldProjection1024, reductionProjection78] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot79 (0 : Fin 4)) = canonicalInput171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection77 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection77 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound171 hH))).trans (reductionSound77 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot79 (1 : Fin 4)) = canonicalInput181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound181 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot79 (2 : Fin 4)) = canonicalInput183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound183 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot79 (3 : Fin 4)) = canonicalInput185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection78 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot79 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound185 hH))).trans (reductionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode34).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot79 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode34).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot79 (j : Fin 4)))
      2 288 288 2 ![3, 1, 144, 144] ![96, 288, 2, 2] reductionProjection79 ![reductionProjection77, oldProjection196, oldProjection1024, reductionProjection78]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection80 : Integer.Sparse (Fin 1613) := [(475, 1)]

theorem reductionSound80 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code475).moment H =
      Integer.Sparse.eval reductionProjection80 (momentVector H) := by
  have hc : coordinates (475 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code475) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection80, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection81 : Integer.Sparse (Fin 1613) := [(55, -1), (696, -1), (1058, -1)]

def reductionPivot81 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![0, 2, -3, 1], ![3, -2, 2, -3]]

theorem reductionSound81 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6781).moment H =
      Integer.Sparse.eval reductionProjection81 (momentVector H) := by
  have heq : reductionPivot81 = (fun u v => (normalNode6781).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6781).moment H = injectiveMoment H reductionPivot81 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6781).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6781).entries)).symm
  have hshape : reductionPivot81 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot81 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot81 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection96, oldProjection183, oldProjection212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot81 (0 : Fin 3)) = canonicalInput517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot81 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection96 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot81 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection96 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound517 hH))).trans (oldProjectionSound96 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot81 (1 : Fin 3)) = canonicalInput8133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot81 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection183 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot81 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8133 hH))).trans (oldProjectionSound183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot81 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3845 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot81 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot81 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3845 hH))).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6781).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot81 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6781).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot81 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection81 ![oldProjection96, oldProjection183, oldProjection212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection82 : Integer.Sparse (Fin 1613) := [(51, 1), (55, 1), (475, -3), (689, 1), (694, 1), (696, 1), (1047, 2), (1055, 1), (1058, 1)]

def reductionPivot82 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, -2, 2, 3], ![0, 3, -2, -1], ![1, 0, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound82 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode35).moment H =
      Integer.Sparse.eval reductionProjection82 (momentVector H) := by
  have heq : reductionPivot82 = (fun u v => (normalNode35).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode35).moment H = injectiveMoment H reductionPivot82 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode35).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot82 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot82 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot82 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection77, oldProjection790, reductionProjection80, reductionProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot82 (0 : Fin 4)) = canonicalInput172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection77 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection77 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound172 hH))).trans (reductionSound77 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot82 (1 : Fin 4)) = canonicalInput199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound199 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot82 (2 : Fin 4)) = canonicalInput202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection80 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound202 hH))).trans (reductionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot82 (3 : Fin 4)) = canonicalInput203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot82 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound203 hH))).trans (reductionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode35).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot82 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode35).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot82 (j : Fin 4)))
      2 6 6 2 ![3, 3, 1, 3] ![2, 2, 6, 2] reductionProjection82 ![reductionProjection77, oldProjection790, reductionProjection80, reductionProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection83 : Integer.Sparse (Fin 1613) := [(62, -1), (1047, -1), (1219, -1)]

def reductionPivot83 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![1, -3, 1, 1], ![2, 3, -2, -3]]

theorem reductionSound83 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6958).moment H =
      Integer.Sparse.eval reductionProjection83 (momentVector H) := by
  have heq : reductionPivot83 = (fun u v => (normalNode6958).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6958).moment H = injectiveMoment H reductionPivot83 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6958).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6958).entries)).symm
  have hshape : reductionPivot83 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot83 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot83 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection100, oldProjection196, oldProjection223] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot83 (0 : Fin 3)) = canonicalInput524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot83 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot83 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound524 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot83 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3655 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot83 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot83 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3655 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot83 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3855 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot83 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot83 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3855 hH))).trans (oldProjectionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6958).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot83 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6958).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot83 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection83 ![oldProjection100, oldProjection196, oldProjection223]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection84 : Integer.Sparse (Fin 1613) := [(62, -3), (243, 1), (691, -3), (698, 1), (700, 1)]

def reductionPivot84 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![1, -3, 1, 1], ![2, 3, -3, -2]]

theorem reductionSound84 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6961).moment H =
      Integer.Sparse.eval reductionProjection84 (momentVector H) := by
  have heq : reductionPivot84 = (fun u v => (normalNode6961).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6961).moment H = injectiveMoment H reductionPivot84 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6961).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6961).entries)).symm
  have hshape : reductionPivot84 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot84 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot84 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection100, oldProjection163, oldProjection170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot84 (0 : Fin 3)) = canonicalInput566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot84 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot84 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound566 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot84 (1 : Fin 3)) = canonicalInput9358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot84 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot84 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9358 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot84 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4205 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot84 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection170 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot84 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4205 hH))).trans (oldProjectionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6961).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot84 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6961).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot84 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection84 ![oldProjection100, oldProjection163, oldProjection170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection85 : Integer.Sparse (Fin 1613) := [(55, 48), (62, 144), (94, 3), (243, -32), (691, 48), (698, -16), (700, -16), (1047, 144), (1219, 96), (1226, -16), (1251, -1)]

def reductionPivot85 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![3, -1, -1, -1]]

theorem reductionSound85 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode36).moment H =
      Integer.Sparse.eval reductionProjection85 (momentVector H) := by
  have heq : reductionPivot85 = (fun u v => (normalNode36).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode36).moment H = injectiveMoment H reductionPivot85 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode36).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot85 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot85 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot85 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection83, reductionProjection83, reductionProjection84, reductionProjection78] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot85 (0 : Fin 4)) = canonicalInput207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound207 hH))).trans (reductionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot85 (1 : Fin 4)) = canonicalInput191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound191 hH))).trans (reductionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot85 (2 : Fin 4)) = canonicalInput186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection84 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound186 hH))).trans (reductionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot85 (3 : Fin 4)) = canonicalInput185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection78 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot85 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound185 hH))).trans (reductionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode36).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot85 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode36).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot85 (j : Fin 4)))
      2 288 288 2 ![3, 3, 9, 144] ![96, 96, 32, 2] reductionProjection85 ![reductionProjection83, reductionProjection83, reductionProjection84, reductionProjection78]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection86 : Integer.Sparse (Fin 1613) := [(69, 1)]

theorem reductionSound86 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code69).moment H =
      Integer.Sparse.eval reductionProjection86 (momentVector H) := by
  have hc : coordinates (69 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code69) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection86, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection87 : Integer.Sparse (Fin 1613) := [(69, -1), (1044, -1), (1217, -1)]

def reductionPivot87 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 0, 2], ![1, -3, 3, -1], ![2, 3, -3, -2]]

theorem reductionSound87 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6956).moment H =
      Integer.Sparse.eval reductionProjection87 (momentVector H) := by
  have heq : reductionPivot87 = (fun u v => (normalNode6956).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6956).moment H = injectiveMoment H reductionPivot87 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6956).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6956).entries)).symm
  have hshape : reductionPivot87 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot87 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot87 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection86, oldProjection192, oldProjection220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot87 (0 : Fin 3)) = canonicalInput429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot87 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot87 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound429 hH))).trans (reductionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot87 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3292 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot87 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot87 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3292 hH))).trans (oldProjectionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot87 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3629 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot87 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection220 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot87 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3629 hH))).trans (oldProjectionSound220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6956).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot87 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6956).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot87 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection87 ![reductionProjection86, oldProjection192, oldProjection220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection88 : Integer.Sparse (Fin 1613) := [(20, -1), (69, 24), (93, -3), (94, -7), (1044, 36), (1217, 36), (1251, -1)]

def reductionPivot88 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -2, 2, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![3, -1, 1, -3]]

theorem reductionSound88 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode37).moment H =
      Integer.Sparse.eval reductionProjection88 (momentVector H) := by
  have heq : reductionPivot88 = (fun u v => (normalNode37).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode37).moment H = injectiveMoment H reductionPivot88 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode37).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot88 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot88 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 3, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot88 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1101, reductionProjection87, reductionProjection87, oldProjection1021] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot88 (0 : Fin 4)) = canonicalInput275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1101 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound275 hH))).trans (oldProjectionSound1101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot88 (1 : Fin 4)) = canonicalInput192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound192 hH))).trans (reductionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot88 (2 : Fin 4)) = canonicalInput184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound184 hH))).trans (reductionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot88 (3 : Fin 4)) = canonicalInput182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot88 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound182 hH))).trans (oldProjectionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode37).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot88 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode37).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot88 (j : Fin 4)))
      2 72 72 2 ![72, 3, 3, 72] ![1, 24, 24, 1] reductionProjection88 ![oldProjection1101, reductionProjection87, reductionProjection87, oldProjection1021]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection89 : Integer.Sparse (Fin 1613) := [(1106, 1)]

theorem reductionSound89 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1106).moment H =
      Integer.Sparse.eval reductionProjection89 (momentVector H) := by
  have hc : coordinates (1106 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1106) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection89, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection90 : Integer.Sparse (Fin 1613) := [(1322, 1)]

theorem reductionSound90 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1322).moment H =
      Integer.Sparse.eval reductionProjection90 (momentVector H) := by
  have hc : coordinates (1322 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1322) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection90, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection91 : Integer.Sparse (Fin 1613) := [(93, 1), (1250, 1), (1321, -4), (1322, -4)]

def reductionPivot91 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 1, -1], ![-2, -2, 2, 2], ![2, 3, -3, -2]]

theorem reductionSound91 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode11020).moment H =
      Integer.Sparse.eval reductionProjection91 (momentVector H) := by
  have heq : reductionPivot91 = (fun u v => (normalNode11020).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11020).moment H = injectiveMoment H reductionPivot91 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11020).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11020).entries)).symm
  have hshape : reductionPivot91 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot91 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![4, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot91 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection264, reductionProjection90, oldProjection260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot91 (0 : Fin 3)) = canonicalInput26665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot91 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection264 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot91 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26665 hH))).trans (oldProjectionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot91 (1 : Fin 3)) = canonicalInput33335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot91 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection90 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot91 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33335 hH))).trans (reductionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot91 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10122 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot91 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot91 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10122 hH))).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11020).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot91 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11020).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot91 (j : Fin 3)))
      3 12 12 3 ![4, 1, 1] ![3, 12, 12] reductionProjection91 ![oldProjection264, reductionProjection90, oldProjection260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection92 : Integer.Sparse (Fin 1613) := [(0, 2), (20, -10), (93, -120), (94, 35), (1106, -720), (1250, -120), (1251, 15), (1319, 240), (1321, 480), (1322, 240)]

def reductionPivot92 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -2, 2, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, 1, -1, -2]]

theorem reductionSound92 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode38).moment H =
      Integer.Sparse.eval reductionProjection92 (momentVector H) := by
  have heq : reductionPivot92 = (fun u v => (normalNode38).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode38).moment H = injectiveMoment H reductionPivot92 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode38).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot92 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot92 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 12] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot92 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1339, reductionProjection89, oldProjection1195, reductionProjection91] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot92 (0 : Fin 4)) = canonicalInput279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound279 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot92 (1 : Fin 4)) = canonicalInput193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound193 hH))).trans (reductionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot92 (2 : Fin 4)) = canonicalInput188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound188 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot92 (3 : Fin 4)) = canonicalInput187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection91 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot92 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection91 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound187 hH))).trans (reductionSound91 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode38).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot92 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode38).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot92 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 720, 12] ![2, 1440, 2, 120] reductionProjection92 ![oldProjection1339, reductionProjection89, oldProjection1195, reductionProjection91]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection93 : Integer.Sparse (Fin 1613) := [(536, 1)]

theorem reductionSound93 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code536).moment H =
      Integer.Sparse.eval reductionProjection93 (momentVector H) := by
  have hc : coordinates (536 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code536) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection93, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection94 : Integer.Sparse (Fin 1613) := [(684, 1)]

theorem reductionSound94 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code684).moment H =
      Integer.Sparse.eval reductionProjection94 (momentVector H) := by
  have hc : coordinates (684 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code684) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection94, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection95 : Integer.Sparse (Fin 1613) := [(682, -1), (684, -1), (690, -1)]

def reductionPivot95 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 1, 2], ![1, -2, 2, -1], ![2, 3, -3, -2]]

theorem reductionSound95 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6928).moment H =
      Integer.Sparse.eval reductionProjection95 (momentVector H) := by
  have heq : reductionPivot95 = (fun u v => (normalNode6928).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6928).moment H = injectiveMoment H reductionPivot95 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6928).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6928).entries)).symm
  have hshape : reductionPivot95 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot95 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot95 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection94, oldProjection162, oldProjection159] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot95 (0 : Fin 3)) = canonicalInput304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot95 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection94 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot95 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection94 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound304 hH))).trans (reductionSound94 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot95 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2151 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot95 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection162 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot95 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2151 hH))).trans (oldProjectionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot95 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2508 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot95 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot95 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2508 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6928).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot95 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6928).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot95 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection95 ![reductionProjection94, oldProjection162, oldProjection159]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

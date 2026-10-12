import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical061
import NoFourMUBs.Step2.SOS.Canonical062
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical064
import NoFourMUBs.Step2.SOS.Canonical065
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical080
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions130
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions141
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical107
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical235
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical57
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical58
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical59
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical61
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical62
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical63
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical64
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical66
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical74
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical76
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection4544 : Integer.Sparse (Fin 1613) := [(691, -1), (1057, -1), (1058, -1)]

def reductionPivot4544 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-1, -2, 0, 3], ![3, 2, -2, -3]]

theorem reductionSound4544 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7937).moment H =
      Integer.Sparse.eval reductionProjection4544 (momentVector H) := by
  have heq : reductionPivot4544 = (fun u v => (normalNode7937).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7937).moment H = injectiveMoment H reductionPivot4544 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7937).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7937).entries)).symm
  have hshape : reductionPivot4544 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4544 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4544 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection163, oldProjection211, oldProjection212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4544 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4169 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4544 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4544 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4169 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4544 (1 : Fin 3)) = canonicalInput22373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4544 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4544 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22373 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4544 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7531 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4544 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4544 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7531 hH))).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7937).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4544 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7937).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4544 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection4544 ![oldProjection163, oldProjection211, oldProjection212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4545 : Integer.Sparse (Fin 1613) := [(509, 1)]

theorem reductionSound4545 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code509).moment H =
      Integer.Sparse.eval reductionProjection4545 (momentVector H) := by
  have hc : coordinates (509 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code509) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4545, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4546 : Integer.Sparse (Fin 1613) := [(156, -3), (456, -3), (509, -3), (691, 1), (1057, 1), (1058, 1)]

def reductionPivot4546 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -1, 3, -3]]

theorem reductionSound4546 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1938).moment H =
      Integer.Sparse.eval reductionProjection4546 (momentVector H) := by
  have heq : reductionPivot4546 = (fun u v => (normalNode1938).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1938).moment H = injectiveMoment H reductionPivot4546 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1938).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot4546 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4546 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4546 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4544, reductionProjection4545, reductionProjection4539, oldProjection406] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4546 (0 : Fin 4)) = (normalNode7937).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4544 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4546 (1 : Fin 4)) = canonicalInput4238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4545 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4238 hH))).trans (reductionSound4545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4546 (2 : Fin 4)) = canonicalInput3912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4539 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3912 hH))).trans (reductionSound4539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4546 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1813 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection406 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4546 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1813 hH))).trans (oldProjectionSound406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1938).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4546 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1938).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4546 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection4546 ![reductionProjection4544, reductionProjection4545, reductionProjection4539, oldProjection406]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4547 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -180), (20, 10), (26, 80), (40, -480), (42, 160), (58, -240), (94, 85), (104, 320), (105, 80), (156, 720), (241, 480), (243, 560), (456, 1440), (485, 1440), (509, 720), (691, -240), (698, 640), (700, 240), (703, 80), (704, 480), (1052, -720), (1057, -240), (1058, -240), (1226, 80), (1251, -15)]

def reductionPivot4547 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound4547 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1930).moment H =
      Integer.Sparse.eval reductionProjection4547 (momentVector H) := by
  have heq : reductionPivot4547 = (fun u v => (normalNode1930).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1930).moment H = injectiveMoment H reductionPivot4547 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1930).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4547 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4547 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 6, 288, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4547 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2771, reductionProjection4543, reductionProjection4546, reductionProjection4178, reductionProjection4541] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4547 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3434 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2771 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3434 hH))).trans (oldProjectionSound2771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4547 (1 : Fin 5)) = (normalNode2095).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4543 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4547 (2 : Fin 5)) = (normalNode1938).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4546 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4547 (3 : Fin 5)) = canonicalInput3898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4178 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3898 hH))).trans (reductionSound4178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4547 (4 : Fin 5)) = (normalNode1933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4541 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4547 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1930).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4547 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1930).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4547 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 6, 288, 72] ![1, 1, 240, 5, 20] reductionProjection4547 ![oldProjection2771, reductionProjection4543, reductionProjection4546, reductionProjection4178, reductionProjection4541]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4548 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (23, 48), (25, 48), (26, -32), (94, -1), (104, -32), (105, -48), (108, -32), (241, -32), (243, -16), (410, -144), (703, -16), (1251, -1)]

def reductionPivot4548 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]

theorem reductionSound4548 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1939).moment H =
      Integer.Sparse.eval reductionProjection4548 (momentVector H) := by
  have heq : reductionPivot4548 = (fun u v => (normalNode1939).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1939).moment H = injectiveMoment H reductionPivot4548 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1939).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4548 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4548 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4548 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4153, reductionProjection4163, reductionProjection4158, reductionProjection4154] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4548 (0 : Fin 4)) = (normalNode6733).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4153 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4548 (1 : Fin 4)) = canonicalInput4222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4163 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4222 hH))).trans (reductionSound4163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4548 (2 : Fin 4)) = canonicalInput3911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4158 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3911 hH))).trans (reductionSound4158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4548 (3 : Fin 4)) = canonicalInput3904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4154 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4548 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3904 hH))).trans (reductionSound4154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1939).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4548 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1939).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4548 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection4548 ![reductionProjection4153, reductionProjection4163, reductionProjection4158, reductionProjection4154]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4549 : Integer.Sparse (Fin 1613) := [(19, 4), (40, 36), (94, -1), (104, -8), (241, -8), (243, -8), (497, -36), (692, 12), (704, -8), (1052, 12), (1251, -1)]

def reductionPivot4549 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 1, -1, -1]]

theorem reductionSound4549 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1935).moment H =
      Integer.Sparse.eval reductionProjection4549 (momentVector H) := by
  have heq : reductionPivot4549 = (fun u v => (normalNode1935).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1935).moment H = injectiveMoment H reductionPivot4549 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1935).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4549 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4549 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 72, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4549 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection792, reductionProjection4190, oldProjection792, reductionProjection4186] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4549 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node792⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4549 (1 : Fin 4)) = canonicalInput4219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4190 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4219 hH))).trans (reductionSound4190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4549 (2 : Fin 4)) = canonicalInput3909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3909 hH))).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4549 (3 : Fin 4)) = canonicalInput3903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4186 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4549 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3903 hH))).trans (reductionSound4186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1935).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4549 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1935).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4549 (j : Fin 4)))
      2 72 72 2 ![72, 1, 72, 3] ![1, 72, 1, 24] reductionProjection4549 ![oldProjection792, reductionProjection4190, oldProjection792, reductionProjection4186]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4550 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -20), (20, 3), (23, -24), (25, -24), (26, 24), (40, -96), (42, 32), (94, 6), (104, 48), (105, 32), (108, 16), (241, 56), (243, 96), (244, 8), (410, 72), (480, 72), (497, 72), (692, -48), (698, 32), (700, 24), (701, 16), (703, 16), (704, 56), (1052, -72), (1053, -24), (1251, 3)]

def reductionPivot4550 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound4550 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1931).moment H =
      Integer.Sparse.eval reductionProjection4550 (momentVector H) := by
  have heq : reductionPivot4550 = (fun u v => (normalNode1931).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1931).moment H = injectiveMoment H reductionPivot4550 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1931).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4550 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4550 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4550 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2687, oldProjection1713, reductionProjection4548, reductionProjection4187, reductionProjection4549] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4550 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3437 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3437 hH))).trans (oldProjectionSound2687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4550 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1713⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1713 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4550 (2 : Fin 5)) = (normalNode1939).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4548 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4550 (3 : Fin 5)) = canonicalInput3902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4187 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3902 hH))).trans (reductionSound4187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4550 (4 : Fin 5)) = (normalNode1935).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4549 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4550 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1931).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4550 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1931).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4550 (j : Fin 5)))
      1 144 288 2 ![288, 288, 288, 288, 72] ![1, 1, 1, 1, 4] reductionProjection4550 ![oldProjection2687, oldProjection1713, reductionProjection4548, reductionProjection4187, reductionProjection4549]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4551 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 20), (26, -16), (40, 96), (94, -5), (104, -64), (105, -32), (241, -64), (243, -48), (692, 48), (698, -16), (703, -16), (704, -32), (1052, 48), (1251, -1)]

def reductionPivot4551 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 3, -4]]

theorem reductionSound4551 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1967).moment H =
      Integer.Sparse.eval reductionProjection4551 (momentVector H) := by
  have heq : reductionPivot4551 = (fun u v => (normalNode1967).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1967).moment H = injectiveMoment H reductionPivot4551 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1967).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4551 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4551 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4551 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2358, reductionProjection4515, oldProjection792, oldProjection1120] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4551 (0 : Fin 4)) = canonicalInput2789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2358 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2789 hH))).trans (reductionSound2358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4551 (1 : Fin 4)) = canonicalInput4080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4515 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4080 hH))).trans (reductionSound4515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4551 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1986 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1986 hH))).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4551 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1990 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1120 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4551 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1990 hH))).trans (oldProjectionSound1120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1967).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4551 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1967).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4551 (j : Fin 4)))
      2 288 288 2 ![144, 9, 72, 72] ![2, 32, 4, 4] reductionProjection4551 ![reductionProjection2358, reductionProjection4515, oldProjection792, oldProjection1120]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4552 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -80), (19, -120), (20, 35), (26, 160), (40, -1200), (94, 30), (104, 720), (105, 400), (241, 720), (243, 640), (453, 720), (692, -960), (698, 240), (703, 160), (704, 480), (1052, -960), (1222, -240), (1223, -480), (1226, 80), (1251, -20)]

def reductionPivot4552 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 3, -4]]

theorem reductionSound4552 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1940).moment H =
      Integer.Sparse.eval reductionProjection4552 (momentVector H) := by
  have heq : reductionPivot4552 = (fun u v => (normalNode1940).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1940).moment H = injectiveMoment H reductionPivot4552 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1940).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4552 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4552 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4552 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2359, reductionProjection4517, reductionProjection4551, oldProjection1667, oldProjection1495] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4552 (0 : Fin 5)) = (normalNode1347).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2359 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4552 (1 : Fin 5)) = (normalNode1925).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4517 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4552 (2 : Fin 5)) = (normalNode1967).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4551 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4552 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1667⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1667 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4552 (4 : Fin 5)) = canonicalInput3931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1495 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4552 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3931 hH))).trans (oldProjectionSound1495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1940).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4552 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1940).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4552 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 288, 144, 1440] ![10, 5, 5, 10, 1] reductionProjection4552 ![reductionProjection2359, reductionProjection4517, reductionProjection4551, oldProjection1667, oldProjection1495]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4553 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (26, -48), (94, -1), (104, -32), (105, -16), (241, -16), (243, -80), (246, -32), (482, -144), (698, -32), (703, -80), (704, -64), (1251, -1)]

def reductionPivot4553 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 3, -5]]

theorem reductionSound4553 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1968).moment H =
      Integer.Sparse.eval reductionProjection4553 (momentVector H) := by
  have heq : reductionPivot4553 = (fun u v => (normalNode1968).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1968).moment H = injectiveMoment H reductionPivot4553 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1968).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4553 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4553 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4553 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2507, reductionProjection4521, reductionProjection4209, oldProjection1306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4553 (0 : Fin 4)) = canonicalInput2790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2507 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2790 hH))).trans (reductionSound2507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4553 (1 : Fin 4)) = canonicalInput4081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4521 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4081 hH))).trans (reductionSound4521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4553 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code482).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4209 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4553 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1998 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4553 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1998 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1968).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4553 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1968).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4553 (j : Fin 4)))
      2 288 288 2 ![36, 9, 1, 144] ![8, 32, 288, 2] reductionProjection4553 ![reductionProjection2507, reductionProjection4521, reductionProjection4209, oldProjection1306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4554 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -110), (4, 5), (19, -230), (20, 40), (23, -240), (26, 320), (94, 80), (104, 320), (105, 200), (241, 200), (243, 560), (246, 320), (482, 720), (698, 240), (703, 640), (704, 720), (1251, 50), (1278, -240)]

def reductionPivot4554 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 3, -5]]

theorem reductionSound4554 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1941).moment H =
      Integer.Sparse.eval reductionProjection4554 (momentVector H) := by
  have heq : reductionPivot4554 = (fun u v => (normalNode1941).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1941).moment H = injectiveMoment H reductionPivot4554 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1941).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4554 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4554 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4554 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2536, reductionProjection4522, reductionProjection4553, reductionProjection4211, oldProjection1563] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4554 (0 : Fin 5)) = (normalNode1349).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2536 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4554 (1 : Fin 5)) = (normalNode1927).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4522 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4554 (2 : Fin 5)) = (normalNode1968).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4553 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4554 (3 : Fin 5)) = (normalNode1979).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4211 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4554 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1841 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4554 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1841 hH))).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1941).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4554 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1941).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4554 (j : Fin 5)))
      1 720 1440 2 ![288, 144, 288, 288, 1440] ![5, 10, 5, 5, 1] reductionProjection4554 ![reductionProjection2536, reductionProjection4522, reductionProjection4553, reductionProjection4211, oldProjection1563]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4555 : Integer.Sparse (Fin 1613) := [(25, -3), (26, 2), (104, 1), (105, 1), (243, 1), (703, 1)]

def reductionPivot4555 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 3, -2], ![0, -3, 2, 1], ![2, 3, -5, 0]]

theorem reductionSound4555 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9056).moment H =
      Integer.Sparse.eval reductionProjection4555 (momentVector H) := by
  have heq : reductionPivot4555 = (fun u v => (normalNode9056).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9056).moment H = injectiveMoment H reductionPivot4555 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9056).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9056).entries)).symm
  have hshape : reductionPivot4555 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4555 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4555 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection75, reductionProjection118, oldProjection76] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4555 (0 : Fin 3)) = canonicalInput9510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4555 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection75 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4555 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection75 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9510 hH))).trans (oldProjectionSound75 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4555 (1 : Fin 3)) = canonicalInput22425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4555 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4555 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22425 hH))).trans (reductionSound118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4555 (2 : Fin 3)) = canonicalInput22436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4555 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection76 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4555 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22436 hH))).trans (oldProjectionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9056).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4555 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9056).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4555 (j : Fin 3)))
      3 9 9 3 ![3, 1, 3] ![3, 9, 3] reductionProjection4555 ![oldProjection75, reductionProjection118, oldProjection76]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4556 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (25, 48), (26, -32), (38, 48), (94, -1), (104, -32), (105, -16), (241, -16), (243, -48), (246, -16), (414, -144), (679, 48), (698, -16), (703, -48), (704, -32), (1251, -1)]

def reductionPivot4556 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -2, 1]]

theorem reductionSound4556 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1994).moment H =
      Integer.Sparse.eval reductionProjection4556 (momentVector H) := by
  have heq : reductionPivot4556 = (fun u v => (normalNode1994).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1994).moment H = injectiveMoment H reductionPivot4556 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1994).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4556 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4556 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4556 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2516, oldProjection1155, reductionProjection4159, reductionProjection4555] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4556 (0 : Fin 4)) = canonicalInput2847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2516 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2847 hH))).trans (reductionSound2516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4556 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2117 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1155 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2117 hH))).trans (oldProjectionSound1155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4556 (2 : Fin 4)) = canonicalInput4188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4188 hH))).trans (reductionSound4159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4556 (3 : Fin 4)) = canonicalInput4189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4555 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4556 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4189 hH))).trans (reductionSound4555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1994).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4556 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1994).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4556 (j : Fin 4)))
      2 288 288 2 ![36, 144, 1, 9] ![8, 2, 288, 32] reductionProjection4556 ![reductionProjection2516, oldProjection1155, reductionProjection4159, reductionProjection4555]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4557 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -180), (4, 5), (19, -320), (20, 50), (23, -480), (25, -720), (26, 320), (38, -960), (94, 115), (104, 480), (105, 320), (108, 480), (241, 320), (243, 480), (246, 160), (247, 160), (410, 720), (414, 1440), (679, -960), (698, 240), (700, 80), (703, 480), (704, 480), (1061, -480), (1062, -240), (1251, 75), (1278, -480)]

def reductionPivot4557 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound4557 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1942).moment H =
      Integer.Sparse.eval reductionProjection4557 (momentVector H) := by
  have heq : reductionPivot4557 = (fun u v => (normalNode1942).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1942).moment H = injectiveMoment H reductionPivot4557 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1942).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4557 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4557 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4557 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2542, reductionProjection4548, oldProjection1486, reductionProjection4217, reductionProjection4556] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4557 (0 : Fin 5)) = (normalNode1355).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2542 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4557 (1 : Fin 5)) = (normalNode1939).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4548 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4557 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1857 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1857 hH))).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4557 (3 : Fin 5)) = (normalNode1993).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4217 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4557 (4 : Fin 5)) = (normalNode1994).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4556 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4557 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1942).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4557 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1942).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4557 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 288, 288] ![5, 5, 1, 5, 5] reductionProjection4557 ![reductionProjection2542, reductionProjection4548, oldProjection1486, reductionProjection4217, reductionProjection4556]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4558 : Integer.Sparse (Fin 1613) := [(13, -48), (19, -4), (20, 1), (76, -48), (84, -48), (94, 9), (428, 144), (560, 144), (682, -96), (686, -96), (697, -96), (698, 48), (700, 16), (701, 16), (704, 32), (810, 144), (1251, 8)]

def reductionPivot4558 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -2, -2]]

theorem reductionSound4558 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1943).moment H =
      Integer.Sparse.eval reductionProjection4558 (momentVector H) := by
  have heq : reductionPivot4558 = (fun u v => (normalNode1943).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1943).moment H = injectiveMoment H reductionPivot4558 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1943).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4558 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4558 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 72, 36, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4558 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2386, oldProjection1011, oldProjection1011, reductionProjection4314, reductionProjection4319] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4558 (0 : Fin 5)) = (normalNode1366).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4558 (1 : Fin 5)) = canonicalInput3954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3954 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4558 (2 : Fin 5)) = canonicalInput3991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3991 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4558 (3 : Fin 5)) = canonicalInput3998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4314 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3998 hH))).trans (reductionSound4314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4558 (4 : Fin 5)) = (normalNode2008).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4319 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4558 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1943).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4558 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1943).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4558 (j : Fin 5)))
      1 288 288 1 ![288, 72, 72, 36, 72] ![1, 4, 4, 8, 4] reductionProjection4558 ![reductionProjection2386, oldProjection1011, oldProjection1011, reductionProjection4314, reductionProjection4319]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4559 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -20), (58, -240), (81, -960), (94, 45), (228, -480), (283, 720), (420, 720), (686, -240), (698, 320), (700, 160), (704, 80), (1059, 160), (1251, -35), (1389, -240)]

def reductionPivot4559 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound4559 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1944).moment H =
      Integer.Sparse.eval reductionProjection4559 (momentVector H) := by
  have heq : reductionPivot4559 = (fun u v => (normalNode1944).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1944).moment H = injectiveMoment H reductionPivot4559 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1944).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4559 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4559 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4559 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1586, oldProjection943, oldProjection943, oldProjection1674, reductionProjection2552] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4559 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1586⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4559 (1 : Fin 5)) = canonicalInput3955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3955 hH))).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4559 (2 : Fin 5)) = canonicalInput3992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3992 hH))).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4559 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1674 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4559 (4 : Fin 5)) = (normalNode2009).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2552 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4559 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1944).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4559 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1944).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4559 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 720, 720] ![1, 2, 2, 2, 2] reductionProjection4559 ![oldProjection1586, oldProjection943, oldProjection943, oldProjection1674, reductionProjection2552]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4560 : Integer.Sparse (Fin 1613) := [(469, 1)]

theorem reductionSound4560 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code469).moment H =
      Integer.Sparse.eval reductionProjection4560 (momentVector H) := by
  have hc : coordinates (469 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code469) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4560, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4561 : Integer.Sparse (Fin 1613) := [(81, 3), (465, -9), (469, -9), (590, -9), (698, -2), (700, -2), (1059, -2)]

def reductionPivot4561 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 2, -2, -1]]

theorem reductionSound4561 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode2015).moment H =
      Integer.Sparse.eval reductionProjection4561 (momentVector H) := by
  have heq : reductionPivot4561 = (fun u v => (normalNode2015).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2015).moment H = injectiveMoment H reductionPivot4561 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2015).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4561 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4561 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4561 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection508, reductionProjection4560, oldProjection1235, oldProjection483] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4561 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node508⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection508 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4561 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code469).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4560 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4561 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1976 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1976 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4561 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4561 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2015).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4561 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2015).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4561 (j : Fin 4)))
      2 18 18 2 ![1, 1, 9, 1] ![18, 18, 2, 18] reductionProjection4561 ![oldProjection508, reductionProjection4560, oldProjection1235, oldProjection483]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4562 : Integer.Sparse (Fin 1613) := [(58, 3), (60, -2), (81, 6), (420, -9), (698, -4), (700, -8), (1059, -4)]

def reductionPivot4562 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, -3, 0]]

theorem reductionSound4562 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode2016).moment H =
      Integer.Sparse.eval reductionProjection4562 (momentVector H) := by
  have heq : reductionPivot4562 = (fun u v => (normalNode2016).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2016).moment H = injectiveMoment H reductionPivot4562 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2016).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4562 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4562 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4562 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1235, reductionProjection4397, reductionProjection2377, oldProjection1235] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4562 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2382 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2382 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4562 (1 : Fin 4)) = canonicalInput4058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4397 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4058 hH))).trans (reductionSound4397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4562 (2 : Fin 4)) = canonicalInput4044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4044 hH))).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4562 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1976 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4562 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1976 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2016).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4562 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2016).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4562 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection4562 ![oldProjection1235, reductionProjection4397, reductionProjection2377, oldProjection1235]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4563 : Integer.Sparse (Fin 1613) := [(0, -4), (42, 80), (58, -120), (60, 80), (81, -480), (94, 15), (228, -120), (241, 80), (243, 160), (283, 360), (420, 360), (465, 360), (469, 360), (590, 360), (686, -120), (698, 400), (700, 480), (1059, 240), (1251, -25), (1389, -240)]

def reductionPivot4563 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]

theorem reductionSound4563 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1945).moment H =
      Integer.Sparse.eval reductionProjection4563 (momentVector H) := by
  have heq : reductionPivot4563 = (fun u v => (normalNode1945).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1945).moment H = injectiveMoment H reductionPivot4563 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1945).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4563 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4563 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 9, 720, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4563 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1588, oldProjection1235, oldProjection1674, reductionProjection4561, reductionProjection4562] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4563 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1588 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4563 (1 : Fin 5)) = canonicalInput3956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3956 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4563 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1674 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4563 (3 : Fin 5)) = (normalNode2015).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4561 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4563 (4 : Fin 5)) = (normalNode2016).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4562 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4563 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1945).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4563 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1945).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4563 (j : Fin 5)))
      1 720 720 1 ![18, 9, 720, 18, 18] ![40, 80, 1, 40, 40] reductionProjection4563 ![oldProjection1588, oldProjection1235, oldProjection1674, reductionProjection4561, reductionProjection4562]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4564 : Integer.Sparse (Fin 1613) := [(19, 2), (26, -8), (40, 24), (76, 24), (88, -8), (94, -1), (104, -8), (105, -16), (241, -32), (243, -32), (473, -72), (698, -16), (1052, 24), (1226, -8), (1251, 1)]

def reductionPivot4564 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, -3, 2], ![0, 1, 0, -1], ![2, -1, 2, -3]]

theorem reductionSound4564 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2017).moment H =
      Integer.Sparse.eval reductionProjection4564 (momentVector H) := by
  have heq : reductionPivot4564 = (fun u v => (normalNode2017).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2017).moment H = injectiveMoment H reductionPivot4564 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2017).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4564 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4564 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4564 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1574, oldProjection1120, reductionProjection4512, reductionProjection4515] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4564 (0 : Fin 4)) = canonicalInput5138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1574 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1574 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5138 hH))).trans (reductionSound1574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4564 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1990 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1120 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1990 hH))).trans (oldProjectionSound1120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4564 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code473).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4512 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4564 (3 : Fin 4)) = canonicalInput4080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4515 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4564 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4080 hH))).trans (reductionSound4515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2017).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4564 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2017).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4564 (j : Fin 4)))
      2 144 144 2 ![9, 72, 1, 9] ![16, 2, 144, 16] reductionProjection4564 ![reductionProjection1574, oldProjection1120, reductionProjection4512, reductionProjection4515]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4565 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -120), (20, 5), (26, 80), (40, -480), (76, -480), (88, 80), (104, 320), (105, 160), (241, 640), (243, 480), (317, 720), (473, 720), (478, 720), (692, -240), (698, 640), (703, 80), (704, 160), (1052, -720), (1221, -240), (1223, -240), (1226, 320), (1227, 80), (1251, -95)]

def reductionPivot4565 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 2, -3]]

theorem reductionSound4565 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1946).moment H =
      Integer.Sparse.eval reductionProjection4565 (momentVector H) := by
  have heq : reductionPivot4565 = (fun u v => (normalNode1946).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1946).moment H = injectiveMoment H reductionPivot4565 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1946).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4565 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4565 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 144, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4565 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2504, oldProjection1120, reductionProjection4564, oldProjection1675, oldProjection1676] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4565 (0 : Fin 5)) = (normalNode1373).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2504 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4565 (1 : Fin 5)) = canonicalInput3957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1120 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3957 hH))).trans (oldProjectionSound1120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4565 (2 : Fin 5)) = (normalNode2017).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4564 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4564 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4565 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1675⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1675 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4565 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1676⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1676 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4565 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1946).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4565 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1946).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4565 (j : Fin 5)))
      1 1440 1440 1 ![288, 72, 144, 288, 1440] ![5, 20, 10, 5, 1] reductionProjection4565 ![reductionProjection2504, oldProjection1120, reductionProjection4564, oldProjection1675, oldProjection1676]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4566 : Integer.Sparse (Fin 1613) := [(19, 4), (26, -48), (88, -48), (94, -1), (104, -16), (105, -16), (241, -32), (243, -128), (474, -144), (698, -32), (703, -32), (704, -32), (1226, -32), (1251, -1)]

def reductionPivot4566 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound4566 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2018).moment H =
      Integer.Sparse.eval reductionProjection4566 (momentVector H) := by
  have heq : reductionPivot4566 = (fun u v => (normalNode2018).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2018).moment H = injectiveMoment H reductionPivot4566 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2018).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4566 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4566 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4566 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1125, oldProjection1306, reductionProjection4519, reductionProjection4521] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4566 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2388 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1125 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2388 hH))).trans (oldProjectionSound1125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4566 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1998 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1998 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4566 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code474).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4566 (3 : Fin 4)) = canonicalInput4081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4521 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4566 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4081 hH))).trans (reductionSound4521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2018).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4566 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2018).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4566 (j : Fin 4)))
      2 288 288 2 ![9, 144, 1, 9] ![32, 2, 288, 32] reductionProjection4566 ![oldProjection1125, oldProjection1306, reductionProjection4519, reductionProjection4521]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4567 : Integer.Sparse (Fin 1613) := [(19, 12), (94, -7), (241, -16), (243, -64), (482, -144), (609, -144), (698, -48), (704, -80), (1251, -7)]

def reductionPivot4567 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 1, 2, -4]]

theorem reductionSound4567 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2022).moment H =
      Integer.Sparse.eval reductionProjection4567 (momentVector H) := by
  have heq : reductionPivot4567 = (fun u v => (normalNode2022).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2022).moment H = injectiveMoment H reductionPivot4567 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2022).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4567 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4567 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4567 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection512, oldProjection1080, oldProjection1306, reductionProjection4209] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4567 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node512⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection512 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4567 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2042 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2042 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4567 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1998 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1998 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4567 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code482).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4209 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4567 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2022).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4567 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2022).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4567 (j : Fin 4)))
      2 288 288 2 ![1, 72, 144, 1] ![288, 4, 2, 288] reductionProjection4567 ![oldProjection512, oldProjection1080, oldProjection1306, reductionProjection4209]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4568 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -140), (20, 25), (26, 240), (88, 240), (94, 55), (104, 160), (105, 80), (241, 240), (243, 960), (246, 160), (320, 720), (474, 720), (482, 720), (483, 720), (609, 720), (698, 640), (703, 400), (704, 720), (1226, 400), (1227, 160), (1251, 20)]

def reductionPivot4568 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound4568 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1947).moment H =
      Integer.Sparse.eval reductionProjection4568 (momentVector H) := by
  have heq : reductionPivot4568 = (fun u v => (normalNode1947).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1947).moment H = injectiveMoment H reductionPivot4568 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1947).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4568 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4568 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4568 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2508, oldProjection1306, reductionProjection4566, reductionProjection4567, oldProjection1678] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4568 (0 : Fin 5)) = (normalNode1376).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2508 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4568 (1 : Fin 5)) = canonicalInput3958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3958 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4568 (2 : Fin 5)) = (normalNode2018).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4566 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4568 (3 : Fin 5)) = (normalNode2022).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4567 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4568 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1678⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1678 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4568 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1947).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4568 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1947).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4568 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 288, 288, 720] ![5, 10, 5, 5, 2] reductionProjection4568 ![reductionProjection2508, oldProjection1306, reductionProjection4566, reductionProjection4567, oldProjection1678]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4569 : Integer.Sparse (Fin 1613) := [(474, -1), (475, -1), (483, -1), (596, -1)]

def reductionPivot4569 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound4569 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2019).moment H =
      Integer.Sparse.eval reductionProjection4569 (momentVector H) := by
  have heq : reductionPivot4569 = (fun u v => (normalNode2019).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2019).moment H = injectiveMoment H reductionPivot4569 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2019).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4569 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4569 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4569 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection509, oldProjection487, reductionProjection80, reductionProjection4519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4569 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4569 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4569 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code475).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection80 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4569 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code474).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4569 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2019).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4569 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2019).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4569 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection4569 ![oldProjection509, oldProjection487, reductionProjection80, reductionProjection4519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4570 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -100), (20, 5), (94, 30), (241, 80), (243, 240), (247, 80), (320, 720), (321, 720), (474, 720), (475, 720), (483, 1440), (484, 720), (596, 720), (610, 720), (698, 480), (704, 240), (1226, 240), (1227, 160)]

def reductionPivot4570 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound4570 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1948).moment H =
      Integer.Sparse.eval reductionProjection4570 (momentVector H) := by
  have heq : reductionPivot4570 = (fun u v => (normalNode1948).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1948).moment H = injectiveMoment H reductionPivot4570 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1948).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4570 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4570 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 2, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4570 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2511, oldProjection487, reductionProjection4569, oldProjection1678, oldProjection1679] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4570 (0 : Fin 5)) = (normalNode1377).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2511 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4570 (1 : Fin 5)) = canonicalInput3959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3959 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4570 (2 : Fin 5)) = (normalNode2019).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4569 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4570 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1678⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1678 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4570 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1679⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4570 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1948).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4570 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1948).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4570 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1, 2, 720, 288] ![1, 1440, 720, 2, 5] reductionProjection4570 ![reductionProjection2511, oldProjection487, reductionProjection4569, oldProjection1678, oldProjection1679]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4571 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -40), (20, 20), (40, -480), (76, -480), (94, -15), (104, 160), (241, 640), (243, 320), (692, -240), (698, 640), (704, 160), (1052, -960), (1221, -240), (1223, -480), (1226, 320), (1251, -15)]

def reductionPivot4571 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 2, -3]]

theorem reductionSound4571 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1949).moment H =
      Integer.Sparse.eval reductionProjection4571 (momentVector H) := by
  have heq : reductionPivot4571 = (fun u v => (normalNode1949).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1949).moment H = injectiveMoment H reductionPivot4571 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1949).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4571 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4571 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 144, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4571 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1589, oldProjection1028, oldProjection1675, oldProjection1675, oldProjection1680] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4571 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1589⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1589 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4571 (1 : Fin 5)) = canonicalInput3960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3960 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4571 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1675⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1675 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4571 (3 : Fin 5)) = canonicalInput4003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1675 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4003 hH))).trans (oldProjectionSound1675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4571 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1680 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4571 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1949).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4571 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1949).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4571 (j : Fin 5)))
      1 1440 1440 1 ![144, 144, 288, 288, 1440] ![10, 10, 5, 5, 1] reductionProjection4571 ![oldProjection1589, oldProjection1028, oldProjection1675, oldProjection1675, oldProjection1680]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4572 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 48), (26, -8), (88, -8), (94, -3), (104, -8), (228, 24), (241, -16), (243, -48), (698, -32), (703, -16), (704, -40), (1226, -8), (1251, -3)]

def reductionPivot4572 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 1, 2, -4]]

theorem reductionSound4572 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2026).moment H =
      Integer.Sparse.eval reductionProjection4572 (momentVector H) := by
  have heq : reductionPivot4572 = (fun u v => (normalNode2026).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2026).moment H = injectiveMoment H reductionPivot4572 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2026).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4572 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4572 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4572 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection849, oldProjection1364, oldProjection1080, reductionProjection4210] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4572 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2432 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection849 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection849 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2432 hH))).trans (oldProjectionSound849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4572 (1 : Fin 4)) = canonicalInput4126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1364 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4126 hH))).trans (oldProjectionSound1364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4572 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2042 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2042 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4572 (3 : Fin 4)) = canonicalInput4118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4210 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4572 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4118 hH))).trans (reductionSound4210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2026).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4572 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2026).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4572 (j : Fin 4)))
      2 144 144 2 ![9, 9, 72, 9] ![16, 16, 2, 16] reductionProjection4572 ![oldProjection849, oldProjection1364, oldProjection1080, reductionProjection4210]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4573 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -10), (19, -130), (20, 20), (23, -240), (26, 40), (88, 40), (94, 75), (104, 40), (228, -120), (241, 120), (243, 400), (246, 80), (482, 360), (609, 360), (698, 440), (703, 120), (704, 520), (1226, 80), (1227, 40), (1251, 30), (1278, -240)]

def reductionPivot4573 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 2, -4]]

theorem reductionSound4573 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1950).moment H =
      Integer.Sparse.eval reductionProjection4573 (momentVector H) := by
  have heq : reductionPivot4573 = (fun u v => (normalNode1950).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1950).moment H = injectiveMoment H reductionPivot4573 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1950).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4573 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4573 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 72, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4573 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2509, oldProjection1080, reductionProjection4567, reductionProjection4572, oldProjection1682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4573 (0 : Fin 5)) = (normalNode1384).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2509 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4573 (1 : Fin 5)) = canonicalInput3961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3961 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4573 (2 : Fin 5)) = (normalNode2022).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4567 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4573 (3 : Fin 5)) = (normalNode2026).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4572 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4572 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4573 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1682⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1682 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4573 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1950).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4573 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1950).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4573 (j : Fin 5)))
      1 720 1440 2 ![72, 72, 288, 144, 1440] ![20, 20, 5, 10, 1] reductionProjection4573 ![reductionProjection2509, oldProjection1080, reductionProjection4567, reductionProjection4572, oldProjection1682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4574 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -160), (20, 5), (81, -240), (94, 125), (228, -240), (241, 80), (247, 320), (483, 720), (484, 720), (610, 720), (698, 320), (704, 160), (1251, -10), (1389, -240)]

def reductionPivot4574 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound4574 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1951).moment H =
      Integer.Sparse.eval reductionProjection4574 (momentVector H) := by
  have heq : reductionPivot4574 = (fun u v => (normalNode1951).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1951).moment H = injectiveMoment H reductionPivot4574 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1951).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4574 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4574 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4574 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1559, oldProjection1099, oldProjection1679, oldProjection2748, oldProjection1683] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4574 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1567 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1567 hH))).trans (oldProjectionSound1559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4574 (1 : Fin 5)) = canonicalInput3962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3962 hH))).trans (oldProjectionSound1099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4574 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1679⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4574 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1899 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2748 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1899 hH))).trans (oldProjectionSound2748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4574 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1683 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4574 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1951).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4574 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1951).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4574 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 288, 1440, 360] ![5, 10, 5, 1, 4] reductionProjection4574 ![oldProjection1559, oldProjection1099, oldProjection1679, oldProjection2748, oldProjection1683]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4575 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (23, 240), (94, -15), (228, 240), (241, -80), (243, -160), (488, -720), (698, -400), (704, -160), (1226, -160), (1227, -160), (1251, 15)]

def reductionPivot4575 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, 1, -3]]

theorem reductionSound4575 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2030).moment H =
      Integer.Sparse.eval reductionProjection4575 (momentVector H) := by
  have heq : reductionPivot4575 = (fun u v => (normalNode2030).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2030).moment H = injectiveMoment H reductionPivot4575 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2030).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4575 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4575 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4575 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection730, reductionProjection553, oldProjection933, oldProjection1364] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4575 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2456 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection730 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2456 hH))).trans (oldProjectionSound730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4575 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code488).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection553 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4575 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2068 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection933 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2068 hH))).trans (oldProjectionSound933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4575 (3 : Fin 4)) = canonicalInput4126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1364 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4575 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4126 hH))).trans (oldProjectionSound1364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2030).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4575 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2030).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4575 (j : Fin 4)))
      2 1440 1440 2 ![9, 1, 720, 9] ![160, 1440, 2, 160] reductionProjection4575 ![oldProjection730, reductionProjection553, oldProjection933, oldProjection1364]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

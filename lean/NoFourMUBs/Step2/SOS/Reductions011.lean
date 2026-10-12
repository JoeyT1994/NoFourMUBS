import NoFourMUBs.Step2.SOS.Canonical002
import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical011
import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical075
import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical132
import NoFourMUBs.Step2.SOS.Canonical135
import NoFourMUBs.Step2.SOS.Canonical138
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical213
import NoFourMUBs.Step2.SOS.Canonical215
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical236
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical283
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions010
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical119
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical181
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical76
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical77
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical84
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

def reductionProjection352 : Integer.Sparse (Fin 1613) := [(640, 1)]

theorem reductionSound352 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code640).moment H =
      Integer.Sparse.eval reductionProjection352 (momentVector H) := by
  have hc : coordinates (640 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code640) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection352, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection353 : Integer.Sparse (Fin 1613) := [(87, 3), (90, -4), (618, -9), (640, -9), (698, -5), (700, -1), (1226, -4), (1227, -1)]

def reductionPivot353 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 1, -1]]

theorem reductionSound353 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7747).moment H =
      Integer.Sparse.eval reductionProjection353 (momentVector H) := by
  have heq : reductionPivot353 = (fun u v => (normalNode7747).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7747).moment H = injectiveMoment H reductionPivot353 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7747).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot353 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot353 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot353 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1018, reductionProjection304, oldProjection515, reductionProjection352] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot353 (0 : Fin 4)) = canonicalInput23980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23980 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot353 (1 : Fin 4)) = canonicalInput15301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15301 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot353 (2 : Fin 4)) = canonicalInput15157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection515 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15157 hH))).trans (oldProjectionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot353 (3 : Fin 4)) = canonicalInput15150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection352 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot353 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15150 hH))).trans (reductionSound352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7747).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot353 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7747).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot353 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection353 ![oldProjection1018, reductionProjection304, oldProjection515, reductionProjection352]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection354 : Integer.Sparse (Fin 1613) := [(1341, 1)]

theorem reductionSound354 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1341).moment H =
      Integer.Sparse.eval reductionProjection354 (momentVector H) := by
  have hc : coordinates (1341 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1341) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection354, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection355 : Integer.Sparse (Fin 1613) := [(87, 3), (90, -2), (698, -6), (1226, -5), (1227, -3), (1251, 1), (1341, -9)]

def reductionPivot355 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound355 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7685).moment H =
      Integer.Sparse.eval reductionProjection355 (momentVector H) := by
  have heq : reductionPivot355 = (fun u v => (normalNode7685).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7685).moment H = injectiveMoment H reductionPivot355 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7685).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot355 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot355 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot355 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection949, oldProjection942, reductionProjection354, reductionProjection304] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot355 (0 : Fin 4)) = canonicalInput19448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection949 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19448 hH))).trans (oldProjectionSound949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot355 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6142 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection942 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6142 hH))).trans (oldProjectionSound942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot355 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1341).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection354 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot355 (3 : Fin 4)) = canonicalInput15113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot355 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15113 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7685).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot355 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7685).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot355 (j : Fin 4)))
      2 18 720 80 ![720, 720, 1, 9] ![1, 1, 720, 80] reductionProjection355 ![oldProjection949, oldProjection942, reductionProjection354, reductionProjection304]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection356 : Integer.Sparse (Fin 1613) := [(65, -288), (87, -144), (90, 112), (94, 1), (596, 144), (618, 144), (630, 144), (640, 144), (698, 256), (700, 16), (955, 144), (1004, 144), (1015, 144), (1024, 144), (1226, 224), (1227, 112), (1251, -19), (1341, 144)]

def reductionPivot356 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound356 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode178).moment H =
      Integer.Sparse.eval reductionProjection356 (momentVector H) := by
  have heq : reductionPivot356 = (fun u v => (normalNode178).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode178).moment H = injectiveMoment H reductionPivot356 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode178).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot356 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot356 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 2, 1, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot356 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection353, reductionProjection355, reductionProjection343, reductionProjection341, reductionProjection305] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot356 (0 : Fin 5)) = canonicalInput807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection353 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound807 hH))).trans (reductionSound353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot356 (1 : Fin 5)) = canonicalInput679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound679 hH))).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot356 (2 : Fin 5)) = canonicalInput669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection343 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound669 hH))).trans (reductionSound343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot356 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code65).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection341 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot356 (4 : Fin 5)) = canonicalInput665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection305 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot356 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound665 hH))).trans (reductionSound305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode178).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot356 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode178).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot356 (j : Fin 5)))
      1 288 288 1 ![18, 18, 2, 1, 288] ![16, 16, 144, 288, 1] reductionProjection356 ![reductionProjection353, reductionProjection355, reductionProjection343, reductionProjection341, reductionProjection305]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection357 : Integer.Sparse (Fin 1613) := [(640, -1), (782, -1), (1015, -1), (1024, -1)]

def reductionPivot357 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 1, -3, 1]]

theorem reductionSound357 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4404).moment H =
      Integer.Sparse.eval reductionProjection357 (momentVector H) := by
  have heq : reductionPivot357 = (fun u v => (normalNode4404).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4404).moment H = injectiveMoment H reductionPivot357 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4404).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot357 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot357 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot357 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection352, oldProjection619, reductionProjection289, oldProjection590] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot357 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code640).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection352 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot357 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3837 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection619 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3837 hH))).trans (oldProjectionSound619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot357 (2 : Fin 4)) = canonicalInput8921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8921 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot357 (3 : Fin 4)) = canonicalInput8924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot357 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8924 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4404).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot357 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4404).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot357 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection357 ![reductionProjection352, oldProjection619, reductionProjection289, oldProjection590]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection358 : Integer.Sparse (Fin 1613) := [(87, 3), (90, -2), (698, -6), (955, -9), (1226, -3), (1227, -1)]

def reductionPivot358 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound358 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4347).moment H =
      Integer.Sparse.eval reductionProjection358 (momentVector H) := by
  have heq : reductionPivot358 = (fun u v => (normalNode4347).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4347).moment H = injectiveMoment H reductionPivot358 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4347).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot358 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot358 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot358 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, reductionProjection342, oldProjection952, oldProjection945] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot358 (0 : Fin 4)) = canonicalInput4859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4859 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot358 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot358 (2 : Fin 4)) = canonicalInput8502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection952 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8502 hH))).trans (oldProjectionSound952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot358 (3 : Fin 4)) = canonicalInput8505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection945 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot358 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8505 hH))).trans (oldProjectionSound945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4347).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot358 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4347).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot358 (j : Fin 4)))
      2 18 18 2 ![9, 1, 9, 9] ![2, 18, 2, 2] reductionProjection358 ![reductionProjection304, reductionProjection342, oldProjection952, oldProjection945]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection359 : Integer.Sparse (Fin 1613) := [(66, 9), (87, -3), (90, 2), (426, 9), (630, 9), (640, 9), (698, 6), (782, 9), (955, 27), (1004, 18), (1015, 18), (1024, 45), (1226, 3), (1227, 1)]

def reductionPivot359 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound359 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode179).moment H =
      Integer.Sparse.eval reductionProjection359 (momentVector H) := by
  have heq : reductionPivot359 = (fun u v => (normalNode179).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode179).moment H = injectiveMoment H reductionPivot359 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode179).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot359 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot359 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 18, 2, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot359 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection357, reductionProjection358, reductionProjection343, reductionProjection348, reductionProjection300] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot359 (0 : Fin 5)) = canonicalInput808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection357 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound808 hH))).trans (reductionSound357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot359 (1 : Fin 5)) = canonicalInput680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection358 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound680 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot359 (2 : Fin 5)) = canonicalInput670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection343 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound670 hH))).trans (reductionSound343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot359 (3 : Fin 5)) = (normalNode181).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection348 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot359 (4 : Fin 5)) = canonicalInput666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection300 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot359 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound666 hH))).trans (reductionSound300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode179).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot359 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode179).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot359 (j : Fin 5)))
      1 18 18 1 ![2, 18, 2, 2, 2] ![9, 1, 9, 9, 9] reductionProjection359 ![reductionProjection357, reductionProjection358, reductionProjection343, reductionProjection348, reductionProjection300]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection360 : Integer.Sparse (Fin 1613) := [(87, 3), (90, -1), (630, -9), (640, -9), (698, -2), (1024, -9), (1226, -2), (1227, -1)]

def reductionPivot360 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 1, 1, -3], ![2, -1, -2, 1]]

theorem reductionSound360 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode180).moment H =
      Integer.Sparse.eval reductionProjection360 (momentVector H) := by
  have heq : reductionPivot360 = (fun u v => (normalNode180).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode180).moment H = injectiveMoment H reductionPivot360 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode180).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot360 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot360 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot360 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection352, reductionProjection304, reductionProjection299, reductionProjection289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot360 (0 : Fin 4)) = canonicalInput809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection352 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound809 hH))).trans (reductionSound352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot360 (1 : Fin 4)) = canonicalInput681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound681 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot360 (2 : Fin 4)) = canonicalInput674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound674 hH))).trans (reductionSound299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot360 (3 : Fin 4)) = canonicalInput673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot360 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound673 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode180).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot360 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode180).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot360 (j : Fin 4)))
      2 18 18 2 ![1, 9, 1, 1] ![18, 2, 18, 18] reductionProjection360 ![reductionProjection352, reductionProjection304, reductionProjection299, reductionProjection289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection361 : Integer.Sparse (Fin 1613) := [(76, -3), (88, 1), (90, 2), (698, 1), (1226, 2)]

def reductionPivot361 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 2, -1], ![1, -3, 1, 1], ![2, 2, -3, -1]]

theorem reductionSound361 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7067).moment H =
      Integer.Sparse.eval reductionProjection361 (momentVector H) := by
  have heq : reductionPivot361 = (fun u v => (normalNode7067).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7067).moment H = injectiveMoment H reductionPivot361 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7067).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7067).entries)).symm
  have hshape : reductionPivot361 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot361 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot361 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection108, oldProjection103, oldProjection109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot361 (0 : Fin 3)) = canonicalInput772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot361 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot361 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound772 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot361 (1 : Fin 3)) = canonicalInput11584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot361 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot361 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11584 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot361 (2 : Fin 3)) = canonicalInput11683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot361 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot361 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11683 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7067).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot361 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7067).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot361 (j : Fin 3)))
      3 9 9 3 ![3, 1, 3] ![3, 9, 3] reductionProjection361 ![oldProjection108, oldProjection103, oldProjection109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection362 : Integer.Sparse (Fin 1613) := [(90, -1), (698, 2), (700, 1), (1226, 1)]

def reductionPivot362 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -2, 1, 2], ![0, 1, 2, -3], ![0, 2, -3, 1]]

theorem reductionSound362 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7080).moment H =
      Integer.Sparse.eval reductionProjection362 (momentVector H) := by
  have heq : reductionPivot362 = (fun u v => (normalNode7080).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7080).moment H = injectiveMoment H reductionPivot362 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7080).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot362 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot362 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot362 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection21, oldProjection107, oldProjection109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot362 (0 : Fin 3)) = canonicalInput23873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot362 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection21 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot362 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection21 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23873 hH))).trans (oldProjectionSound21 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot362 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5804 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot362 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection107 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot362 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5804 hH))).trans (oldProjectionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot362 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5795 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot362 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot362 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5795 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7080).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot362 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7080).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot362 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection362 ![oldProjection21, oldProjection107, oldProjection109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection363 : Integer.Sparse (Fin 1613) := [(76, 3), (88, -1), (90, -1), (698, -3), (700, -2), (1226, -2)]

def reductionPivot363 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -2, 1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound363 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6873).moment H =
      Integer.Sparse.eval reductionProjection363 (momentVector H) := by
  have heq : reductionPivot363 = (fun u v => (normalNode6873).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6873).moment H = injectiveMoment H reductionPivot363 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6873).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot363 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot363 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 3, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot363 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1018, reductionProjection361, oldProjection109, reductionProjection362] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot363 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2478 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2478 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot363 (1 : Fin 4)) = canonicalInput13807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection361 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13807 hH))).trans (reductionSound361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot363 (2 : Fin 4)) = canonicalInput13924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13924 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot363 (3 : Fin 4)) = canonicalInput13927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection362 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot363 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13927 hH))).trans (reductionSound362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6873).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot363 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6873).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot363 (j : Fin 4)))
      2 18 18 2 ![9, 9, 3, 9] ![2, 2, 6, 2] reductionProjection363 ![oldProjection1018, reductionProjection361, oldProjection109, reductionProjection362]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection364 : Integer.Sparse (Fin 1613) := [(88, 1), (90, 2), (698, 2), (700, 1), (1226, 2), (1227, 1)]

def reductionPivot364 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 1, 2], ![0, 2, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound364 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6940).moment H =
      Integer.Sparse.eval reductionProjection364 (momentVector H) := by
  have heq : reductionPivot364 = (fun u v => (normalNode6940).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6940).moment H = injectiveMoment H reductionPivot364 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6940).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot364 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot364 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot364 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection108, oldProjection229, oldProjection107] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot364 (0 : Fin 3)) = canonicalInput12775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot364 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot364 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12775 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot364 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5780 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot364 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection229 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot364 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5780 hH))).trans (oldProjectionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot364 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5796 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot364 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection107 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot364 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5796 hH))).trans (oldProjectionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6940).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot364 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6940).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot364 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection364 ![oldProjection108, oldProjection229, oldProjection107]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection365 : Integer.Sparse (Fin 1613) := [(88, 16), (90, 32), (94, 1), (698, 32), (1226, 48), (1251, -3)]

def reductionPivot365 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 1, 2], ![0, 2, 1, -3], ![1, 1, -3, 1]]

theorem reductionSound365 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6941).moment H =
      Integer.Sparse.eval reductionProjection365 (momentVector H) := by
  have heq : reductionPivot365 = (fun u v => (normalNode6941).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6941).moment H = injectiveMoment H reductionPivot365 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6941).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot365 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot365 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot365 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection108, oldProjection109, oldProjection226] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot365 (0 : Fin 3)) = canonicalInput12784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot365 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot365 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12784 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot365 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5795 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot365 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot365 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5795 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot365 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5800 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot365 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection226 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot365 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5800 hH))).trans (oldProjectionSound226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6941).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot365 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6941).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot365 (j : Fin 3)))
      3 144 144 3 ![3, 3, 48] ![48, 48, 3] reductionProjection365 ![oldProjection108, oldProjection109, oldProjection226]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection366 : Integer.Sparse (Fin 1613) := [(87, 96), (88, -32), (90, -96), (94, -1), (698, -128), (700, -16), (1226, -144), (1227, -48), (1251, 3)]

def reductionPivot366 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -2, 1, 2], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound366 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6872).moment H =
      Integer.Sparse.eval reductionProjection366 (momentVector H) := by
  have heq : reductionPivot366 = (fun u v => (normalNode6872).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6872).moment H = injectiveMoment H reductionPivot366 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6872).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot366 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot366 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot366 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, reductionProjection304, reductionProjection364, reductionProjection365] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot366 (0 : Fin 4)) = canonicalInput4859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4859 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot366 (1 : Fin 4)) = canonicalInput13678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13678 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot366 (2 : Fin 4)) = (normalNode6940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection364 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot366 (3 : Fin 4)) = canonicalInput13846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot366 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13846 hH))).trans (reductionSound365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6872).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot366 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6872).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot366 (j : Fin 4)))
      2 288 288 2 ![9, 9, 9, 144] ![32, 32, 32, 2] reductionProjection366 ![reductionProjection304, reductionProjection304, reductionProjection364, reductionProjection365]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection367 : Integer.Sparse (Fin 1613) := [(81, 24), (90, -8), (94, -1), (698, -32), (1226, -8), (1227, -8), (1251, 3)]

def reductionPivot367 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -3, 1]]

theorem reductionSound367 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4394).moment H =
      Integer.Sparse.eval reductionProjection367 (momentVector H) := by
  have heq : reductionPivot367 = (fun u v => (normalNode4394).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4394).moment H = injectiveMoment H reductionPivot367 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4394).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot367 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot367 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 3, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot367 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection851, oldProjection229, oldProjection1249, oldProjection1283] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot367 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2460 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection851 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2460 hH))).trans (oldProjectionSound851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot367 (1 : Fin 4)) = canonicalInput8675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection229 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8675 hH))).trans (oldProjectionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot367 (2 : Fin 4)) = canonicalInput8848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8848 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot367 (3 : Fin 4)) = canonicalInput8851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1283 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot367 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8851 hH))).trans (oldProjectionSound1283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4394).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot367 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4394).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot367 (j : Fin 4)))
      2 144 144 2 ![9, 3, 144, 144] ![16, 48, 1, 1] reductionProjection367 ![oldProjection851, oldProjection229, oldProjection1249, oldProjection1283]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection368 : Integer.Sparse (Fin 1613) := [(79, -3), (87, -3), (88, 1), (90, 1), (1226, 1)]

def reductionPivot368 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![2, -2, -2, 2]]

theorem reductionSound368 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9033).moment H =
      Integer.Sparse.eval reductionProjection368 (momentVector H) := by
  have heq : reductionPivot368 = (fun u v => (normalNode9033).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9033).moment H = injectiveMoment H reductionPivot368 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9033).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9033).entries)).symm
  have hshape : reductionPivot368 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot368 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot368 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection110, oldProjection114, oldProjection108] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot368 (0 : Fin 3)) = canonicalInput5907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot368 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot368 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5907 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot368 (1 : Fin 3)) = canonicalInput19107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot368 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot368 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19107 hH))).trans (oldProjectionSound114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot368 (2 : Fin 3)) = canonicalInput19136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot368 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot368 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19136 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9033).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot368 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9033).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot368 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection368 ![oldProjection110, oldProjection114, oldProjection108]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection369 : Integer.Sparse (Fin 1613) := [(87, -3), (88, 2), (90, 2), (1226, 2)]

def reductionPivot369 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![-1, 3, -1, -1], ![3, -2, -2, 1]]

theorem reductionSound369 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7918).moment H =
      Integer.Sparse.eval reductionProjection369 (momentVector H) := by
  have heq : reductionPivot369 = (fun u v => (normalNode7918).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7918).moment H = injectiveMoment H reductionPivot369 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7918).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7918).entries)).symm
  have hshape : reductionPivot369 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot369 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot369 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection108, oldProjection108, oldProjection114] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot369 (0 : Fin 3)) = canonicalInput5859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot369 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot369 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5859 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot369 (1 : Fin 3)) = canonicalInput19096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot369 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot369 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19096 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot369 (2 : Fin 3)) = canonicalInput19107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot369 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot369 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19107 hH))).trans (oldProjectionSound114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7918).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot369 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7918).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot369 (j : Fin 3)))
      3 9 9 3 ![3, 3, 1] ![3, 3, 9] reductionProjection369 ![oldProjection108, oldProjection108, oldProjection114]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection370 : Integer.Sparse (Fin 1613) := [(79, 3), (88, -2), (90, -2), (1226, -2)]

def reductionPivot370 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-3, 1, 1, 1], ![0, 1, 0, -1], ![1, 1, -3, 1], ![2, -2, 2, -2]]

theorem reductionSound370 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode184).moment H =
      Integer.Sparse.eval reductionProjection370 (momentVector H) := by
  have heq : reductionPivot370 = (fun u v => (normalNode184).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode184).moment H = injectiveMoment H reductionPivot370 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode184).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot370 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot370 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot370 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection368, oldProjection114, reductionProjection368, reductionProjection369] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot370 (0 : Fin 4)) = canonicalInput516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection368 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound516 hH))).trans (reductionSound368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot370 (1 : Fin 4)) = canonicalInput686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound686 hH))).trans (oldProjectionSound114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot370 (2 : Fin 4)) = canonicalInput690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection368 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound690 hH))).trans (reductionSound368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot370 (3 : Fin 4)) = canonicalInput691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection369 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot370 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound691 hH))).trans (reductionSound369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode184).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot370 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode184).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot370 (j : Fin 4)))
      2 9 9 2 ![9, 1, 9, 9] ![1, 9, 1, 1] reductionProjection370 ![reductionProjection368, oldProjection114, reductionProjection368, reductionProjection369]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection371 : Integer.Sparse (Fin 1613) := [(76, -48), (79, -96), (81, -48), (87, -144), (88, 112), (90, 208), (94, 3), (630, 144), (640, 144), (698, 272), (700, 48), (1024, 144), (1226, 288), (1227, 80), (1251, -9)]

def reductionPivot371 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-3, 1, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3], ![2, -1, -2, 1]]

theorem reductionSound371 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode182).moment H =
      Integer.Sparse.eval reductionProjection371 (momentVector H) := by
  have heq : reductionPivot371 = (fun u v => (normalNode182).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode182).moment H = injectiveMoment H reductionPivot371 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode182).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot371 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot371 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 288, 144, 9] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot371 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection363, reductionProjection360, reductionProjection366, reductionProjection367, reductionProjection370] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot371 (0 : Fin 5)) = canonicalInput509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection363 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound509 hH))).trans (reductionSound363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot371 (1 : Fin 5)) = (normalNode180).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection360 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot371 (2 : Fin 5)) = canonicalInput682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection366 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound682 hH))).trans (reductionSound366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot371 (3 : Fin 5)) = canonicalInput683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection367 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound683 hH))).trans (reductionSound367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot371 (4 : Fin 5)) = canonicalInput684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection370 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot371 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound684 hH))).trans (reductionSound370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode182).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot371 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode182).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot371 (j : Fin 5)))
      1 288 288 1 ![18, 18, 288, 144, 9] ![16, 16, 1, 2, 32] reductionProjection371 ![reductionProjection363, reductionProjection360, reductionProjection366, reductionProjection367, reductionProjection370]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection372 : Integer.Sparse (Fin 1613) := [(87, 3), (90, -1), (698, -2), (763, -9), (955, -9), (1024, -9), (1226, -2), (1227, -1)]

def reductionPivot372 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound372 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4217).moment H =
      Integer.Sparse.eval reductionProjection372 (momentVector H) := by
  have heq : reductionPivot372 = (fun u v => (normalNode4217).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4217).moment H = injectiveMoment H reductionPivot372 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4217).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot372 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot372 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot372 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, reductionProjection289, reductionProjection342, reductionProjection197] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot372 (0 : Fin 4)) = canonicalInput18158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18158 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot372 (1 : Fin 4)) = canonicalInput8957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8957 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot372 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot372 (3 : Fin 4)) = canonicalInput8261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot372 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8261 hH))).trans (reductionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4217).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot372 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4217).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot372 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection372 ![reductionProjection304, reductionProjection289, reductionProjection342, reductionProjection197]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection373 : Integer.Sparse (Fin 1613) := [(87, 6), (90, -2), (698, -4), (955, -9), (1226, -4), (1227, -2), (1341, -9)]

def reductionPivot373 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound373 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7689).moment H =
      Integer.Sparse.eval reductionProjection373 (momentVector H) := by
  have heq : reductionPivot373 = (fun u v => (normalNode7689).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7689).moment H = injectiveMoment H reductionPivot373 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7689).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot373 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot373 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot373 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, reductionProjection304, reductionProjection354, reductionProjection342] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot373 (0 : Fin 4)) = canonicalInput23968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23968 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot373 (1 : Fin 4)) = (normalNode7838).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot373 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1341).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection354 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot373 (3 : Fin 4)) = canonicalInput15105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot373 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15105 hH))).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7689).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot373 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7689).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot373 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection373 ![reductionProjection304, reductionProjection304, reductionProjection354, reductionProjection342]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection374 : Integer.Sparse (Fin 1613) := [(66, 9), (87, -12), (90, 4), (698, 8), (763, 18), (955, 18), (1024, 36), (1226, 8), (1227, 4), (1341, 9)]

def reductionPivot374 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-3, 1, 1, 1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound374 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode183).moment H =
      Integer.Sparse.eval reductionProjection374 (momentVector H) := by
  have heq : reductionPivot374 = (fun u v => (normalNode183).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode183).moment H = injectiveMoment H reductionPivot374 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode183).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot374 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot374 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1, 2, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot374 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection372, reductionProjection342, reductionProjection348, reductionProjection373, reductionProjection372] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot374 (0 : Fin 5)) = canonicalInput515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection372 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound515 hH))).trans (reductionSound372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot374 (1 : Fin 5)) = canonicalInput685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound685 hH))).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot374 (2 : Fin 5)) = canonicalInput687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection348 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound687 hH))).trans (reductionSound348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot374 (3 : Fin 5)) = canonicalInput688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection373 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound688 hH))).trans (reductionSound373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot374 (4 : Fin 5)) = canonicalInput689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection372 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot374 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound689 hH))).trans (reductionSound372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode183).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot374 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode183).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot374 (j : Fin 5)))
      1 18 18 1 ![18, 1, 2, 18, 18] ![1, 18, 9, 1, 1] reductionProjection374 ![reductionProjection372, reductionProjection342, reductionProjection348, reductionProjection373, reductionProjection372]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection375 : Integer.Sparse (Fin 1613) := [(76, -1), (683, -1), (697, -1), (1323, -1)]

def reductionPivot375 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, -1, 3], ![-1, 3, -2], ![1, -2, 1], ![1, 1, -2]]

theorem reductionSound375 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3008).moment H =
      Integer.Sparse.eval reductionProjection375 (momentVector H) := by
  have heq : reductionPivot375 = (fun u v => (normalNode3008).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3008).moment H = injectiveMoment H reductionPivot375 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3008).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot375 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot375 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot375 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection262, oldProjection184, oldProjection160, oldProjection103] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot375 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node262⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection262 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot375 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot375 (2 : Fin 4)) = canonicalInput5811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5811 hH))).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot375 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot375 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2699 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3008).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot375 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3008).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot375 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection375 ![oldProjection262, oldProjection184, oldProjection160, oldProjection103]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection376 : Integer.Sparse (Fin 1613) := [(73, 1)]

theorem reductionSound376 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code73).moment H =
      Integer.Sparse.eval reductionProjection376 (momentVector H) := by
  have hc : coordinates (73 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code73) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection376, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection377 : Integer.Sparse (Fin 1613) := [(73, -1), (76, -1), (84, -1), (1052, -1)]

def reductionPivot377 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, 1, 2], ![0, -2, 2], ![0, 3, -3], ![2, -1, -1]]

theorem reductionSound377 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode201).moment H =
      Integer.Sparse.eval reductionProjection377 (momentVector H) := by
  have heq : reductionPivot377 = (fun u v => (normalNode201).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode201).moment H = injectiveMoment H reductionPivot377 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode201).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot377 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot377 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot377 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection198, reductionProjection146, oldProjection103, reductionProjection376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot377 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot377 (1 : Fin 4)) = canonicalInput747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound747 hH))).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot377 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot377 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code73).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot377 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode201).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot377 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode201).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot377 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection377 ![oldProjection198, reductionProjection146, oldProjection103, reductionProjection376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection378 : Integer.Sparse (Fin 1613) := [(11, 48), (13, 48), (73, 48), (76, 96), (84, 48), (88, -16), (90, -16), (94, -1), (231, 48), (241, -16), (243, -16), (683, 48), (697, 48), (698, -32), (1052, 48), (1226, -32), (1251, 3), (1323, 48)]

def reductionPivot378 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-3, 1, 2], ![0, -2, 2], ![1, -1, 0], ![1, 2, -3], ![2, -1, -1]]

theorem reductionSound378 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode185).moment H =
      Integer.Sparse.eval reductionProjection378 (momentVector H) := by
  have heq : reductionPivot378 = (fun u v => (normalNode185).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode185).moment H = injectiveMoment H reductionPivot378 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode185).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot378 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot378 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 2, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot378 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection34, reductionProjection375, oldProjection103, reductionProjection377, oldProjection360] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot378 (0 : Fin 5)) = (normalNode13).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection34 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection34 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound34 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot378 (1 : Fin 5)) = canonicalInput713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection375 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound713 hH))).trans (reductionSound375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot378 (2 : Fin 5)) = canonicalInput724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound724 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot378 (3 : Fin 5)) = canonicalInput725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection377 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound725 hH))).trans (reductionSound377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot378 (4 : Fin 5)) = canonicalInput726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection360 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot378 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound726 hH))).trans (oldProjectionSound360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode185).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot378 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode185).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot378 (j : Fin 5)))
      1 96 96 1 ![2, 2, 1, 2, 96] ![48, 48, 96, 48, 1] reductionProjection378 ![reductionProjection34, reductionProjection375, oldProjection103, reductionProjection377, oldProjection360]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection379 : Integer.Sparse (Fin 1613) := [(68, -1), (84, -1), (682, -1), (683, -1)]

def reductionPivot379 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 1, 2], ![-1, 2, -1], ![1, -3, 2], ![3, -1, -2]]

theorem reductionSound379 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode191).moment H =
      Integer.Sparse.eval reductionProjection379 (momentVector H) := by
  have heq : reductionPivot379 = (fun u v => (normalNode191).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode191).moment H = injectiveMoment H reductionPivot379 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode191).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot379 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot379 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot379 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection160, reductionProjection171, oldProjection159, reductionProjection146] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot379 (0 : Fin 4)) = canonicalInput810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound810 hH))).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot379 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code68).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection171 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot379 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw678 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical678 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot379 (3 : Fin 4)) = canonicalInput718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot379 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound718 hH))).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode191).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot379 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode191).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot379 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection379 ![oldProjection160, reductionProjection171, oldProjection159, reductionProjection146]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection380 : Integer.Sparse (Fin 1613) := [(11, 12), (19, 1), (42, -8), (68, 24), (72, 12), (79, 12), (84, 24), (88, -4), (90, -8), (91, -4), (94, 1), (243, -12), (682, 24), (683, 24), (698, -8), (700, -16), (701, -4), (704, -8), (1226, -8)]

def reductionPivot380 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-3, 1, 2], ![0, 1, -1], ![0, 1, -1], ![1, -3, 2], ![3, -1, -2]]

theorem reductionSound380 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode186).moment H =
      Integer.Sparse.eval reductionProjection380 (momentVector H) := by
  have heq : reductionPivot380 = (fun u v => (normalNode186).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode186).moment H = injectiveMoment H reductionPivot380 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode186).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot380 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot380 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 2, 2, 48, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot380 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection51, reductionProjection379, reductionProjection379, oldProjection354, oldProjection373] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot380 (0 : Fin 5)) = canonicalInput132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection51 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection51 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound132 hH))).trans (reductionSound51 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot380 (1 : Fin 5)) = (normalNode191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection379 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot380 (2 : Fin 5)) = canonicalInput733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection379 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound733 hH))).trans (reductionSound379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot380 (3 : Fin 5)) = canonicalInput736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection354 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound736 hH))).trans (oldProjectionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot380 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node373⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection373 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot380 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode186).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot380 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode186).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot380 (j : Fin 5)))
      1 24 96 4 ![96, 2, 2, 48, 96] ![1, 48, 48, 2, 1] reductionProjection380 ![reductionProjection51, reductionProjection379, reductionProjection379, oldProjection354, oldProjection373]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection381 : Integer.Sparse (Fin 1613) := [(67, 1)]

theorem reductionSound381 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code67).moment H =
      Integer.Sparse.eval reductionProjection381 (momentVector H) := by
  have hc : coordinates (67 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code67) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection381, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection382 : Integer.Sparse (Fin 1613) := [(76, -1), (79, -1), (81, -1), (84, -1)]

def reductionPivot382 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 1, 2], ![0, 2, -2], ![1, -3, 2], ![2, -1, -1]]

theorem reductionSound382 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode227).moment H =
      Integer.Sparse.eval reductionProjection382 (momentVector H) := by
  have heq : reductionPivot382 = (fun u v => (normalNode227).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode227).moment H = injectiveMoment H reductionPivot382 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode227).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot382 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot382 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot382 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection103, reductionProjection146, oldProjection111, oldProjection110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot382 (0 : Fin 4)) = canonicalInput827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound827 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot382 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code84).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot382 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot382 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot382 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode227).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot382 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode227).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot382 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection382 ![oldProjection103, reductionProjection146, oldProjection111, oldProjection110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection383 : Integer.Sparse (Fin 1613) := [(0, 1), (13, 240), (67, -480), (76, 480), (79, 240), (81, 480), (82, 240), (84, 240), (87, 240), (88, -80), (90, -160), (94, -15), (228, 240), (686, 240), (698, -240), (1058, 240), (1226, -240), (1227, -80), (1251, -20)]

def reductionPivot383 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-3, 1, 2], ![0, 1, -1], ![1, -3, 2], ![1, 1, -2], ![2, -1, -1]]

theorem reductionSound383 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode187).moment H =
      Integer.Sparse.eval reductionProjection383 (momentVector H) := by
  have heq : reductionPivot383 = (fun u v => (normalNode187).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode187).moment H = injectiveMoment H reductionPivot383 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode187).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot383 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot383 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 480, 2, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot383 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection47, reductionProjection381, oldProjection356, reductionProjection382, oldProjection375] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot383 (0 : Fin 5)) = canonicalInput135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection47 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection47 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound135 hH))).trans (reductionSound47 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot383 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code67).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot383 (2 : Fin 5)) = canonicalInput734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection356 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound734 hH))).trans (oldProjectionSound356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot383 (3 : Fin 5)) = canonicalInput737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection382 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound737 hH))).trans (reductionSound382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot383 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw774 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection375 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot383 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical774 hH))).trans (oldProjectionSound375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode187).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot383 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode187).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot383 (j : Fin 5)))
      1 480 480 1 ![2, 1, 480, 2, 6] ![240, 480, 1, 240, 80] reductionProjection383 ![reductionProjection47, reductionProjection381, oldProjection356, reductionProjection382, oldProjection375]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

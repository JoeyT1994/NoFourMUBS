import NoFourMUBs.Step2.SOS.Canonical003
import NoFourMUBs.Step2.SOS.Canonical004
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical073
import NoFourMUBs.Step2.SOS.Canonical082
import NoFourMUBs.Step2.SOS.Canonical112
import NoFourMUBs.Step2.SOS.Canonical113
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical169
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical103
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical149
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical166
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical167
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical181
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical258
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection192 : Integer.Sparse (Fin 1613) := [(660, 1)]

theorem reductionSound192 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code660).moment H =
      Integer.Sparse.eval reductionProjection192 (momentVector H) := by
  have hc : coordinates (660 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code660) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection192, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection193 : Integer.Sparse (Fin 1613) := [(660, -1), (668, -1), (799, -1), (1183, -1)]

def reductionPivot193 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 3, -3, -1]]

theorem reductionSound193 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3742).moment H =
      Integer.Sparse.eval reductionProjection193 (momentVector H) := by
  have heq : reductionPivot193 = (fun u v => (normalNode3742).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3742).moment H = injectiveMoment H reductionPivot193 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3742).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot193 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot193 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot193 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection182, reductionProjection191, reductionProjection192, oldProjection521] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot193 (0 : Fin 4)) = canonicalInput4703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4703 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot193 (1 : Fin 4)) = canonicalInput7203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7203 hH))).trans (reductionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot193 (2 : Fin 4)) = canonicalInput7289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7289 hH))).trans (reductionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot193 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3318 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection521 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot193 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3318 hH))).trans (oldProjectionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3742).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot193 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3742).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot193 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection193 ![reductionProjection182, reductionProjection191, reductionProjection192, oldProjection521]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection194 : Integer.Sparse (Fin 1613) := [(0, -2), (28, -1440), (94, -5), (243, 80), (403, 720), (430, 720), (660, 720), (668, 720), (682, -240), (697, -240), (698, 240), (704, 80), (761, 1440), (766, 720), (799, 720), (806, 720), (865, 720), (1052, -240), (1059, 80), (1068, 720), (1183, 720), (1197, 720), (1217, -240), (1221, -240), (1226, 80), (1227, 80), (1251, -15)]

def reductionPivot194 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![2, -1, 0, -1]]

theorem reductionSound194 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode83).moment H =
      Integer.Sparse.eval reductionProjection194 (momentVector H) := by
  have heq : reductionPivot194 = (fun u v => (normalNode83).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode83).moment H = injectiveMoment H reductionPivot194 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode83).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot194 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot194 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1440, 2, 1, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot194 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection187, oldProjection2369, reductionProjection190, reductionProjection180, reductionProjection193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot194 (0 : Fin 5)) = canonicalInput420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection187 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound420 hH))).trans (reductionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot194 (1 : Fin 5)) = canonicalInput264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound264 hH))).trans (oldProjectionSound2369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot194 (2 : Fin 5)) = (normalNode87).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection190 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot194 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code28).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection180 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot194 (4 : Fin 5)) = canonicalInput248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection193 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot194 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound248 hH))).trans (reductionSound193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode83).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot194 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode83).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot194 (j : Fin 5)))
      1 1440 1440 1 ![2, 1440, 2, 1, 2] ![720, 1, 720, 1440, 720] reductionProjection194 ![reductionProjection187, oldProjection2369, reductionProjection190, reductionProjection180, reductionProjection193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection195 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (426, -720), (698, -80), (700, -80), (761, -720), (1198, -720), (1219, 240), (1251, -10)]

def reductionPivot195 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -2, 0, 1]]

theorem reductionSound195 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5542).moment H =
      Integer.Sparse.eval reductionProjection195 (momentVector H) := by
  have heq : reductionPivot195 = (fun u v => (normalNode5542).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5542).moment H = injectiveMoment H reductionPivot195 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5542).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot195 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot195 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot195 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1352, oldProjection473, reductionProjection156, reductionProjection178] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot195 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot195 (1 : Fin 4)) = canonicalInput10846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10846 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot195 (2 : Fin 4)) = canonicalInput10750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection156 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10750 hH))).trans (reductionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot195 (3 : Fin 4)) = canonicalInput10742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot195 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10742 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5542).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot195 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5542).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot195 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection195 ![oldProjection1352, oldProjection473, reductionProjection156, reductionProjection178]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection196 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 5), (243, -240), (682, 240), (697, 240), (698, -240), (700, -80), (704, -160), (1219, 240), (1226, -240), (1227, -160), (1251, 15)]

def reductionPivot196 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 0, 1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -2, 1]]

theorem reductionSound196 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5360).moment H =
      Integer.Sparse.eval reductionProjection196 (momentVector H) := by
  have heq : reductionPivot196 = (fun u v => (normalNode5360).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5360).moment H = injectiveMoment H reductionPivot196 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5360).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot196 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot196 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot196 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection816, oldProjection800, oldProjection815, oldProjection1093] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot196 (0 : Fin 4)) = canonicalInput7874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection816 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7874 hH))).trans (oldProjectionSound816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot196 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4785 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection800 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4785 hH))).trans (oldProjectionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot196 (2 : Fin 4)) = canonicalInput10787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10787 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot196 (3 : Fin 4)) = canonicalInput10789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1093 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot196 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1093 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10789 hH))).trans (oldProjectionSound1093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5360).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot196 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5360).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot196 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 720, 72] ![20, 2, 2, 20] reductionProjection196 ![oldProjection816, oldProjection800, oldProjection815, oldProjection1093]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection197 : Integer.Sparse (Fin 1613) := [(763, 1)]

theorem reductionSound197 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code763).moment H =
      Integer.Sparse.eval reductionProjection197 (momentVector H) := by
  have hc : coordinates (763 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code763) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection197, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection198 : Integer.Sparse (Fin 1613) := [(432, -1), (763, -1), (766, -1), (1234, -1)]

def reductionPivot198 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]

theorem reductionSound198 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode89).moment H =
      Integer.Sparse.eval reductionProjection198 (momentVector H) := by
  have heq : reductionPivot198 = (fun u v => (normalNode89).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode89).moment H = injectiveMoment H reductionPivot198 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode89).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot198 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot198 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot198 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection197, reductionProjection150, reductionProjection181, reductionProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot198 (0 : Fin 4)) = canonicalInput3851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3851 hH))).trans (reductionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot198 (1 : Fin 4)) = canonicalInput305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound305 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot198 (2 : Fin 4)) = canonicalInput254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection181 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound254 hH))).trans (reductionSound181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot198 (3 : Fin 4)) = canonicalInput252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection157 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot198 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound252 hH))).trans (reductionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode89).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot198 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode89).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot198 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection198 ![reductionProjection197, reductionProjection150, reductionProjection181, reductionProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection199 : Integer.Sparse (Fin 1613) := [(29, 1)]

theorem reductionSound199 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code29).moment H =
      Integer.Sparse.eval reductionProjection199 (momentVector H) := by
  have hc : coordinates (29 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code29) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection199, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection200 : Integer.Sparse (Fin 1613) := [(426, -1), (483, -1), (799, -1), (1187, -1)]

def reductionPivot200 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 3, -3, -1]]

theorem reductionSound200 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4190).moment H =
      Integer.Sparse.eval reductionProjection200 (momentVector H) := by
  have heq : reductionPivot200 = (fun u v => (normalNode4190).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4190).moment H = injectiveMoment H reductionPivot200 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4190).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot200 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot200 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot200 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection182, reductionProjection158, oldProjection487, oldProjection473] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot200 (0 : Fin 4)) = canonicalInput4703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4703 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot200 (1 : Fin 4)) = canonicalInput8166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection158 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8166 hH))).trans (reductionSound158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot200 (2 : Fin 4)) = canonicalInput8279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8279 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot200 (3 : Fin 4)) = canonicalInput8281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot200 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8281 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4190).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot200 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4190).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot200 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection200 ![reductionProjection182, reductionProjection158, oldProjection487, oldProjection473]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection201 : Integer.Sparse (Fin 1613) := [(0, -3), (29, -1440), (243, 240), (426, 1440), (432, 720), (483, 720), (682, -240), (697, -240), (698, 320), (700, 160), (704, 160), (761, 720), (763, 720), (766, 720), (799, 720), (1187, 720), (1198, 720), (1219, -480), (1226, 240), (1227, 160), (1234, 720), (1251, -5)]

def reductionPivot201 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, -1, 0, -1]]

theorem reductionSound201 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode84).moment H =
      Integer.Sparse.eval reductionProjection201 (momentVector H) := by
  have heq : reductionPivot201 = (fun u v => (normalNode84).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode84).moment H = injectiveMoment H reductionPivot201 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode84).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot201 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot201 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 2, 1, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot201 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection195, reductionProjection196, reductionProjection198, reductionProjection199, reductionProjection200] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot201 (0 : Fin 5)) = canonicalInput421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection195 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound421 hH))).trans (reductionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot201 (1 : Fin 5)) = canonicalInput265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection196 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound265 hH))).trans (reductionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot201 (2 : Fin 5)) = (normalNode89).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection198 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot201 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code29).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection199 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot201 (4 : Fin 5)) = canonicalInput249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection200 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot201 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound249 hH))).trans (reductionSound200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode84).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot201 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode84).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot201 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 2, 1, 2] ![1, 1, 720, 1440, 720] reductionProjection201 ![reductionProjection195, reductionProjection196, reductionProjection198, reductionProjection199, reductionProjection200]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection202 : Integer.Sparse (Fin 1613) := [(913, 1)]

theorem reductionSound202 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code913).moment H =
      Integer.Sparse.eval reductionProjection202 (momentVector H) := by
  have hc : coordinates (913 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code913) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection202, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection203 : Integer.Sparse (Fin 1613) := [(500, -1), (799, -1), (913, -1), (1234, -1)]

def reductionPivot203 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-3, -1, 1, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]

theorem reductionSound203 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode88).moment H =
      Integer.Sparse.eval reductionProjection203 (momentVector H) := by
  have heq : reductionPivot203 = (fun u v => (normalNode88).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode88).moment H = injectiveMoment H reductionPivot203 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode88).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot203 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot203 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot203 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection202, reductionProjection142, reductionProjection182, reductionProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot203 (0 : Fin 4)) = canonicalInput1485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1485 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot203 (1 : Fin 4)) = canonicalInput301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection142 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection142 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound301 hH))).trans (reductionSound142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot203 (2 : Fin 4)) = canonicalInput253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound253 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot203 (3 : Fin 4)) = canonicalInput252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection157 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot203 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound252 hH))).trans (reductionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode88).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot203 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode88).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot203 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection203 ![reductionProjection202, reductionProjection142, reductionProjection182, reductionProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection204 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 25), (1251, 30), (1270, -180), (1333, -180)]

def reductionPivot204 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![1, -1, -1, 1]]

theorem reductionSound204 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode11080).moment H =
      Integer.Sparse.eval reductionProjection204 (momentVector H) := by
  have heq : reductionPivot204 = (fun u v => (normalNode11080).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11080).moment H = injectiveMoment H reductionPivot204 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11080).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot204 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot204 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 360, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot204 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1350, oldProjection1350, oldProjection924, oldProjection720] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot204 (0 : Fin 4)) = canonicalInput28032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1350 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28032 hH))).trans (oldProjectionSound1350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot204 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1350⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1350 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot204 (2 : Fin 4)) = canonicalInput22729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection924 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22729 hH))).trans (oldProjectionSound924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot204 (3 : Fin 4)) = canonicalInput22727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot204 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22727 hH))).trans (oldProjectionSound720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11080).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot204 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11080).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot204 (j : Fin 4)))
      2 360 360 2 ![360, 360, 1, 1] ![1, 1, 360, 360] reductionProjection204 ![oldProjection1350, oldProjection1350, oldProjection924, oldProjection720]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection205 : Integer.Sparse (Fin 1613) := [(30, 1)]

theorem reductionSound205 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code30).moment H =
      Integer.Sparse.eval reductionProjection205 (momentVector H) := by
  have hc : coordinates (30 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code30) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection205, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection206 : Integer.Sparse (Fin 1613) := [(1340, 1)]

theorem reductionSound206 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1340).moment H =
      Integer.Sparse.eval reductionProjection206 (momentVector H) := by
  have hc : coordinates (1340 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1340) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection206, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection207 : Integer.Sparse (Fin 1613) := [(682, 2), (1270, -3), (1321, 2), (1340, -3), (1389, 2)]

def reductionPivot207 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound207 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode96).moment H =
      Integer.Sparse.eval reductionProjection207 (momentVector H) := by
  have heq : reductionPivot207 = (fun u v => (normalNode96).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode96).moment H = injectiveMoment H reductionPivot207 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode96).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot207 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot207 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot207 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection720, oldProjection941, oldProjection941, reductionProjection206] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot207 (0 : Fin 4)) = canonicalInput432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound432 hH))).trans (oldProjectionSound720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot207 (1 : Fin 4)) = canonicalInput312.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection941 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound312 hH))).trans (oldProjectionSound941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot207 (2 : Fin 4)) = canonicalInput307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection941 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound307 hH))).trans (oldProjectionSound941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot207 (3 : Fin 4)) = canonicalInput306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection206 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot207 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound306 hH))).trans (reductionSound206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode96).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot207 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode96).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot207 (j : Fin 4)))
      2 6 6 2 ![1, 3, 3, 1] ![6, 2, 2, 6] reductionProjection207 ![oldProjection720, oldProjection941, oldProjection941, reductionProjection206]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection208 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -20), (20, 5), (30, -720), (94, -110), (682, -480), (1251, -160), (1270, 720), (1321, -480), (1333, 1080), (1340, 360), (1389, -480)]

def reductionPivot208 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound208 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode91).moment H =
      Integer.Sparse.eval reductionProjection208 (momentVector H) := by
  have heq : reductionPivot208 = (fun u v => (normalNode91).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode91).moment H = injectiveMoment H reductionPivot208 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode91).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot208 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot208 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1, 1440, 1440, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot208 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection204, reductionProjection205, oldProjection2833, oldProjection2833, reductionProjection207] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot208 (0 : Fin 5)) = canonicalInput425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection204 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound425 hH))).trans (reductionSound204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot208 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code30).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection205 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot208 (2 : Fin 5)) = canonicalInput280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound280 hH))).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot208 (3 : Fin 5)) = canonicalInput277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound277 hH))).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot208 (4 : Fin 5)) = (normalNode96).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection207 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot208 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode91).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot208 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode91).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot208 (j : Fin 5)))
      1 720 1440 2 ![360, 1, 1440, 1440, 6] ![4, 1440, 1, 1, 240] reductionProjection208 ![reductionProjection204, reductionProjection205, oldProjection2833, oldProjection2833, reductionProjection207]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection209 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (434, -360), (698, -80), (700, -80), (1219, 240), (1251, -10), (1270, -360)]

def reductionPivot209 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, -1, -1, 1]]

theorem reductionSound209 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5544).moment H =
      Integer.Sparse.eval reductionProjection209 (momentVector H) := by
  have heq : reductionPivot209 = (fun u v => (normalNode5544).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5544).moment H = injectiveMoment H reductionPivot209 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5544).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot209 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot209 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot209 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection720, oldProjection477, oldProjection1352, oldProjection1352] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot209 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot209 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4847 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4847 hH))).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot209 (2 : Fin 4)) = canonicalInput10749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10749 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot209 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4827 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot209 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4827 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5544).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot209 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5544).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot209 (j : Fin 4)))
      2 720 720 2 ![1, 1, 720, 720] ![720, 720, 1, 1] reductionProjection209 ![oldProjection720, oldProjection477, oldProjection1352, oldProjection1352]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection210 : Integer.Sparse (Fin 1613) := [(31, 1)]

theorem reductionSound210 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code31).moment H =
      Integer.Sparse.eval reductionProjection210 (momentVector H) := by
  have hc : coordinates (31 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code31) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection210, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection211 : Integer.Sparse (Fin 1613) := [(768, 1)]

theorem reductionSound211 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code768).moment H =
      Integer.Sparse.eval reductionProjection211 (momentVector H) := by
  have hc : coordinates (768 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code768) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection211, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection212 : Integer.Sparse (Fin 1613) := [(432, -2), (768, -1), (1340, -1)]

def reductionPivot212 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-3, -1, 1, 3], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound212 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode97).moment H =
      Integer.Sparse.eval reductionProjection212 (momentVector H) := by
  have heq : reductionPivot212 = (fun u v => (normalNode97).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode97).moment H = injectiveMoment H reductionPivot212 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode97).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot212 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot212 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot212 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection211, reductionProjection150, reductionProjection150, reductionProjection206] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot212 (0 : Fin 4)) = canonicalInput530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound530 hH))).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot212 (1 : Fin 4)) = canonicalInput313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound313 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot212 (2 : Fin 4)) = canonicalInput308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound308 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot212 (3 : Fin 4)) = canonicalInput306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection206 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot212 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound306 hH))).trans (reductionSound206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode97).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot212 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode97).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot212 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection212 ![reductionProjection211, reductionProjection150, reductionProjection150, reductionProjection206]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection213 : Integer.Sparse (Fin 1613) := [(0, -1), (31, -720), (94, 20), (243, 80), (432, 720), (434, 360), (483, 720), (682, -240), (698, 400), (700, 80), (704, 80), (768, 360), (1219, -240), (1226, 160), (1227, 160), (1251, 5), (1270, 360), (1321, -240), (1340, 360), (1389, -240)]

def reductionPivot213 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound213 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode93).moment H =
      Integer.Sparse.eval reductionProjection213 (momentVector H) := by
  have heq : reductionPivot213 = (fun u v => (normalNode93).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode93).moment H = injectiveMoment H reductionPivot213 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode93).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot213 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot213 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1, 288, 288, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot213 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection209, reductionProjection210, oldProjection2285, oldProjection2285, reductionProjection212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot213 (0 : Fin 5)) = canonicalInput427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection209 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound427 hH))).trans (reductionSound209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot213 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code31).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot213 (2 : Fin 5)) = canonicalInput284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2285 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound284 hH))).trans (oldProjectionSound2285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot213 (3 : Fin 5)) = canonicalInput283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2285 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound283 hH))).trans (oldProjectionSound2285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot213 (4 : Fin 5)) = (normalNode97).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection212 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot213 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode93).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot213 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode93).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot213 (j : Fin 5)))
      1 720 1440 2 ![720, 1, 288, 288, 2] ![2, 1440, 5, 5, 720] reductionProjection213 ![reductionProjection209, reductionProjection210, oldProjection2285, oldProjection2285, reductionProjection212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection214 : Integer.Sparse (Fin 1613) := [(72, -1), (1044, -1), (1050, -1)]

def reductionPivot214 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -2, 2, 0], ![3, 0, 0, -3], ![-2, 2, -2, 2]]

theorem reductionSound214 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode10912).moment H =
      Integer.Sparse.eval reductionProjection214 (momentVector H) := by
  have heq : reductionPivot214 = (fun u v => (normalNode10912).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10912).moment H = injectiveMoment H reductionPivot214 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10912).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10912).entries)).symm
  have hshape : reductionPivot214 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot214 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot214 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection101, oldProjection197, oldProjection192] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot214 (0 : Fin 3)) = canonicalInput14126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot214 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot214 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14126 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot214 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8267 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot214 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot214 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8267 hH))).trans (oldProjectionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot214 (2 : Fin 3)) = canonicalInput24448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot214 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot214 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24448 hH))).trans (oldProjectionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10912).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot214 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10912).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot214 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection214 ![oldProjection101, oldProjection197, oldProjection192]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection215 : Integer.Sparse (Fin 1613) := [(72, -2), (1221, -1)]

def reductionPivot215 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 2, 1], ![-1, 2, -2, 1], ![3, 0, 0, -3]]

theorem reductionSound215 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7822).moment H =
      Integer.Sparse.eval reductionProjection215 (momentVector H) := by
  have heq : reductionPivot215 = (fun u v => (normalNode7822).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7822).moment H = injectiveMoment H reductionPivot215 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7822).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7822).entries)).symm
  have hshape : reductionPivot215 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot215 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot215 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection101, oldProjection101, oldProjection224] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot215 (0 : Fin 3)) = canonicalInput1811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot215 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot215 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1811 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot215 (1 : Fin 3)) = canonicalInput14004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot215 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot215 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14004 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot215 (2 : Fin 3)) = canonicalInput14046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot215 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection224 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot215 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14046 hH))).trans (oldProjectionSound224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7822).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot215 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7822).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot215 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection215 ![oldProjection101, oldProjection101, oldProjection224]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection216 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 720), (94, -5), (758, -720), (1044, 240), (1050, 480), (1221, 480), (1251, -50)]

def reductionPivot216 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![2, -2, 0, 0]]

theorem reductionSound216 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5898).moment H =
      Integer.Sparse.eval reductionProjection216 (momentVector H) := by
  have heq : reductionPivot216 = (fun u v => (normalNode5898).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5898).moment H = injectiveMoment H reductionPivot216 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5898).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot216 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot216 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot216 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection214, oldProjection587, oldProjection1304, reductionProjection215] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot216 (0 : Fin 4)) = canonicalInput11910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection214 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11910 hH))).trans (reductionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot216 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5325 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection587 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5325 hH))).trans (oldProjectionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot216 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5347 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1304 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5347 hH))).trans (oldProjectionSound1304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot216 (3 : Fin 4)) = canonicalInput12044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection215 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot216 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12044 hH))).trans (reductionSound215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5898).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot216 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5898).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot216 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 720, 3] ![480, 1440, 2, 480] reductionProjection216 ![reductionProjection214, oldProjection587, oldProjection1304, reductionProjection215]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection217 : Integer.Sparse (Fin 1613) := [(68, -1), (682, -1), (684, -1)]

def reductionPivot217 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 2, 1], ![-1, 3, -3, 1], ![3, -1, 1, -3]]

theorem reductionSound217 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7837).moment H =
      Integer.Sparse.eval reductionProjection217 (momentVector H) := by
  have heq : reductionPivot217 = (fun u v => (normalNode7837).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7837).moment H = injectiveMoment H reductionPivot217 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7837).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7837).entries)).symm
  have hshape : reductionPivot217 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot217 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot217 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection171, reductionProjection94, oldProjection159] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot217 (0 : Fin 3)) = canonicalInput1817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot217 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection171 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot217 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1817 hH))).trans (reductionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot217 (1 : Fin 3)) = canonicalInput14005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot217 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection94 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot217 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection94 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14005 hH))).trans (reductionSound94 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot217 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5820 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot217 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot217 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5820 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7837).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot217 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7837).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot217 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection217 ![reductionProjection171, reductionProjection94, oldProjection159]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection218 : Integer.Sparse (Fin 1613) := [(68, -1), (69, -1), (72, -1)]

def reductionPivot218 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -3, 3, 0], ![-2, 2, -2, 2], ![3, 1, -1, -3]]

theorem reductionSound218 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode9840).moment H =
      Integer.Sparse.eval reductionProjection218 (momentVector H) := by
  have heq : reductionPivot218 = (fun u v => (normalNode9840).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9840).moment H = injectiveMoment H reductionPivot218 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9840).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9840).entries)).symm
  have hshape : reductionPivot218 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot218 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot218 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection171, reductionProjection86, oldProjection101] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot218 (0 : Fin 3)) = canonicalInput12792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot218 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection171 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot218 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12792 hH))).trans (reductionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot218 (1 : Fin 3)) = canonicalInput23906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot218 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot218 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23906 hH))).trans (reductionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot218 (2 : Fin 3)) = canonicalInput23908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot218 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot218 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23908 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9840).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot218 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9840).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot218 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection218 ![reductionProjection171, reductionProjection86, oldProjection101]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection219 : Integer.Sparse (Fin 1613) := [(396, 1)]

theorem reductionSound219 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code396).moment H =
      Integer.Sparse.eval reductionProjection219 (momentVector H) := by
  have hc : coordinates (396 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code396) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection219, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection220 : Integer.Sparse (Fin 1613) := [(68, 96), (69, 48), (72, 96), (94, 5), (396, -144), (682, 96), (684, 48), (1251, 1)]

def reductionPivot220 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-3, -1, 1, 3], ![0, 3, -3, 0], ![1, -2, 2, -1], ![1, 0, 0, -1]]

theorem reductionSound220 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode99).moment H =
      Integer.Sparse.eval reductionProjection220 (momentVector H) := by
  have heq : reductionPivot220 = (fun u v => (normalNode99).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode99).moment H = injectiveMoment H reductionPivot220 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode99).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot220 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot220 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 3, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot220 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection989, reductionProjection217, reductionProjection218, reductionProjection219] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot220 (0 : Fin 4)) = canonicalInput5301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection989 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5301 hH))).trans (oldProjectionSound989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot220 (1 : Fin 4)) = canonicalInput315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection217 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound315 hH))).trans (reductionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot220 (2 : Fin 4)) = canonicalInput295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection218 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound295 hH))).trans (reductionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot220 (3 : Fin 4)) = canonicalInput294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot220 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound294 hH))).trans (reductionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode99).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot220 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode99).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot220 (j : Fin 4)))
      2 288 288 2 ![144, 3, 3, 1] ![2, 96, 96, 288] reductionProjection220 ![oldProjection989, reductionProjection217, reductionProjection218, reductionProjection219]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection221 : Integer.Sparse (Fin 1613) := [(553, -1), (566, -1), (656, -1), (1318, -1)]

def reductionPivot221 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 1, -1, -1]]

theorem reductionSound221 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode98).moment H =
      Integer.Sparse.eval reductionProjection221 (momentVector H) := by
  have heq : reductionPivot221 = (fun u v => (normalNode98).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode98).moment H = injectiveMoment H reductionPivot221 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode98).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot221 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot221 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot221 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection503, reductionProjection175, reductionProjection170, reductionProjection166] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot221 (0 : Fin 4)) = canonicalInput5281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5281 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot221 (1 : Fin 4)) = canonicalInput314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection175 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound314 hH))).trans (reductionSound175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot221 (2 : Fin 4)) = canonicalInput291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound291 hH))).trans (reductionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot221 (3 : Fin 4)) = canonicalInput286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection166 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot221 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound286 hH))).trans (reductionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode98).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot221 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode98).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot221 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection221 ![oldProjection503, reductionProjection175, reductionProjection170, reductionProjection166]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection222 : Integer.Sparse (Fin 1613) := [(0, 1), (68, -480), (69, -240), (72, -1200), (94, -20), (396, 720), (418, 720), (553, 1440), (566, 1440), (656, 1440), (682, -960), (684, -240), (758, 720), (1044, -240), (1050, -480), (1217, -240), (1221, -960), (1251, -5), (1318, 1440), (1321, -240), (1389, -480)]

def reductionPivot222 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, -1, 1, 3], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound222 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode94).moment H =
      Integer.Sparse.eval reductionProjection222 (momentVector H) := by
  have heq : reductionPivot222 = (fun u v => (normalNode94).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode94).moment H = injectiveMoment H reductionPivot222 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode94).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot222 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot222 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot222 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection216, reductionProjection220, oldProjection2373, reductionProjection221, reductionProjection221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot222 (0 : Fin 5)) = canonicalInput428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection216 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound428 hH))).trans (reductionSound216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot222 (1 : Fin 5)) = (normalNode99).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection220 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot222 (2 : Fin 5)) = canonicalInput287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2373 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound287 hH))).trans (oldProjectionSound2373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot222 (3 : Fin 5)) = canonicalInput285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection221 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound285 hH))).trans (reductionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot222 (4 : Fin 5)) = (normalNode98).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection221 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot222 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode94).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot222 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode94).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot222 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 2, 2] ![1, 5, 2, 720, 720] reductionProjection222 ![reductionProjection216, reductionProjection220, oldProjection2373, reductionProjection221, reductionProjection221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection223 : Integer.Sparse (Fin 1613) := [(1203, 1)]

theorem reductionSound223 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1203).moment H =
      Integer.Sparse.eval reductionProjection223 (momentVector H) := by
  have hc : coordinates (1203 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1203) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection223, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

end NoFourMUBs.Step2.SOS.Normalization

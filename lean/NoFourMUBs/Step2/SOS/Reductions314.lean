import NoFourMUBs.Step2.SOS.Canonical018
import NoFourMUBs.Step2.SOS.Canonical193
import NoFourMUBs.Step2.SOS.Canonical202
import NoFourMUBs.Step2.SOS.Canonical203
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical209
import NoFourMUBs.Step2.SOS.Canonical224
import NoFourMUBs.Step2.SOS.Canonical225
import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical235
import NoFourMUBs.Step2.SOS.Canonical236
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical300
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions313
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical188
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical189
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical194
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10048 : Integer.Sparse (Fin 1613) := [(751, -1), (1204, -1), (1207, -1), (1295, -1)]

def reductionPivot10048 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 1, -1, -1], ![1, 2, -1, -2]]

theorem reductionSound10048 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6374).moment H =
      Integer.Sparse.eval reductionProjection10048 (momentVector H) := by
  have heq : reductionPivot10048 = (fun u v => (normalNode6374).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6374).moment H = injectiveMoment H reductionPivot10048 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6374).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10048 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10048 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10048 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2654, reductionProjection10047, oldProjection585, oldProjection693] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10048 (0 : Fin 4)) = canonicalInput13384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2654 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13384 hH))).trans (reductionSound2654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10048 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10048 (2 : Fin 4)) = canonicalInput12956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection585 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12956 hH))).trans (oldProjectionSound585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10048 (3 : Fin 4)) = canonicalInput12955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10048 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12955 hH))).trans (oldProjectionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6374).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10048 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6374).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10048 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10048 ![reductionProjection2654, reductionProjection10047, oldProjection585, oldProjection693]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10049 : Integer.Sparse (Fin 1613) := [(280, -1), (677, -1), (751, -1), (808, -1)]

def reductionPivot10049 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![1, 2, -2, -1]]

theorem reductionSound10049 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6375).moment H =
      Integer.Sparse.eval reductionProjection10049 (momentVector H) := by
  have heq : reductionPivot10049 = (fun u v => (normalNode6375).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6375).moment H = injectiveMoment H reductionPivot10049 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6375).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10049 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10049 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10049 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection603, reductionProjection2222, reductionProjection6030, oldProjection585] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10049 (0 : Fin 4)) = canonicalInput13385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection603 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13385 hH))).trans (oldProjectionSound603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10049 (1 : Fin 4)) = canonicalInput12963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2222 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12963 hH))).trans (reductionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10049 (2 : Fin 4)) = canonicalInput12957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12957 hH))).trans (reductionSound6030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10049 (3 : Fin 4)) = canonicalInput12956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection585 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10049 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12956 hH))).trans (oldProjectionSound585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6375).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10049 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6375).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10049 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10049 ![oldProjection603, reductionProjection2222, reductionProjection6030, oldProjection585]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10050 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -3), (241, -48), (243, -16), (247, -16), (548, -144), (627, -144), (698, -16), (751, -144), (1251, 1)]

def reductionPivot10050 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]

theorem reductionSound10050 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6376).moment H =
      Integer.Sparse.eval reductionProjection10050 (momentVector H) := by
  have heq : reductionPivot10050 = (fun u v => (normalNode6376).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6376).moment H = injectiveMoment H reductionPivot10050 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6376).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10050 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10050 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10050 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection501, oldProjection1113, oldProjection585, reductionProjection5841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10050 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6005 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6005 hH))).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10050 (1 : Fin 4)) = canonicalInput12968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12968 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10050 (2 : Fin 4)) = canonicalInput12956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection585 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12956 hH))).trans (oldProjectionSound585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10050 (3 : Fin 4)) = canonicalInput12954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10050 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12954 hH))).trans (reductionSound5841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6376).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10050 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6376).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10050 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection10050 ![oldProjection501, oldProjection1113, oldProjection585, reductionProjection5841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10051 : Integer.Sparse (Fin 1613) := [(283, -1), (565, -1), (627, -1), (677, -1)]

def reductionPivot10051 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, -1, 4], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound10051 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6377).moment H =
      Integer.Sparse.eval reductionProjection10051 (momentVector H) := by
  have heq : reductionPivot10051 = (fun u v => (normalNode6377).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6377).moment H = injectiveMoment H reductionPivot10051 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6377).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10051 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10051 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10051 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, oldProjection447, reductionProjection6030, reductionProjection5841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10051 (0 : Fin 4)) = canonicalInput15086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15086 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10051 (1 : Fin 4)) = canonicalInput12976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12976 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10051 (2 : Fin 4)) = canonicalInput12957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12957 hH))).trans (reductionSound6030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10051 (3 : Fin 4)) = canonicalInput12954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10051 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12954 hH))).trans (reductionSound5841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6377).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10051 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6377).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10051 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10051 ![oldProjection505, oldProjection447, reductionProjection6030, reductionProjection5841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10052 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (42, -80), (88, -80), (89, 240), (90, -80), (94, -5), (241, -80), (243, -320), (303, -720), (698, -240), (700, -80), (704, -160), (1226, -160), (1251, -5)]

def reductionPivot10052 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound10052 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7273).moment H =
      Integer.Sparse.eval reductionProjection10052 (momentVector H) := by
  have heq : reductionPivot10052 = (fun u v => (normalNode7273).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7273).moment H = injectiveMoment H reductionPivot10052 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7273).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10052 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10052 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10052 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection779, oldProjection769, reductionProjection2266, reductionProjection5540] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10052 (0 : Fin 4)) = canonicalInput19184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection779 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19184 hH))).trans (oldProjectionSound779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10052 (1 : Fin 4)) = canonicalInput14421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14421 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10052 (2 : Fin 4)) = canonicalInput14383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14383 hH))).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10052 (3 : Fin 4)) = canonicalInput14381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5540 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10052 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14381 hH))).trans (reductionSound5540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7273).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10052 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7273).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10052 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 9] ![10, 2, 1440, 160] reductionProjection10052 ![oldProjection779, oldProjection769, reductionProjection2266, reductionProjection5540]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10053 : Integer.Sparse (Fin 1613) := [(77, 3), (79, 3), (81, 3), (90, -2), (231, 3), (280, -9), (394, -9), (698, -2), (700, -2)]

def reductionPivot10053 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound10053 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6385).moment H =
      Integer.Sparse.eval reductionProjection10053 (momentVector H) := by
  have heq : reductionPivot10053 = (fun u v => (normalNode6385).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6385).moment H = injectiveMoment H reductionPivot10053 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6385).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10053 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10053 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10053 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection301, reductionProjection735, reductionProjection2222, reductionProjection4109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10053 (0 : Fin 4)) = canonicalInput23967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection301 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23967 hH))).trans (reductionSound301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10053 (1 : Fin 4)) = (normalNode6459).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection735 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10053 (2 : Fin 4)) = canonicalInput12964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2222 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12964 hH))).trans (reductionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10053 (3 : Fin 4)) = canonicalInput12959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10053 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12959 hH))).trans (reductionSound4109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6385).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10053 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6385).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10053 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection10053 ![reductionProjection301, reductionProjection735, reductionProjection2222, reductionProjection4109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10054 : Integer.Sparse (Fin 1613) := [(280, -1), (294, -1), (303, -1), (1295, -1)]

def reductionPivot10054 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound10054 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6382).moment H =
      Integer.Sparse.eval reductionProjection10054 (momentVector H) := by
  have heq : reductionPivot10054 = (fun u v => (normalNode6382).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6382).moment H = injectiveMoment H reductionPivot10054 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6382).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10054 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10054 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10054 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2266, oldProjection454, reductionProjection2222, reductionProjection10047] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10054 (0 : Fin 4)) = canonicalInput14383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14383 hH))).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10054 (1 : Fin 4)) = canonicalInput12977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12977 hH))).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10054 (2 : Fin 4)) = canonicalInput12964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2222 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12964 hH))).trans (reductionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10054 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10054 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6382).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10054 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6382).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10054 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10054 ![reductionProjection2266, oldProjection454, reductionProjection2222, reductionProjection10047]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10055 : Integer.Sparse (Fin 1613) := [(85, 48), (88, -48), (89, 48), (90, -48), (91, -16), (94, -1), (241, -16), (243, -32), (698, -48), (1223, 48), (1226, -64), (1251, 3), (1295, -144)]

def reductionPivot10055 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 2, -1, -2]]

theorem reductionSound10055 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6381).moment H =
      Integer.Sparse.eval reductionProjection10055 (momentVector H) := by
  have heq : reductionPivot10055 = (fun u v => (normalNode6381).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6381).moment H = injectiveMoment H reductionPivot10055 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6381).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10055 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10055 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10055 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5540, oldProjection917, reductionProjection10047, reductionProjection10043] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10055 (0 : Fin 4)) = canonicalInput14381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5540 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14381 hH))).trans (reductionSound5540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10055 (1 : Fin 4)) = canonicalInput12975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection917 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12975 hH))).trans (oldProjectionSound917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10055 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10055 (3 : Fin 4)) = canonicalInput12962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10043 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10055 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12962 hH))).trans (reductionSound10043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6381).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10055 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6381).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10055 (j : Fin 4)))
      2 288 288 2 ![9, 144, 1, 9] ![32, 2, 288, 32] reductionProjection10055 ![reductionProjection5540, oldProjection917, reductionProjection10047, reductionProjection10043]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10056 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 1), (42, 16), (77, -48), (79, -48), (81, -48), (85, -48), (88, 64), (89, -96), (90, 96), (91, 16), (94, 15), (231, -48), (241, 64), (243, 128), (247, 16), (280, 288), (294, 288), (303, 288), (394, 144), (698, 192), (700, 48), (704, 64), (1223, -96), (1226, 112), (1251, -1), (1295, 288)]

def reductionPivot10056 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound10056 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6379).moment H =
      Integer.Sparse.eval reductionProjection10056 (momentVector H) := by
  have heq : reductionPivot10056 = (fun u v => (normalNode6379).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6379).moment H = injectiveMoment H reductionPivot10056 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6379).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10056 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10056 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10056 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10052, oldProjection1575, reductionProjection10053, reductionProjection10054, reductionProjection10055] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10056 (0 : Fin 5)) = (normalNode7273).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10052 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10056 (1 : Fin 5)) = canonicalInput12969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1575 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12969 hH))).trans (oldProjectionSound1575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10056 (2 : Fin 5)) = (normalNode6385).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10053 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10056 (3 : Fin 5)) = (normalNode6382).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10054 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10056 (4 : Fin 5)) = (normalNode6381).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10055 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10056 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6379).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10056 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6379).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10056 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 18, 2, 288] ![1, 1, 80, 720, 5] reductionProjection10056 ![reductionProjection10052, oldProjection1575, reductionProjection10053, reductionProjection10054, reductionProjection10055]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10057 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (88, -160), (89, 240), (90, -160), (94, 45), (243, -240), (303, -720), (698, -240), (1226, -480), (1251, 45)]

def reductionPivot10057 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10057 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7275).moment H =
      Integer.Sparse.eval reductionProjection10057 (momentVector H) := by
  have heq : reductionPivot10057 = (fun u v => (normalNode7275).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7275).moment H = injectiveMoment H reductionPivot10057 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7275).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10057 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10057 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10057 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection949, oldProjection899, reductionProjection2266, reductionProjection5540] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10057 (0 : Fin 4)) = canonicalInput19448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection949 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19448 hH))).trans (oldProjectionSound949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10057 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6016 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection899 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6016 hH))).trans (oldProjectionSound899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10057 (2 : Fin 4)) = canonicalInput14384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14384 hH))).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10057 (3 : Fin 4)) = canonicalInput14381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5540 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10057 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14381 hH))).trans (reductionSound5540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7275).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10057 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7275).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10057 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 9] ![2, 10, 1440, 160] reductionProjection10057 ![oldProjection949, oldProjection899, reductionProjection2266, reductionProjection5540]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10058 : Integer.Sparse (Fin 1613) := [(87, 3), (88, -1), (89, 3), (90, -2), (243, -1), (530, -9), (698, -3), (1226, -4), (1227, -1), (1295, -9)]

def reductionPivot10058 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound10058 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6386).moment H =
      Integer.Sparse.eval reductionProjection10058 (momentVector H) := by
  have heq : reductionPivot10058 = (fun u v => (normalNode6386).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6386).moment H = injectiveMoment H reductionPivot10058 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6386).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10058 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10058 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10058 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, reductionProjection5540, reductionProjection10047, reductionProjection5210] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10058 (0 : Fin 4)) = canonicalInput23968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23968 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10058 (1 : Fin 4)) = (normalNode6460).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5540 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10058 (2 : Fin 4)) = canonicalInput12965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12965 hH))).trans (reductionSound10047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10058 (3 : Fin 4)) = canonicalInput12960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10058 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12960 hH))).trans (reductionSound5210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6386).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10058 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6386).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10058 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection10058 ![reductionProjection304, reductionProjection5540, reductionProjection10047, reductionProjection5210]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10059 : Integer.Sparse (Fin 1613) := [(303, -1), (1295, -2), (1341, -1)]

def reductionPivot10059 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound10059 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6384).moment H =
      Integer.Sparse.eval reductionProjection10059 (momentVector H) := by
  have heq : reductionPivot10059 = (fun u v => (normalNode6384).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6384).moment H = injectiveMoment H reductionPivot10059 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6384).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10059 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10059 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10059 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection354, reductionProjection2266, reductionProjection10047, reductionProjection10047] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10059 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1341).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection354 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10059 (1 : Fin 4)) = canonicalInput12990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12990 hH))).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10059 (2 : Fin 4)) = canonicalInput12965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12965 hH))).trans (reductionSound10047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10059 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10059 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6384).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10059 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6384).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10059 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10059 ![reductionProjection354, reductionProjection2266, reductionProjection10047, reductionProjection10047]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10060 : Integer.Sparse (Fin 1613) := [(42, -1), (82, 3), (85, 3), (87, 3), (88, -2), (90, -4), (91, -1), (243, -1), (280, -9), (698, -3), (700, -2), (1226, -3), (1227, -1)]

def reductionPivot10060 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]

theorem reductionSound10060 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6383).moment H =
      Integer.Sparse.eval reductionProjection10060 (momentVector H) := by
  have heq : reductionPivot10060 = (fun u v => (normalNode6383).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6383).moment H = injectiveMoment H reductionPivot10060 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6383).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10060 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10060 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10060 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, oldProjection777, reductionProjection2222, reductionProjection10043] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10060 (0 : Fin 4)) = canonicalInput15113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15113 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10060 (1 : Fin 4)) = canonicalInput12988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection777 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12988 hH))).trans (oldProjectionSound777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10060 (2 : Fin 4)) = canonicalInput12963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2222 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12963 hH))).trans (reductionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10060 (3 : Fin 4)) = canonicalInput12962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10043 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10060 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12962 hH))).trans (reductionSound10043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6383).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10060 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6383).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10060 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection10060 ![reductionProjection304, oldProjection777, reductionProjection2222, reductionProjection10043]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10061 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (42, 80), (82, -240), (85, -240), (87, -480), (88, 400), (89, -480), (90, 640), (91, 80), (94, -5), (228, -240), (241, 80), (243, 480), (280, 720), (294, 720), (303, 1440), (530, 720), (698, 1120), (700, 160), (704, 80), (1223, -240), (1226, 1200), (1227, 320), (1251, -65), (1295, 2160), (1341, 720)]

def reductionPivot10061 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10061 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6380).moment H =
      Integer.Sparse.eval reductionProjection10061 (momentVector H) := by
  have heq : reductionPivot10061 = (fun u v => (normalNode6380).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6380).moment H = injectiveMoment H reductionPivot10061 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6380).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10061 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10061 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 18, 2, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10061 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10057, oldProjection1576, reductionProjection10058, reductionProjection10059, reductionProjection10060] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10061 (0 : Fin 5)) = (normalNode7275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10061 (1 : Fin 5)) = canonicalInput12970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1576 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12970 hH))).trans (oldProjectionSound1576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10061 (2 : Fin 5)) = (normalNode6386).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10058 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10061 (3 : Fin 5)) = (normalNode6384).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10059 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10061 (4 : Fin 5)) = (normalNode6383).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10060 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10061 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6380).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10061 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6380).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10061 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 18, 2, 18] ![1, 20, 80, 720, 80] reductionProjection10061 ![reductionProjection10057, oldProjection1576, reductionProjection10058, reductionProjection10059, reductionProjection10060]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10062 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (243, -16), (294, -144), (698, -32), (1207, -144), (1223, 48), (1226, -16), (1251, 3), (1295, -144)]

def reductionPivot10062 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]

theorem reductionSound10062 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6399).moment H =
      Integer.Sparse.eval reductionProjection10062 (momentVector H) := by
  have heq : reductionPivot10062 = (fun u v => (normalNode6399).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6399).moment H = injectiveMoment H reductionPivot10062 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6399).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10062 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10062 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10062 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection693, reductionProjection10047, oldProjection917, oldProjection454] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10062 (0 : Fin 4)) = canonicalInput12352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12352 hH))).trans (oldProjectionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10062 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10062 (2 : Fin 4)) = canonicalInput12975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection917 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12975 hH))).trans (oldProjectionSound917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10062 (3 : Fin 4)) = canonicalInput12977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10062 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12977 hH))).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6399).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10062 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6399).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10062 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection10062 ![oldProjection693, reductionProjection10047, oldProjection917, oldProjection454]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10063 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -220), (20, 25), (94, 45), (108, 160), (241, 480), (243, 400), (247, 240), (294, 720), (698, 560), (704, 80), (751, 1440), (1204, 720), (1207, 1440), (1223, -480), (1225, 80), (1226, 320), (1227, 80), (1251, -5), (1295, 1440), (1319, -240)]

def reductionPivot10063 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]

theorem reductionSound10063 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6388).moment H =
      Integer.Sparse.eval reductionProjection10063 (momentVector H) := by
  have heq : reductionPivot10063 = (fun u v => (normalNode6388).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6388).moment H = injectiveMoment H reductionPivot10063 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6388).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10063 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10063 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10063 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1936, reductionProjection10048, reductionProjection10062, oldProjection2507, oldProjection2508] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10063 (0 : Fin 5)) = canonicalInput1202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1936 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1202 hH))).trans (oldProjectionSound1936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10063 (1 : Fin 5)) = (normalNode6374).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10048 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10063 (2 : Fin 5)) = canonicalInput13028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10062 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13028 hH))).trans (reductionSound10062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10063 (3 : Fin 5)) = canonicalInput13033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2507 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13033 hH))).trans (oldProjectionSound2507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10063 (4 : Fin 5)) = canonicalInput13035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2508 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10063 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13035 hH))).trans (oldProjectionSound2508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6388).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10063 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6388).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10063 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 288, 1440, 1440] ![1, 720, 5, 1, 1] reductionProjection10063 ![oldProjection1936, reductionProjection10048, reductionProjection10062, oldProjection2507, oldProjection2508]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10064 : Integer.Sparse (Fin 1613) := [(280, -1), (283, -1), (294, -1), (332, -1)]

def reductionPivot10064 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, -1, 4], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]

theorem reductionSound10064 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6400).moment H =
      Integer.Sparse.eval reductionProjection10064 (momentVector H) := by
  have heq : reductionPivot10064 = (fun u v => (normalNode6400).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6400).moment H = injectiveMoment H reductionPivot10064 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6400).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10064 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10064 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10064 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection468, reductionProjection2222, oldProjection447, oldProjection454] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10064 (0 : Fin 4)) = canonicalInput12353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection468 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12353 hH))).trans (oldProjectionSound468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10064 (1 : Fin 4)) = canonicalInput12963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2222 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12963 hH))).trans (reductionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10064 (2 : Fin 4)) = canonicalInput12976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12976 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10064 (3 : Fin 4)) = canonicalInput12978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10064 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12978 hH))).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6400).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10064 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6400).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10064 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10064 ![oldProjection468, reductionProjection2222, oldProjection447, oldProjection454]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10065 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -5), (42, -80), (81, 240), (94, -70), (228, 240), (241, -80), (243, -160), (247, -80), (686, 240), (698, -240), (700, -240), (701, -80), (704, -240), (1059, -80), (1251, -60)]

def reductionPivot10065 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound10065 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6438).moment H =
      Integer.Sparse.eval reductionProjection10065 (momentVector H) := by
  have heq : reductionPivot10065 = (fun u v => (normalNode6438).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6438).moment H = injectiveMoment H reductionPivot10065 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6438).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10065 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10065 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 3, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10065 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection767, oldProjection756, oldProjection765, oldProjection766] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10065 (0 : Fin 4)) = canonicalInput12369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12369 hH))).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10065 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node756⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection756 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10065 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node765⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection765 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10065 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node766⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10065 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6438).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10065 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6438).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10065 (j : Fin 4)))
      2 1440 1440 2 ![144, 3, 9, 720] ![10, 480, 160, 2] reductionProjection10065 ![oldProjection767, oldProjection756, oldProjection765, oldProjection766]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10066 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -200), (20, 15), (38, -240), (42, 80), (45, -240), (81, -240), (94, 155), (108, 80), (228, -480), (241, 240), (243, 240), (247, 240), (280, 1440), (283, 720), (294, 720), (332, 720), (333, 720), (677, 720), (686, -240), (694, -240), (697, -240), (698, 480), (700, 240), (701, 80), (704, 400), (751, 720), (808, 720), (1059, 80), (1223, -240), (1226, 80), (1227, 80), (1251, 110)]

def reductionPivot10066 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]

theorem reductionSound10066 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6389).moment H =
      Integer.Sparse.eval reductionProjection10066 (momentVector H) := by
  have heq : reductionPivot10066 = (fun u v => (normalNode6389).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6389).moment H = injectiveMoment H reductionPivot10066 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6389).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10066 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10066 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10066 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2318, reductionProjection10049, reductionProjection10064, reductionProjection10065, oldProjection2499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10066 (0 : Fin 5)) = canonicalInput1203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2318 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1203 hH))).trans (reductionSound2318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10066 (1 : Fin 5)) = (normalNode6375).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10049 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10066 (2 : Fin 5)) = canonicalInput13029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10064 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13029 hH))).trans (reductionSound10064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10066 (3 : Fin 5)) = (normalNode6438).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10066 (4 : Fin 5)) = canonicalInput13036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2499 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10066 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13036 hH))).trans (oldProjectionSound2499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6389).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10066 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6389).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10066 (j : Fin 5)))
      1 1440 1440 1 ![720, 2, 2, 1440, 1440] ![2, 720, 720, 1, 1] reductionProjection10066 ![reductionProjection2318, reductionProjection10049, reductionProjection10064, reductionProjection10065, oldProjection2499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10067 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 90), (20, -5), (88, -40), (94, -30), (228, 120), (241, -240), (243, -160), (247, -160), (698, -80), (1226, -40), (1251, -20)]

def reductionPivot10067 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]

theorem reductionSound10067 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7306).moment H =
      Integer.Sparse.eval reductionProjection10067 (momentVector H) := by
  have heq : reductionPivot10067 = (fun u v => (normalNode7306).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7306).moment H = injectiveMoment H reductionPivot10067 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7306).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10067 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10067 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10067 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1100, oldProjection1113, oldProjection898, oldProjection921] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10067 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1666 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1666 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10067 (1 : Fin 4)) = canonicalInput14459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14459 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10067 (2 : Fin 4)) = canonicalInput14613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14613 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10067 (3 : Fin 4)) = canonicalInput14626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection921 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10067 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14626 hH))).trans (oldProjectionSound921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7306).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10067 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7306).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10067 (j : Fin 4)))
      2 720 720 2 ![720, 144, 144, 720] ![1, 5, 5, 1] reductionProjection10067 ![oldProjection1100, oldProjection1113, oldProjection898, oldProjection921]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10068 : Integer.Sparse (Fin 1613) := [(88, 2), (90, 1), (91, 1), (241, 1), (243, 2), (698, 1), (1226, 1)]

def reductionPivot10068 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![0, -1, 3, -2], ![1, 2, -1, -2]]

theorem reductionSound10068 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6456).moment H =
      Integer.Sparse.eval reductionProjection10068 (momentVector H) := by
  have heq : reductionPivot10068 = (fun u v => (normalNode6456).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6456).moment H = injectiveMoment H reductionPivot10068 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6456).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot10068 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10068 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10068 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection106, oldProjection146, reductionProjection54] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10068 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6051 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10068 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10068 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6051 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10068 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5615 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10068 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection146 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10068 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5615 hH))).trans (oldProjectionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10068 (2 : Fin 3)) = canonicalInput13050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10068 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10068 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13050 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6456).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10068 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6456).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10068 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection10068 ![oldProjection106, oldProjection146, reductionProjection54]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10069 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (88, -160), (90, -80), (91, -80), (94, -40), (241, -80), (243, -160), (244, -80), (247, -80), (700, -80), (1226, -80), (1251, -20)]

def reductionPivot10069 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound10069 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6440).moment H =
      Integer.Sparse.eval reductionProjection10069 (momentVector H) := by
  have heq : reductionPivot10069 = (fun u v => (normalNode6440).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6440).moment H = injectiveMoment H reductionPivot10069 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6440).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10069 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10069 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10069 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1169, reductionProjection10068, oldProjection146, oldProjection771] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10069 (0 : Fin 4)) = canonicalInput12372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1169 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12372 hH))).trans (oldProjectionSound1169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10069 (1 : Fin 4)) = (normalNode6456).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10068 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10068 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10068 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10069 (2 : Fin 4)) = canonicalInput13080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection146 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13080 hH))).trans (oldProjectionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10069 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node771⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10069 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6440).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10069 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6440).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10069 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 3, 720] ![10, 160, 480, 2] reductionProjection10069 ![oldProjection1169, reductionProjection10068, oldProjection146, oldProjection771]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10070 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -340), (20, 20), (88, 320), (90, 80), (91, 80), (94, 125), (108, 80), (228, -480), (231, -240), (241, 880), (242, -240), (243, 800), (244, 80), (247, 560), (548, 720), (627, 720), (698, 320), (700, 80), (751, 720), (1226, 240), (1251, 95)]

def reductionPivot10070 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]

theorem reductionSound10070 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6390).moment H =
      Integer.Sparse.eval reductionProjection10070 (momentVector H) := by
  have heq : reductionPivot10070 = (fun u v => (normalNode6390).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6390).moment H = injectiveMoment H reductionPivot10070 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6390).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10070 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10070 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10070 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2333, reductionProjection10050, reductionProjection10067, reductionProjection10069, oldProjection2493] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10070 (0 : Fin 5)) = canonicalInput1208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2333 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1208 hH))).trans (reductionSound2333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10070 (1 : Fin 5)) = (normalNode6376).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10050 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10070 (2 : Fin 5)) = canonicalInput13030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10067 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13030 hH))).trans (reductionSound10067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10070 (3 : Fin 5)) = canonicalInput13037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10069 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13037 hH))).trans (reductionSound10069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10070 (4 : Fin 5)) = canonicalInput13038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2493 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10070 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13038 hH))).trans (oldProjectionSound2493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6390).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10070 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6390).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10070 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 1440, 1440] ![1, 5, 2, 1, 1] reductionProjection10070 ![reductionProjection2333, reductionProjection10050, reductionProjection10067, reductionProjection10069, oldProjection2493]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10071 : Integer.Sparse (Fin 1613) := [(1298, 1)]

theorem reductionSound10071 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1298).moment H =
      Integer.Sparse.eval reductionProjection10071 (momentVector H) := by
  have hc : coordinates (1298 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1298) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10071, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10072 : Integer.Sparse (Fin 1613) := [(283, -1), (326, -1), (330, -1), (1298, -1)]

def reductionPivot10072 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, -1, 4], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound10072 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6417).moment H =
      Integer.Sparse.eval reductionProjection10072 (momentVector H) := by
  have heq : reductionPivot10072 = (fun u v => (normalNode6417).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6417).moment H = injectiveMoment H reductionPivot10072 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6417).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10072 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10072 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10072 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection467, oldProjection447, reductionProjection10071, oldProjection464] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10072 (0 : Fin 4)) = canonicalInput12356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12356 hH))).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10072 (1 : Fin 4)) = canonicalInput12976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12976 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10072 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10071 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10072 (3 : Fin 4)) = canonicalInput12997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10072 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12997 hH))).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6417).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10072 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6417).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10072 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10072 ![oldProjection467, oldProjection447, reductionProjection10071, oldProjection464]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10073 : Integer.Sparse (Fin 1613) := [(42, 1), (88, 1), (90, 2), (91, 1), (243, 1), (698, 1), (700, 1), (1226, 1)]

def reductionPivot10073 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, -1, 4], ![0, -1, 3, -2], ![1, 2, -2, -1]]

theorem reductionSound10073 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6458).moment H =
      Integer.Sparse.eval reductionProjection10073 (momentVector H) := by
  have heq : reductionPivot10073 = (fun u v => (normalNode6458).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6458).moment H = injectiveMoment H reductionPivot10073 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6458).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot10073 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10073 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10073 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection109, oldProjection81, reductionProjection54] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10073 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6232 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10073 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10073 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6232 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10073 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5619 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10073 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10073 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5619 hH))).trans (oldProjectionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10073 (2 : Fin 3)) = canonicalInput13050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10073 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10073 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13050 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6458).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10073 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6458).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10073 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection10073 ![oldProjection109, oldProjection81, reductionProjection54]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10074 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (42, -160), (88, -80), (90, -160), (91, -80), (94, -20), (241, -160), (243, -400), (244, -80), (698, -480), (700, -480), (701, -80), (704, -160), (1059, -160), (1226, -80), (1251, 15)]

def reductionPivot10074 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 2, -2, -1]]

theorem reductionSound10074 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6441).moment H =
      Integer.Sparse.eval reductionProjection10074 (momentVector H) := by
  have heq : reductionPivot10074 = (fun u v => (normalNode6441).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6441).moment H = injectiveMoment H reductionPivot10074 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6441).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10074 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10074 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10074 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection768, reductionProjection10073, oldProjection765, oldProjection769] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10074 (0 : Fin 4)) = canonicalInput12373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection768 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12373 hH))).trans (oldProjectionSound768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10074 (1 : Fin 4)) = (normalNode6458).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10073 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10074 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5607 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection765 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5607 hH))).trans (oldProjectionSound765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10074 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5610 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10074 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5610 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6441).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10074 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6441).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10074 (j : Fin 4)))
      2 1440 1440 2 ![9, 9, 9, 720] ![160, 160, 160, 2] reductionProjection10074 ![oldProjection768, reductionProjection10073, oldProjection765, oldProjection769]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10075 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -15), (88, -80), (94, -75), (241, -160), (243, -320), (698, -400), (704, -240), (1226, -160), (1227, -80), (1251, -5)]

def reductionPivot10075 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound10075 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7412).moment H =
      Integer.Sparse.eval reductionProjection10075 (momentVector H) := by
  have heq : reductionPivot10075 = (fun u v => (normalNode7412).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7412).moment H = injectiveMoment H reductionPivot10075 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7412).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10075 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10075 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10075 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection939, oldProjection898, oldProjection769, oldProjection893] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10075 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection939 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6218 hH))).trans (oldProjectionSound939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10075 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10075 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6041 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6041 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10075 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10075 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7412).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10075 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7412).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10075 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 720, 720] ![2, 10, 2, 2] reductionProjection10075 ![oldProjection939, oldProjection898, oldProjection769, oldProjection893]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10076 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -200), (20, 15), (38, -480), (42, 160), (45, -240), (81, -240), (88, 160), (90, 160), (91, 80), (94, 130), (231, -240), (241, 480), (242, -240), (243, 720), (244, 80), (247, 240), (283, 1440), (326, 720), (330, 720), (565, 720), (627, 720), (677, 720), (697, -480), (698, 880), (700, 480), (701, 80), (704, 400), (1059, 160), (1226, 240), (1227, 80), (1251, 15), (1298, 720)]

def reductionPivot10076 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound10076 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6391).moment H =
      Integer.Sparse.eval reductionProjection10076 (momentVector H) := by
  have heq : reductionPivot10076 = (fun u v => (normalNode6391).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6391).moment H = injectiveMoment H reductionPivot10076 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6391).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10076 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10076 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10076 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2340, reductionProjection10051, reductionProjection10072, reductionProjection10074, reductionProjection10075] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10076 (0 : Fin 5)) = canonicalInput1210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1210 hH))).trans (reductionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10076 (1 : Fin 5)) = (normalNode6377).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10051 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10051 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10076 (2 : Fin 5)) = canonicalInput13031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10072 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13031 hH))).trans (reductionSound10072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10076 (3 : Fin 5)) = canonicalInput13039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10074 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13039 hH))).trans (reductionSound10074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10076 (4 : Fin 5)) = canonicalInput13040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10076 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13040 hH))).trans (reductionSound10075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6391).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10076 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6391).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10076 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 1440, 1440] ![1, 720, 720, 1, 1] reductionProjection10076 ![reductionProjection2340, reductionProjection10051, reductionProjection10072, reductionProjection10074, reductionProjection10075]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10077 : Integer.Sparse (Fin 1613) := [(19, 24), (20, -3), (88, -64), (94, 1), (241, -80), (243, -80), (247, -16), (698, -16), (1226, -48)]

def reductionPivot10077 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound10077 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7327).moment H =
      Integer.Sparse.eval reductionProjection10077 (momentVector H) := by
  have heq : reductionPivot10077 = (fun u v => (normalNode7327).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7327).moment H = injectiveMoment H reductionPivot10077 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7327).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10077 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10077 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10077 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1075, oldProjection1113, oldProjection898, oldProjection1125] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10077 (0 : Fin 4)) = canonicalInput19212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19212 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10077 (1 : Fin 4)) = canonicalInput14471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14471 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10077 (2 : Fin 4)) = canonicalInput14435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14435 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10077 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6015 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1125 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10077 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6015 hH))).trans (oldProjectionSound1125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7327).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10077 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7327).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10077 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 9] ![4, 2, 2, 32] reductionProjection10077 ![oldProjection1075, oldProjection1113, oldProjection898, oldProjection1125]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10078 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (90, -16), (91, -16), (244, -16), (698, -32), (700, -16), (1226, -32), (1251, 1)]

def reductionPivot10078 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 3, -1, -2], ![1, 0, -1, 0]]

theorem reductionSound10078 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6442).moment H =
      Integer.Sparse.eval reductionProjection10078 (momentVector H) := by
  have heq : reductionPivot10078 = (fun u v => (normalNode6442).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6442).moment H = injectiveMoment H reductionPivot10078 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6442).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10078 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10078 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10078 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1175, reductionProjection10042, oldProjection775, oldProjection903] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10078 (0 : Fin 4)) = canonicalInput12376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1175 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12376 hH))).trans (oldProjectionSound1175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10078 (1 : Fin 4)) = (normalNode6464).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10042 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10078 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node775⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection775 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10078 (3 : Fin 4)) = canonicalInput13083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection903 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10078 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13083 hH))).trans (oldProjectionSound903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6442).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10078 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6442).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10078 (j : Fin 4)))
      2 288 288 2 ![144, 9, 72, 9] ![2, 32, 4, 32] reductionProjection10078 ![oldProjection1175, reductionProjection10042, oldProjection775, oldProjection903]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10079 : Integer.Sparse (Fin 1613) := [(19, -44), (20, 5), (88, 128), (90, 16), (91, 16), (94, -1), (105, 16), (231, -96), (241, 128), (242, -48), (243, 176), (244, 16), (247, 48), (627, 144), (698, 48), (700, 16), (732, 144), (1226, 96), (1251, 2)]

def reductionPivot10079 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, -1, 4], ![0, -1, 1, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound10079 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6392).moment H =
      Integer.Sparse.eval reductionProjection10079 (momentVector H) := by
  have heq : reductionPivot10079 = (fun u v => (normalNode6392).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6392).moment H = injectiveMoment H reductionPivot10079 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6392).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10079 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10079 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10079 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6555, reductionProjection10045, reductionProjection10077, oldProjection898, reductionProjection10078] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10079 (0 : Fin 5)) = canonicalInput1211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6555 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1211 hH))).trans (reductionSound6555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10079 (1 : Fin 5)) = (normalNode6378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10045 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10045 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10079 (2 : Fin 5)) = canonicalInput13032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10077 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13032 hH))).trans (reductionSound10077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10079 (3 : Fin 5)) = canonicalInput13041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13041 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10079 (4 : Fin 5)) = canonicalInput13042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10078 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10079 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13042 hH))).trans (reductionSound10078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6392).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10079 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6392).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10079 (j : Fin 5)))
      1 288 288 1 ![144, 288, 288, 144, 288] ![2, 1, 1, 2, 1] reductionProjection10079 ![reductionProjection6555, reductionProjection10045, reductionProjection10077, oldProjection898, reductionProjection10078]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

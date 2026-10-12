import NoFourMUBs.Step2.SOS.Canonical046
import NoFourMUBs.Step2.SOS.Canonical048
import NoFourMUBs.Step2.SOS.Canonical053
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical068
import NoFourMUBs.Step2.SOS.Canonical069
import NoFourMUBs.Step2.SOS.Canonical106
import NoFourMUBs.Step2.SOS.Canonical112
import NoFourMUBs.Step2.SOS.Canonical131
import NoFourMUBs.Step2.SOS.Canonical156
import NoFourMUBs.Step2.SOS.Canonical162
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical224
import NoFourMUBs.Step2.SOS.Canonical236
import NoFourMUBs.Step2.SOS.Canonical238
import NoFourMUBs.Step2.SOS.Canonical242
import NoFourMUBs.Step2.SOS.Canonical243
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical254
import NoFourMUBs.Step2.SOS.Canonical256
import NoFourMUBs.Step2.SOS.Canonical257
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical263
import NoFourMUBs.Step2.SOS.Canonical264
import NoFourMUBs.Step2.SOS.Canonical277
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical287
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical385
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical103
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical146
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical194
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection7008 : Integer.Sparse (Fin 1613) := [(303, -1), (434, -1), (768, -1), (1341, -1)]

def reductionPivot7008 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -1, 3], ![-1, -1, 3, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound7008 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode7674).moment H =
      Integer.Sparse.eval reductionProjection7008 (momentVector H) := by
  have heq : reductionPivot7008 = (fun u v => (normalNode7674).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7674).moment H = injectiveMoment H reductionPivot7008 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7674).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7008 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7008 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7008 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2266, oldProjection477, reductionProjection211, reductionProjection354] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7008 (0 : Fin 4)) = canonicalInput14383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14383 hH))).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7008 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6125 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6125 hH))).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7008 (2 : Fin 4)) = canonicalInput15114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15114 hH))).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7008 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1341).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection354 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7008 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7674).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7008 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7674).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7008 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7008 ![reductionProjection2266, oldProjection477, reductionProjection211, reductionProjection354]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7009 : Integer.Sparse (Fin 1613) := [(1342, 1)]

theorem reductionSound7009 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1342).moment H =
      Integer.Sparse.eval reductionProjection7009 (momentVector H) := by
  have hc : coordinates (1342 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1342) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7009, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7010 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 25), (294, 720), (303, 720), (434, 1440), (698, 320), (768, 720), (1226, 160), (1227, 240), (1251, -45), (1332, -1440), (1341, 720), (1342, -1440)]

def reductionPivot7010 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![3, -1, -1, 0, -1], ![-1, 3, -1, -2, 1]]

theorem reductionSound7010 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9155).moment H =
      Integer.Sparse.eval reductionProjection7010 (momentVector H) := by
  have heq : reductionPivot7010 = (fun u v => (normalNode9155).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9155).moment H = injectiveMoment H reductionPivot7010 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9155).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9155).entries)).symm
  have hshape : reductionPivot7010 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7010 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 2, 1440, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7010 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7007, reductionProjection7008, reductionProjection6039, reductionProjection7009] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7010 (0 : Fin 4)) = canonicalInput4422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7007 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4422 hH))).trans (reductionSound7007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7010 (1 : Fin 4)) = canonicalInput18363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7008 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18363 hH))).trans (reductionSound7008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7010 (2 : Fin 4)) = canonicalInput18423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6039 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18423 hH))).trans (reductionSound6039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7010 (3 : Fin 4)) = canonicalInput18425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7009 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7010 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7009 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18425 hH))).trans (reductionSound7009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9155).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7010 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9155).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7010 (j : Fin 4)))
      2 2880 2880 2 ![1, 2, 1440, 1] ![2880, 1440, 2, 2880] reductionProjection7010 ![reductionProjection7007, reductionProjection7008, reductionProjection6039, reductionProjection7009]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7011 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (79, -240), (81, -240), (90, 80), (94, 30), (302, 360), (433, 360), (698, 320), (700, 80), (767, 360), (768, 360), (1226, 120), (1227, 40), (1251, 15), (1323, -120), (1389, -120)]

def reductionPivot7011 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, -1, 0, 0], ![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]

theorem reductionSound7011 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8004).moment H =
      Integer.Sparse.eval reductionProjection7011 (momentVector H) := by
  have heq : reductionPivot7011 = (fun u v => (normalNode8004).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8004).moment H = injectiveMoment H reductionPivot7011 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8004).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7011 0 = Pi.single (0 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7011 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 2, 720, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7011 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection211, reductionProjection6687, reductionProjection2270, reductionProjection307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7011 (0 : Fin 4)) = canonicalInput24647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24647 hH))).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7011 (1 : Fin 4)) = canonicalInput15597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6687 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15597 hH))).trans (reductionSound6687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7011 (2 : Fin 4)) = canonicalInput15501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2270 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15501 hH))).trans (reductionSound2270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7011 (3 : Fin 4)) = canonicalInput15496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7011 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15496 hH))).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8004).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7011 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8004).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7011 (j : Fin 4)))
      2 1440 1440 2 ![1, 2, 720, 36] ![1440, 720, 2, 40] reductionProjection7011 ![reductionProjection211, reductionProjection6687, reductionProjection2270, reductionProjection307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7012 : Integer.Sparse (Fin 1613) := [(814, 1)]

theorem reductionSound7012 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code814).moment H =
      Integer.Sparse.eval reductionProjection7012 (momentVector H) := by
  have hc : coordinates (814 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code814) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7012, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7013 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (20, 5), (76, -480), (79, -240), (87, -240), (88, 160), (90, 480), (94, 60), (241, 80), (243, 160), (698, 1120), (700, 320), (704, 80), (768, 720), (1226, 800), (1227, 240), (1251, -30), (1323, -240)]

def reductionPivot7013 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound7013 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8030).moment H =
      Integer.Sparse.eval reductionProjection7013 (momentVector H) := by
  have heq : reductionPivot7013 = (fun u v => (normalNode8030).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8030).moment H = injectiveMoment H reductionPivot7013 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8030).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7013 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7013 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 288, 18] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7013 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2543, oldProjection2532, reductionProjection4924, reductionProjection7002] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7013 (0 : Fin 4)) = canonicalInput17780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2543 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17780 hH))).trans (oldProjectionSound2543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7013 (1 : Fin 4)) = canonicalInput15551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15551 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7013 (2 : Fin 4)) = canonicalInput15535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15535 hH))).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7013 (3 : Fin 4)) = canonicalInput15530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7002 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7013 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15530 hH))).trans (reductionSound7002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8030).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7013 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8030).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7013 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 288, 18] ![10, 2, 10, 160] reductionProjection7013 ![oldProjection2543, oldProjection2532, reductionProjection4924, reductionProjection7002]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7014 : Integer.Sparse (Fin 1613) := [(0, -3), (76, -720), (79, -240), (87, -240), (90, 320), (94, 110), (243, 80), (549, 720), (565, 720), (596, 720), (630, 720), (698, 1280), (700, 160), (768, 720), (1226, 960), (1227, 400), (1251, -55), (1323, -480)]

def reductionPivot7014 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]

theorem reductionSound7014 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8001).moment H =
      Integer.Sparse.eval reductionProjection7014 (momentVector H) := by
  have heq : reductionPivot7014 = (fun u v => (normalNode8001).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8001).moment H = injectiveMoment H reductionPivot7014 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8001).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7014 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7014 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1440, 288, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7014 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1942, oldProjection1946, reductionProjection305, reductionProjection307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7014 (0 : Fin 4)) = canonicalInput17801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1942 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17801 hH))).trans (oldProjectionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7014 (1 : Fin 4)) = canonicalInput15505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15505 hH))).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7014 (2 : Fin 4)) = canonicalInput15499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection305 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15499 hH))).trans (reductionSound305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7014 (3 : Fin 4)) = canonicalInput15496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7014 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15496 hH))).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8001).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7014 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8001).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7014 (j : Fin 4)))
      2 2880 2880 2 ![144, 1440, 288, 36] ![20, 2, 10, 80] reductionProjection7014 ![oldProjection1942, oldProjection1946, reductionProjection305, reductionProjection307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7015 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 40), (20, -5), (76, 1680), (79, 960), (81, 480), (87, 480), (88, -160), (90, -960), (94, -255), (241, -80), (243, -240), (294, -720), (302, -720), (303, -720), (433, -720), (434, -1440), (549, -720), (565, -720), (596, -720), (630, -720), (698, -3360), (700, -640), (704, -80), (767, -720), (768, -2880), (814, -2880), (1226, -2160), (1227, -960), (1251, 100), (1323, 960), (1332, 1440), (1341, -720), (1342, 1440), (1389, 240)]

def reductionPivot7015 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 0, -1, -1]]

theorem reductionSound7015 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3641).moment H =
      Integer.Sparse.eval reductionProjection7015 (momentVector H) := by
  have heq : reductionPivot7015 = (fun u v => (normalNode3641).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3641).moment H = injectiveMoment H reductionPivot7015 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3641).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7015 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7015 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 1, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7015 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7010, reductionProjection7011, reductionProjection7012, reductionProjection7013, reductionProjection7014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7015 (0 : Fin 5)) = canonicalInput4270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7010 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4270 hH))).trans (reductionSound7010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7015 (1 : Fin 5)) = canonicalInput6816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7011 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6816 hH))).trans (reductionSound7011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7015 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code814).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7012 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7015 (3 : Fin 5)) = canonicalInput6832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7013 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6832 hH))).trans (reductionSound7013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7015 (4 : Fin 5)) = canonicalInput6834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7014 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7015 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6834 hH))).trans (reductionSound7014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3641).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7015 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3641).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7015 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 1, 2880, 2880] ![1, 2, 2880, 1, 1] reductionProjection7015 ![reductionProjection7010, reductionProjection7011, reductionProjection7012, reductionProjection7013, reductionProjection7014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7016 : Integer.Sparse (Fin 1613) := [(1360, 1)]

theorem reductionSound7016 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1360).moment H =
      Integer.Sparse.eval reductionProjection7016 (momentVector H) := by
  have hc : coordinates (1360 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1360) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7016, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7017 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -80), (303, -360), (446, -360), (698, -160), (700, -40), (1226, -120), (1251, 15)]

def reductionPivot7017 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 2, -3], ![1, 1, -3, 1]]

theorem reductionSound7017 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8788).moment H =
      Integer.Sparse.eval reductionProjection7017 (momentVector H) := by
  have heq : reductionPivot7017 = (fun u v => (normalNode8788).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8788).moment H = injectiveMoment H reductionPivot7017 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8788).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7017 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7017 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7017 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection949, oldProjection950, reductionProjection2266, reductionProjection4118] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7017 (0 : Fin 4)) = canonicalInput20730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection949 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20730 hH))).trans (oldProjectionSound949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7017 (1 : Fin 4)) = canonicalInput16931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection950 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16931 hH))).trans (oldProjectionSound950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7017 (2 : Fin 4)) = canonicalInput16886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16886 hH))).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7017 (3 : Fin 4)) = canonicalInput16881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7017 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16881 hH))).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8788).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7017 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8788).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7017 (j : Fin 4)))
      2 720 720 2 ![720, 720, 1, 1] ![1, 1, 720, 720] reductionProjection7017 ![oldProjection949, oldProjection950, reductionProjection2266, reductionProjection4118]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7018 : Integer.Sparse (Fin 1613) := [(1359, 1)]

theorem reductionSound7018 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1359).moment H =
      Integer.Sparse.eval reductionProjection7018 (momentVector H) := by
  have hc : coordinates (1359 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1359) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7018, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7019 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (303, 720), (434, 360), (446, 360), (698, 160), (700, 40), (768, 360), (1226, 120), (1251, -15), (1341, 360), (1359, -720), (1360, -720)]

def reductionPivot7019 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![-1, 3, -1, 0, -1], ![3, -1, -1, -2, 1]]

theorem reductionSound7019 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8005).moment H =
      Integer.Sparse.eval reductionProjection7019 (momentVector H) := by
  have heq : reductionPivot7019 = (fun u v => (normalNode8005).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8005).moment H = injectiveMoment H reductionPivot7019 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8005).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8005).entries)).symm
  have hshape : reductionPivot7019 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7019 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 2, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7019 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7016, reductionProjection7008, reductionProjection7017, reductionProjection7018] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7019 (0 : Fin 4)) = canonicalInput4409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7016 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4409 hH))).trans (reductionSound7016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7019 (1 : Fin 4)) = canonicalInput18358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7008 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18358 hH))).trans (reductionSound7008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7019 (2 : Fin 4)) = canonicalInput18413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7017 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18413 hH))).trans (reductionSound7017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7019 (3 : Fin 4)) = canonicalInput18416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7018 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7019 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18416 hH))).trans (reductionSound7018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8005).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7019 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8005).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7019 (j : Fin 4)))
      2 1440 1440 2 ![1, 2, 720, 1] ![1440, 720, 2, 1440] reductionProjection7019 ![reductionProjection7016, reductionProjection7008, reductionProjection7017, reductionProjection7018]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7020 : Integer.Sparse (Fin 1613) := [(815, 1)]

theorem reductionSound7020 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code815).moment H =
      Integer.Sparse.eval reductionProjection7020 (momentVector H) := by
  have hc : coordinates (815 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code815) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7020, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7021 : Integer.Sparse (Fin 1613) := [(79, -6), (81, -12), (87, -6), (88, 2), (90, 10), (94, 2), (698, 30), (700, 4), (768, 18), (1059, 2), (1226, 18), (1227, 10), (1251, -3), (1389, -6)]

def reductionPivot7021 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound7021 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode8034).moment H =
      Integer.Sparse.eval reductionProjection7021 (momentVector H) := by
  have heq : reductionPivot7021 = (fun u v => (normalNode8034).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8034).moment H = injectiveMoment H reductionPivot7021 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8034).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7021 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7021 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7021 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2541, oldProjection2545, reductionProjection4924, reductionProjection4960] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7021 (0 : Fin 4)) = canonicalInput17823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2541 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17823 hH))).trans (oldProjectionSound2541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7021 (1 : Fin 4)) = canonicalInput15563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2545 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15563 hH))).trans (oldProjectionSound2545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7021 (2 : Fin 4)) = canonicalInput15535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15535 hH))).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7021 (3 : Fin 4)) = canonicalInput15527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4960 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7021 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15527 hH))).trans (reductionSound4960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8034).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7021 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8034).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7021 (j : Fin 4)))
      2 72 1440 40 ![720, 1440, 288, 1440] ![2, 1, 5, 1] reductionProjection7021 ![oldProjection2541, oldProjection2545, reductionProjection4924, reductionProjection4960]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7022 : Integer.Sparse (Fin 1613) := [(0, -3), (79, -240), (81, -720), (87, -240), (90, 560), (94, 75), (243, 80), (618, 720), (640, 720), (642, 720), (698, 1280), (700, 560), (704, 80), (768, 720), (1117, 720), (1226, 720), (1227, 400), (1251, 10), (1389, -480)]

def reductionPivot7022 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0]]

theorem reductionSound7022 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8000).moment H =
      Integer.Sparse.eval reductionProjection7022 (momentVector H) := by
  have heq : reductionPivot7022 = (fun u v => (normalNode8000).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8000).moment H = injectiveMoment H reductionPivot7022 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8000).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7022 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7022 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 18, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7022 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1947, oldProjection1690, reductionProjection353, reductionProjection2270] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7022 (0 : Fin 4)) = canonicalInput17769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1947 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17769 hH))).trans (oldProjectionSound1947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7022 (1 : Fin 4)) = canonicalInput15503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15503 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7022 (2 : Fin 4)) = canonicalInput15500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection353 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15500 hH))).trans (reductionSound353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7022 (3 : Fin 4)) = canonicalInput15498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2270 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7022 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15498 hH))).trans (reductionSound2270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8000).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7022 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8000).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7022 (j : Fin 4)))
      2 2880 2880 2 ![1440, 288, 18, 720] ![2, 10, 160, 4] reductionProjection7022 ![oldProjection1947, oldProjection1690, reductionProjection353, reductionProjection2270]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7023 : Integer.Sparse (Fin 1613) := [(0, 7), (76, 480), (79, 960), (81, 1680), (87, 480), (88, -80), (90, -1280), (94, -215), (243, -80), (302, -720), (303, -1440), (433, -720), (434, -720), (446, -720), (618, -720), (640, -720), (642, -720), (698, -3440), (700, -960), (704, -80), (767, -720), (768, -2880), (815, -2880), (1059, -80), (1117, -720), (1226, -1920), (1227, -880), (1251, 110), (1323, 240), (1341, -720), (1359, 1440), (1360, 1440), (1389, 960)]

def reductionPivot7023 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0], ![1, 1, 0, -1, -1]]

theorem reductionSound7023 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3642).moment H =
      Integer.Sparse.eval reductionProjection7023 (momentVector H) := by
  have heq : reductionPivot7023 = (fun u v => (normalNode3642).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3642).moment H = injectiveMoment H reductionPivot7023 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3642).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7023 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7023 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 72, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7023 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7019, reductionProjection7011, reductionProjection7020, reductionProjection7021, reductionProjection7022] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7023 (0 : Fin 5)) = canonicalInput4271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7019 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4271 hH))).trans (reductionSound7019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7023 (1 : Fin 5)) = canonicalInput6817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7011 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6817 hH))).trans (reductionSound7011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7023 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code815).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7020 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7023 (3 : Fin 5)) = canonicalInput6835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6835 hH))).trans (reductionSound7021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7023 (4 : Fin 5)) = canonicalInput6836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7022 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7023 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6836 hH))).trans (reductionSound7022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3642).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7023 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3642).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7023 (j : Fin 5)))
      1 2880 2880 1 ![1440, 1440, 1, 72, 2880] ![2, 2, 2880, 40, 1] reductionProjection7023 ![reductionProjection7019, reductionProjection7011, reductionProjection7020, reductionProjection7021, reductionProjection7022]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7024 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -48), (94, 14), (241, 32), (429, -288), (505, 144), (635, 144), (642, 144), (697, -144), (698, 96), (700, 16), (704, 16), (1089, 144), (1226, 16), (1251, -9), (1360, -288)]

def reductionPivot7024 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![1, 0, 1, 1, -3], ![1, 2, -3, -1, 1]]

theorem reductionSound7024 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8478).moment H =
      Integer.Sparse.eval reductionProjection7024 (momentVector H) := by
  have heq : reductionPivot7024 = (fun u v => (normalNode8478).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8478).moment H = injectiveMoment H reductionPivot7024 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8478).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8478).entries)).symm
  have hshape : reductionPivot7024 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7024 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7024 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4443, reductionProjection7016, oldProjection1689, reductionProjection6873] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7024 (0 : Fin 4)) = canonicalInput3104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4443 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3104 hH))).trans (reductionSound4443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7024 (1 : Fin 4)) = canonicalInput16257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7016 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16257 hH))).trans (reductionSound7016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7024 (2 : Fin 4)) = canonicalInput16442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1689 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16442 hH))).trans (oldProjectionSound1689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7024 (3 : Fin 4)) = canonicalInput16455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6873 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7024 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16455 hH))).trans (reductionSound6873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8478).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7024 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8478).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7024 (j : Fin 4)))
      2 576 2880 10 ![1, 1, 1440, 1440] ![2880, 2880, 2, 2] reductionProjection7024 ![reductionProjection4443, reductionProjection7016, oldProjection1689, reductionProjection6873]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7025 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (79, -144), (81, -96), (90, 16), (94, 20), (241, 32), (421, 144), (691, -48), (697, -96), (698, 176), (700, 32), (704, 16), (762, 144), (767, 288), (768, 144), (800, 144), (1226, 80), (1227, 16), (1251, -3), (1323, -48)]

def reductionPivot7025 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]

theorem reductionSound7025 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8011).moment H =
      Integer.Sparse.eval reductionProjection7025 (momentVector H) := by
  have heq : reductionPivot7025 = (fun u v => (normalNode8011).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8011).moment H = injectiveMoment H reductionPivot7025 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8011).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7025 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7025 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 36, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7025 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6688, reductionProjection307, reductionProjection2207, reductionProjection2274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7025 (0 : Fin 4)) = canonicalInput13554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6688 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13554 hH))).trans (reductionSound6688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7025 (1 : Fin 4)) = canonicalInput15496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15496 hH))).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7025 (2 : Fin 4)) = canonicalInput15521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15521 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7025 (3 : Fin 4)) = canonicalInput15532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7025 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15532 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8011).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7025 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8011).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7025 (j : Fin 4)))
      2 576 2880 10 ![1440, 36, 288, 1440] ![2, 80, 10, 2] reductionProjection7025 ![reductionProjection6688, reductionProjection307, reductionProjection2207, reductionProjection2274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7026 : Integer.Sparse (Fin 1613) := [(0, -4), (76, -240), (79, -240), (81, -480), (90, 80), (94, 65), (241, 80), (640, 360), (642, 720), (697, -480), (698, 560), (700, 160), (704, 80), (767, 360), (1089, 360), (1226, 240), (1227, 80), (1251, -15)]

def reductionPivot7026 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]

theorem reductionSound7026 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8039).moment H =
      Integer.Sparse.eval reductionProjection7026 (momentVector H) := by
  have heq : reductionPivot7026 = (fun u v => (normalNode8039).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8039).moment H = injectiveMoment H reductionPivot7026 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8039).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7026 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7026 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7026 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1643, reductionProjection6873, reductionProjection4980, reductionProjection2274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7026 (0 : Fin 4)) = canonicalInput20483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20483 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7026 (1 : Fin 4)) = canonicalInput15594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6873 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15594 hH))).trans (reductionSound6873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7026 (2 : Fin 4)) = canonicalInput15538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4980 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15538 hH))).trans (reductionSound4980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7026 (3 : Fin 4)) = canonicalInput15532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7026 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15532 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8039).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7026 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8039).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7026 (j : Fin 4)))
      2 1440 1440 2 ![360, 1440, 288, 1440] ![4, 1, 5, 1] reductionProjection7026 ![oldProjection1643, reductionProjection6873, reductionProjection4980, reductionProjection2274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7027 : Integer.Sparse (Fin 1613) := [(1375, 1)]

theorem reductionSound7027 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1375).moment H =
      Integer.Sparse.eval reductionProjection7027 (momentVector H) := by
  have hc : coordinates (1375 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1375) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7027, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7028 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (94, -35), (461, -720), (505, -720), (698, -320), (1226, -240), (1227, -80), (1251, 30)]

def reductionPivot7028 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound7028 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5282).moment H =
      Integer.Sparse.eval reductionProjection7028 (momentVector H) := by
  have heq : reductionPivot7028 = (fun u v => (normalNode5282).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5282).moment H = injectiveMoment H reductionPivot7028 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5282).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7028 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7028 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7028 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1016, oldProjection481, oldProjection495, oldProjection1003] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7028 (0 : Fin 4)) = canonicalInput8391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1016 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8391 hH))).trans (oldProjectionSound1016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7028 (1 : Fin 4)) = canonicalInput10387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection481 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10387 hH))).trans (oldProjectionSound481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7028 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4676 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection495 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4676 hH))).trans (oldProjectionSound495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7028 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4678 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1003 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7028 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4678 hH))).trans (oldProjectionSound1003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5282).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7028 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5282).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7028 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 1, 720] ![10, 1440, 1440, 2] reductionProjection7028 ![oldProjection1016, oldProjection481, oldProjection495, oldProjection1003]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7029 : Integer.Sparse (Fin 1613) := [(0, -3), (48, -1440), (79, -240), (81, -720), (90, 80), (94, 40), (461, 720), (505, 720), (640, 720), (642, 720), (698, 560), (700, 80), (1226, 400), (1227, 160), (1251, -45), (1375, -1440)]

def reductionPivot7029 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![-1, 0, 3, -2, 0], ![0, 2, -2, 1, -1], ![3, -1, -1, 0, -1]]

theorem reductionSound7029 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7503).moment H =
      Integer.Sparse.eval reductionProjection7029 (momentVector H) := by
  have heq : reductionPivot7029 = (fun u v => (normalNode7503).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7503).moment H = injectiveMoment H reductionPivot7029 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7503).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7503).entries)).symm
  have hshape : reductionPivot7029 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7029 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7029 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection312, reductionProjection7027, reductionProjection4980, reductionProjection7028] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7029 (0 : Fin 4)) = canonicalInput3005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3005 hH))).trans (reductionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7029 (1 : Fin 4)) = canonicalInput16216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7027 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7027 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16216 hH))).trans (reductionSound7027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7029 (2 : Fin 4)) = canonicalInput16299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4980 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16299 hH))).trans (reductionSound4980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7029 (3 : Fin 4)) = canonicalInput16300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7028 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7029 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16300 hH))).trans (reductionSound7028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7503).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7029 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7503).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7029 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 288, 1440] ![2880, 2880, 10, 2] reductionProjection7029 ![reductionProjection312, reductionProjection7027, reductionProjection4980, reductionProjection7028]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7030 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (20, 1), (76, -96), (79, -96), (81, -96), (88, 32), (90, 96), (94, 12), (241, 32), (243, 32), (247, 16), (697, -96), (698, 160), (700, 96), (704, 32), (767, 144), (1226, 96), (1251, 4)]

def reductionPivot7030 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound7030 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8035).moment H =
      Integer.Sparse.eval reductionProjection7030 (momentVector H) := by
  have heq : reductionPivot7030 = (fun u v => (normalNode8035).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8035).moment H = injectiveMoment H reductionPivot7030 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8035).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7030 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7030 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 1440, 18] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7030 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2719, oldProjection2698, reductionProjection2274, reductionProjection7002] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7030 (0 : Fin 4)) = canonicalInput17824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2719 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17824 hH))).trans (oldProjectionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7030 (1 : Fin 4)) = canonicalInput15564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2698 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15564 hH))).trans (oldProjectionSound2698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7030 (2 : Fin 4)) = canonicalInput15536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15536 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7030 (3 : Fin 4)) = canonicalInput15530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7002 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7030 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15530 hH))).trans (reductionSound7002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8035).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7030 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8035).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7030 (j : Fin 4)))
      2 576 2880 10 ![1440, 288, 1440, 18] ![2, 10, 2, 160] reductionProjection7030 ![oldProjection2719, oldProjection2698, reductionProjection2274, reductionProjection7002]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7031 : Integer.Sparse (Fin 1613) := [(0, 26), (19, 40), (20, -5), (48, 1440), (76, 2400), (79, 1920), (81, 2640), (88, -160), (90, -800), (94, -400), (241, -640), (243, -160), (247, -80), (421, -720), (429, 1440), (461, -720), (505, -1440), (635, -720), (640, -1440), (642, -2880), (691, 240), (697, 2640), (698, -3840), (700, -1120), (704, -480), (762, -720), (767, -2880), (768, -720), (800, -720), (1089, -1440), (1226, -1840), (1227, -400), (1251, 115), (1323, 240), (1360, 1440), (1375, 1440)]

def reductionPivot7031 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0]]

theorem reductionSound7031 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3643).moment H =
      Integer.Sparse.eval reductionProjection7031 (momentVector H) := by
  have heq : reductionPivot7031 = (fun u v => (normalNode3643).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3643).moment H = injectiveMoment H reductionPivot7031 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3643).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7031 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7031 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 576, 1440, 2880, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7031 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7024, reductionProjection7025, reductionProjection7026, reductionProjection7029, reductionProjection7030] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7031 (0 : Fin 5)) = canonicalInput4272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7024 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4272 hH))).trans (reductionSound7024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7031 (1 : Fin 5)) = canonicalInput6818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7025 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6818 hH))).trans (reductionSound7025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7031 (2 : Fin 5)) = canonicalInput6833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7026 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7026 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6833 hH))).trans (reductionSound7026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7031 (3 : Fin 5)) = canonicalInput6839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7029 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6839 hH))).trans (reductionSound7029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7031 (4 : Fin 5)) = canonicalInput6841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7030 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7031 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6841 hH))).trans (reductionSound7030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3643).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7031 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3643).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7031 (j : Fin 5)))
      1 2880 2880 1 ![576, 576, 1440, 2880, 576] ![5, 5, 2, 1, 5] reductionProjection7031 ![reductionProjection7024, reductionProjection7025, reductionProjection7026, reductionProjection7029, reductionProjection7030]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7032 : Integer.Sparse (Fin 1613) := [(1069, 1)]

theorem reductionSound7032 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1069).moment H =
      Integer.Sparse.eval reductionProjection7032 (momentVector H) := by
  have hc : coordinates (1069 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1069) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7032, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7033 : Integer.Sparse (Fin 1613) := [(94, 5), (549, 72), (565, 72), (698, 24), (778, -144), (1069, -144), (1226, 8), (1227, 8), (1251, -3), (1332, -144)]

def reductionPivot7033 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![-1, -1, 3, -1, 0], ![3, 1, -1, -1, -2]]

theorem reductionSound7033 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8009).moment H =
      Integer.Sparse.eval reductionProjection7033 (momentVector H) := by
  have heq : reductionPivot7033 = (fun u v => (normalNode8009).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8009).moment H = injectiveMoment H reductionPivot7033 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8009).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8009).entries)).symm
  have hshape : reductionPivot7033 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7033 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7033 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7032, reductionProjection7007, reductionProjection6875, oldProjection1942] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7033 (0 : Fin 4)) = canonicalInput3413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7032 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3413 hH))).trans (reductionSound7032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7033 (1 : Fin 4)) = canonicalInput16301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7007 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16301 hH))).trans (reductionSound7007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7033 (2 : Fin 4)) = canonicalInput16771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6875 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6875 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16771 hH))).trans (reductionSound6875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7033 (3 : Fin 4)) = canonicalInput16773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1942 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7033 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16773 hH))).trans (oldProjectionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8009).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7033 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8009).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7033 (j : Fin 4)))
      2 288 288 2 ![1, 1, 1, 144] ![288, 288, 288, 2] reductionProjection7033 ![reductionProjection7032, reductionProjection7007, reductionProjection6875, oldProjection1942]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7034 : Integer.Sparse (Fin 1613) := [(400, -1), (426, -1), (630, -1), (781, -1)]

def reductionPivot7034 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, -3, 2, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound7034 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3713).moment H =
      Integer.Sparse.eval reductionProjection7034 (momentVector H) := by
  have heq : reductionPivot7034 = (fun u v => (normalNode3713).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3713).moment H = injectiveMoment H reductionPivot7034 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3713).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7034 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7034 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7034 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection299, oldProjection473, reductionProjection278, oldProjection589] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7034 (0 : Fin 4)) = canonicalInput9990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9990 hH))).trans (reductionSound299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7034 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3320 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3320 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7034 (2 : Fin 4)) = canonicalInput7208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7208 hH))).trans (reductionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7034 (3 : Fin 4)) = canonicalInput7205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection589 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7034 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7205 hH))).trans (oldProjectionSound589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3713).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7034 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3713).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7034 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7034 ![reductionProjection299, oldProjection473, reductionProjection278, oldProjection589]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7035 : Integer.Sparse (Fin 1613) := [(76, -144), (79, -48), (90, 32), (94, 7), (241, 48), (243, 16), (400, 144), (426, 144), (565, 144), (630, 144), (691, -96), (698, 112), (700, 48), (704, 16), (762, 144), (775, 144), (781, 288), (808, 144), (1055, -48), (1226, 48), (1227, 16), (1251, -13)]

def reductionPivot7035 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, -1, 3], ![0, -1, 2, -1, 0], ![0, 0, -2, 3, -1], ![1, 1, 0, 0, -2]]

theorem reductionSound7035 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8017).moment H =
      Integer.Sparse.eval reductionProjection7035 (momentVector H) := by
  have heq : reductionPivot7035 = (fun u v => (normalNode8017).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8017).moment H = injectiveMoment H reductionPivot7035 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8017).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7035 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7035 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7035 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1949, reductionProjection2207, oldProjection1944, reductionProjection7034] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7035 (0 : Fin 4)) = canonicalInput20399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1949 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20399 hH))).trans (oldProjectionSound1949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7035 (1 : Fin 4)) = canonicalInput15586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15586 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7035 (2 : Fin 4)) = canonicalInput15508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15508 hH))).trans (oldProjectionSound1944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7035 (3 : Fin 4)) = canonicalInput15507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7034 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7035 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7034 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15507 hH))).trans (reductionSound7034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8017).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7035 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8017).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7035 (j : Fin 4)))
      2 576 2880 10 ![1440, 288, 1440, 2] ![2, 10, 2, 1440] reductionProjection7035 ![oldProjection1949, reductionProjection2207, oldProjection1944, reductionProjection7034]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7036 : Integer.Sparse (Fin 1613) := [(816, 1)]

theorem reductionSound7036 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code816).moment H =
      Integer.Sparse.eval reductionProjection7036 (momentVector H) := by
  have hc : coordinates (816 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code816) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7036, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7037 : Integer.Sparse (Fin 1613) := [(76, 48), (79, 48), (88, -16), (90, -48), (94, -9), (698, -112), (700, -48), (704, -16), (1226, -64), (1227, -32), (1251, 3)]

def reductionPivot7037 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound7037 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7830).moment H =
      Integer.Sparse.eval reductionProjection7037 (momentVector H) := by
  have heq : reductionPivot7037 = (fun u v => (normalNode7830).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7830).moment H = injectiveMoment H reductionPivot7037 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7830).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7037 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7037 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7037 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1001, oldProjection939, reductionProjection306, reductionProjection364] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7037 (0 : Fin 4)) = canonicalInput19552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1001 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19552 hH))).trans (oldProjectionSound1001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7037 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection939 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6218 hH))).trans (oldProjectionSound939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7037 (2 : Fin 4)) = canonicalInput15258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15258 hH))).trans (reductionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7037 (3 : Fin 4)) = canonicalInput15254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection364 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7037 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15254 hH))).trans (reductionSound364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7830).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7037 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7830).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7037 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 144, 9] ![2, 2, 10, 160] reductionProjection7037 ![oldProjection1001, oldProjection939, reductionProjection306, reductionProjection364]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7038 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (76, -240), (79, -120), (88, 20), (90, 80), (94, 40), (104, 20), (241, 80), (691, -120), (698, 400), (700, 120), (704, 80), (762, 180), (1226, 160), (1227, 80), (1251, -15)]

def reductionPivot7038 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]

theorem reductionSound7038 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8027).moment H =
      Integer.Sparse.eval reductionProjection7038 (momentVector H) := by
  have heq : reductionPivot7038 = (fun u v => (normalNode8027).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8027).moment H = injectiveMoment H reductionPivot7038 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8027).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7038 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7038 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7038 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2826, oldProjection2812, reductionProjection2207, reductionProjection7037] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7038 (0 : Fin 4)) = canonicalInput17777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2826 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17777 hH))).trans (oldProjectionSound2826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7038 (1 : Fin 4)) = canonicalInput15543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2812 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15543 hH))).trans (oldProjectionSound2812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7038 (2 : Fin 4)) = canonicalInput15521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15521 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7038 (3 : Fin 4)) = canonicalInput15519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7037 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7038 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15519 hH))).trans (reductionSound7037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8027).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7038 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8027).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7038 (j : Fin 4)))
      2 720 1440 4 ![1440, 1440, 288, 288] ![1, 1, 5, 5] reductionProjection7038 ![oldProjection2826, oldProjection2812, reductionProjection2207, reductionProjection7037]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7039 : Integer.Sparse (Fin 1613) := [(0, 9), (19, 80), (76, 2880), (79, 1440), (81, 480), (88, -80), (90, -560), (94, -345), (104, -80), (241, -720), (243, -80), (400, -720), (421, -720), (426, -720), (549, -720), (565, -1440), (630, -720), (691, 1200), (697, 480), (698, -3280), (700, -880), (704, -480), (762, -2160), (767, -1440), (768, -720), (775, -720), (778, 1440), (781, -1440), (800, -720), (808, -720), (816, -2880), (1055, 240), (1069, 1440), (1226, -1360), (1227, -560), (1251, 170), (1323, 240), (1332, 1440)]

def reductionPivot7039 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, 0, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound7039 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode3644).moment H =
      Integer.Sparse.eval reductionProjection7039 (momentVector H) := by
  have heq : reductionPivot7039 = (fun u v => (normalNode3644).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3644).moment H = injectiveMoment H reductionPivot7039 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3644).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7039 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7039 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 576, 576, 1, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7039 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7033, reductionProjection7025, reductionProjection7035, reductionProjection7036, reductionProjection7038] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7039 (0 : Fin 5)) = canonicalInput4273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7033 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7033 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4273 hH))).trans (reductionSound7033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7039 (1 : Fin 5)) = canonicalInput6819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7025 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6819 hH))).trans (reductionSound7025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7039 (2 : Fin 5)) = canonicalInput6837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7035 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6837 hH))).trans (reductionSound7035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7039 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code816).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7036 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7039 (4 : Fin 5)) = canonicalInput6845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7038 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7039 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6845 hH))).trans (reductionSound7038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3644).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7039 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3644).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7039 (j : Fin 5)))
      1 2880 2880 1 ![288, 576, 576, 1, 720] ![10, 5, 5, 2880, 4] reductionProjection7039 ![reductionProjection7033, reductionProjection7025, reductionProjection7035, reductionProjection7036, reductionProjection7038]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

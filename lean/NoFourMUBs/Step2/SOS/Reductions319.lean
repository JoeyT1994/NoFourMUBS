import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical196
import NoFourMUBs.Step2.SOS.Canonical206
import NoFourMUBs.Step2.SOS.Canonical208
import NoFourMUBs.Step2.SOS.Canonical209
import NoFourMUBs.Step2.SOS.Canonical210
import NoFourMUBs.Step2.SOS.Canonical212
import NoFourMUBs.Step2.SOS.Canonical213
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical235
import NoFourMUBs.Step2.SOS.Canonical236
import NoFourMUBs.Step2.SOS.Canonical264
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions093
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions107
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions122
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions220
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions318
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical193
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10208 : Integer.Sparse (Fin 1613) := [(0, -27), (81, 1680), (87, 480), (88, -80), (90, -240), (94, -235), (228, 720), (241, -80), (243, -160), (508, -1440), (578, -720), (602, -2880), (603, -720), (616, -1440), (618, -1440), (638, -720), (639, -720), (642, -1440), (674, -720), (698, -6000), (700, -80), (1050, 480), (1058, 960), (1059, -1520), (1221, 1200), (1226, -2320), (1227, -3040), (1251, 1020), (1389, 480)]

def reductionPivot10208 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -2, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound10208 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6593).moment H =
      Integer.Sparse.eval reductionProjection10208 (momentVector H) := by
  have heq : reductionPivot10208 = (fun u v => (normalNode6593).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6593).moment H = injectiveMoment H reductionPivot10208 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6593).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10208 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10208 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10208 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10206, reductionProjection10207, reductionProjection3423, reductionProjection3179, reductionProjection3438] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10208 (0 : Fin 5)) = canonicalInput13613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10206 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13613 hH))).trans (reductionSound10206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10208 (1 : Fin 5)) = (normalNode6615).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10207 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound10207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10208 (2 : Fin 5)) = canonicalInput13219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3423 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13219 hH))).trans (reductionSound3423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10208 (3 : Fin 5)) = (normalNode6600).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3179 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10208 (4 : Fin 5)) = canonicalInput13213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3438 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10208 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3438 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13213 hH))).trans (reductionSound3438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6593).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10208 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6593).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10208 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 1440, 2880, 2880] ![1, 1, 2, 1, 1] reductionProjection10208 ![reductionProjection10206, reductionProjection10207, reductionProjection3423, reductionProjection3179, reductionProjection3438]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10209 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (241, 20), (247, 20), (433, 180), (698, 180), (775, 180), (807, 180), (808, 180), (865, 360), (1050, -120), (1055, -60), (1059, 120), (1128, 180), (1221, -120), (1227, 40), (1251, -25)]

def reductionPivot10209 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -2, 0, 2, 1], ![0, 0, -2, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound10209 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6622).moment H =
      Integer.Sparse.eval reductionProjection10209 (momentVector H) := by
  have heq : reductionPivot10209 = (fun u v => (normalNode6622).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6622).moment H = injectiveMoment H reductionPivot10209 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6622).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10209 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10209 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10209 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3281, reductionProjection3279, reductionProjection3911, reductionProjection7553] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10209 (0 : Fin 4)) = canonicalInput13965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3281 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13965 hH))).trans (reductionSound3281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10209 (1 : Fin 4)) = canonicalInput13326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13326 hH))).trans (reductionSound3279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10209 (2 : Fin 4)) = canonicalInput13319.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3911 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13319 hH))).trans (reductionSound3911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10209 (3 : Fin 4)) = canonicalInput13317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7553 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10209 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13317 hH))).trans (reductionSound7553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6622).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10209 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6622).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10209 (j : Fin 4)))
      2 720 1440 4 ![720, 1440, 1440, 1440] ![2, 1, 1, 1] reductionProjection10209 ![reductionProjection3281, reductionProjection3279, reductionProjection3911, reductionProjection7553]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10210 : Integer.Sparse (Fin 1613) := [(1301, 1)]

theorem reductionSound10210 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1301).moment H =
      Integer.Sparse.eval reductionProjection10210 (momentVector H) := by
  have hc : coordinates (1301 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1301) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10210, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10211 : Integer.Sparse (Fin 1613) := [(62, -3), (88, 1), (90, 1), (243, 1), (698, 1), (1226, 2)]

def reductionPivot10211 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -2, 3, -1], ![3, -1, -1, -1], ![-2, 3, -2, 1]]

theorem reductionSound10211 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode10910).moment H =
      Integer.Sparse.eval reductionProjection10211 (momentVector H) := by
  have heq : reductionPivot10211 = (fun u v => (normalNode10910).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10910).moment H = injectiveMoment H reductionPivot10211 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10910).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10910).entries)).symm
  have hshape : reductionPivot10211 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10211 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10211 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection108, oldProjection209, oldProjection100] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10211 (0 : Fin 3)) = canonicalInput14181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10211 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10211 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14181 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10211 (1 : Fin 3)) = canonicalInput24497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10211 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection209 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10211 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24497 hH))).trans (oldProjectionSound209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10211 (2 : Fin 3)) = canonicalInput24500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10211 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10211 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24500 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10910).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10211 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10910).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10211 (j : Fin 3)))
      3 9 9 3 ![3, 3, 1] ![3, 3, 9] reductionProjection10211 ![oldProjection108, oldProjection209, oldProjection100]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10212 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (62, 240), (88, -80), (90, -160), (243, -80), (698, -400), (700, -160), (1059, -80), (1219, 240), (1226, -240), (1227, -160), (1251, 15), (1301, -720)]

def reductionPivot10212 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound10212 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6654).moment H =
      Integer.Sparse.eval reductionProjection10212 (momentVector H) := by
  have heq : reductionPivot10212 = (fun u v => (normalNode6654).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6654).moment H = injectiveMoment H reductionPivot10212 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6654).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10212 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10212 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10212 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1208, reductionProjection4357, reductionProjection10210, reductionProjection10211] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10212 (0 : Fin 4)) = canonicalInput16903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16903 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10212 (1 : Fin 4)) = canonicalInput13434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13434 hH))).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10212 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10212 (3 : Fin 4)) = canonicalInput13396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10211 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10212 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13396 hH))).trans (reductionSound10211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6654).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10212 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6654).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10212 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 9] ![2, 160, 1440, 160] reductionProjection10212 ![oldProjection1208, reductionProjection4357, reductionProjection10210, reductionProjection10211]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10213 : Integer.Sparse (Fin 1613) := [(0, 3), (76, 240), (81, 240), (94, -40), (503, -720), (698, -240), (700, -80), (704, -80), (808, -720), (1059, -80), (1251, -35)]

def reductionPivot10213 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound10213 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6643).moment H =
      Integer.Sparse.eval reductionProjection10213 (momentVector H) := by
  have heq : reductionPivot10213 = (fun u v => (normalNode6643).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6643).moment H = injectiveMoment H reductionPivot10213 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6643).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10213 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10213 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10213 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection823, oldProjection1049, oldProjection603, reductionProjection1078] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10213 (0 : Fin 4)) = canonicalInput23964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23964 hH))).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10213 (1 : Fin 4)) = canonicalInput13487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1049 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13487 hH))).trans (oldProjectionSound1049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10213 (2 : Fin 4)) = canonicalInput13385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection603 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13385 hH))).trans (oldProjectionSound603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10213 (3 : Fin 4)) = canonicalInput13375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10213 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13375 hH))).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6643).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10213 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6643).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10213 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1, 1] ![2, 2, 1440, 1440] reductionProjection10213 ![oldProjection823, oldProjection1049, oldProjection603, reductionProjection1078]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10214 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 5), (56, -240), (62, -240), (76, -240), (81, -240), (88, 80), (90, 160), (94, 60), (241, 160), (243, 240), (247, 80), (503, 720), (694, -240), (697, -240), (698, 1360), (700, 320), (704, 80), (808, 1440), (1047, -480), (1055, -480), (1058, -480), (1059, 400), (1141, 720), (1204, 720), (1219, -240), (1226, 480), (1227, 320), (1251, -195), (1301, 720)]

def reductionPivot10214 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound10214 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6638).moment H =
      Integer.Sparse.eval reductionProjection10214 (momentVector H) := by
  have heq : reductionPivot10214 = (fun u v => (normalNode6638).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6638).moment H = injectiveMoment H reductionPivot10214 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6638).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10214 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10214 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10214 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5218, reductionProjection10212, reductionProjection10213, reductionProjection8871, reductionProjection7298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10214 (0 : Fin 5)) = canonicalInput13663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13663 hH))).trans (reductionSound5218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10214 (1 : Fin 5)) = (normalNode6654).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10212 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10214 (2 : Fin 5)) = (normalNode6643).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10213 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10214 (3 : Fin 5)) = canonicalInput13372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8871 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8871 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13372 hH))).trans (reductionSound8871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10214 (4 : Fin 5)) = canonicalInput13371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7298 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10214 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13371 hH))).trans (reductionSound7298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6638).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10214 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6638).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10214 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 144, 288] ![2, 1, 1, 10, 5] reductionProjection10214 ![reductionProjection5218, reductionProjection10212, reductionProjection10213, reductionProjection8871, reductionProjection7298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10215 : Integer.Sparse (Fin 1613) := [(42, 1), (62, -3), (90, 1), (243, 1), (698, 1), (700, 2)]

def reductionPivot10215 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![3, -2, 0, -1], ![-1, 3, -3, 1]]

theorem reductionSound10215 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9581).moment H =
      Integer.Sparse.eval reductionProjection10215 (momentVector H) := by
  have heq : reductionPivot10215 = (fun u v => (normalNode9581).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9581).moment H = injectiveMoment H reductionPivot10215 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9581).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9581).entries)).symm
  have hshape : reductionPivot10215 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10215 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10215 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection95, oldProjection170, oldProjection100] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10215 (0 : Fin 3)) = canonicalInput5921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10215 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10215 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5921 hH))).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10215 (1 : Fin 3)) = canonicalInput19148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10215 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection170 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10215 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19148 hH))).trans (oldProjectionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10215 (2 : Fin 3)) = canonicalInput19151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10215 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10215 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19151 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9581).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10215 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9581).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10215 (j : Fin 3)))
      3 9 9 3 ![3, 3, 1] ![3, 3, 9] reductionProjection10215 ![oldProjection95, oldProjection170, oldProjection100]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10216 : Integer.Sparse (Fin 1613) := [(42, -1), (62, 3), (88, -1), (90, -1), (243, -2), (698, -1), (700, -3), (934, -9), (1226, -3)]

def reductionPivot10216 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]

theorem reductionSound10216 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6660).moment H =
      Integer.Sparse.eval reductionProjection10216 (momentVector H) := by
  have heq : reductionPivot10216 = (fun u v => (normalNode6660).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6660).moment H = injectiveMoment H reductionPivot10216 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6660).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10216 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10216 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10216 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4145, oldProjection951, reductionProjection10215, reductionProjection292] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10216 (0 : Fin 4)) = canonicalInput23969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4145 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23969 hH))).trans (reductionSound4145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10216 (1 : Fin 4)) = canonicalInput13498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection951 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13498 hH))).trans (oldProjectionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10216 (2 : Fin 4)) = canonicalInput13402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10215 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13402 hH))).trans (reductionSound10215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10216 (3 : Fin 4)) = canonicalInput13394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10216 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13394 hH))).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6660).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10216 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6660).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10216 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection10216 ![reductionProjection4145, oldProjection951, reductionProjection10215, reductionProjection292]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10217 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (20, 5), (42, 80), (62, -240), (76, -240), (88, 80), (90, 400), (94, 45), (241, 320), (243, 480), (502, 720), (694, -240), (698, 720), (700, 560), (704, 160), (781, 1440), (934, 720), (1047, -480), (1139, 720), (1203, 720), (1226, 560), (1251, -25)]

def reductionPivot10217 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10217 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6639).moment H =
      Integer.Sparse.eval reductionProjection10217 (momentVector H) := by
  have heq : reductionPivot10217 = (fun u v => (normalNode6639).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6639).moment H = injectiveMoment H reductionPivot10217 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6639).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10217 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10217 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10217 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5213, reductionProjection10216, reductionProjection281, reductionProjection2766, reductionProjection7062] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10217 (0 : Fin 5)) = canonicalInput13665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5213 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13665 hH))).trans (reductionSound5213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10217 (1 : Fin 5)) = (normalNode6660).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10216 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10217 (2 : Fin 5)) = canonicalInput13380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13380 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10217 (3 : Fin 5)) = canonicalInput13378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13378 hH))).trans (reductionSound2766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10217 (4 : Fin 5)) = (normalNode6645).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7062 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10217 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6639).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10217 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6639).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10217 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 288, 1440, 1440] ![1, 80, 5, 1, 1] reductionProjection10217 ![reductionProjection5213, reductionProjection10216, reductionProjection281, reductionProjection2766, reductionProjection7062]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10218 : Integer.Sparse (Fin 1613) := [(62, 24), (88, -24), (90, -24), (94, 1), (243, -16), (400, -72), (698, -16), (1251, 1)]

def reductionPivot10218 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]

theorem reductionSound10218 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6661).moment H =
      Integer.Sparse.eval reductionProjection10218 (momentVector H) := by
  have heq : reductionPivot10218 = (fun u v => (normalNode6661).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6661).moment H = injectiveMoment H reductionPivot10218 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6661).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10218 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10218 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10218 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2208, oldProjection1214, reductionProjection10211, reductionProjection278] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10218 (0 : Fin 4)) = canonicalInput23970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2208 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23970 hH))).trans (reductionSound2208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10218 (1 : Fin 4)) = canonicalInput13500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13500 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10218 (2 : Fin 4)) = canonicalInput13403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10211 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13403 hH))).trans (reductionSound10211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10218 (3 : Fin 4)) = canonicalInput13395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10218 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13395 hH))).trans (reductionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6661).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10218 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6661).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10218 (j : Fin 4)))
      2 144 144 2 ![9, 72, 9, 1] ![16, 2, 16, 144] reductionProjection10218 ![reductionProjection2208, oldProjection1214, reductionProjection10211, reductionProjection278]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10219 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (20, 20), (62, -240), (88, 240), (90, 240), (94, -75), (241, 320), (243, 720), (400, 720), (694, -240), (698, 880), (700, 80), (775, 720), (1047, -720), (1197, 720), (1203, 1440), (1226, 400), (1251, -40)]

def reductionPivot10219 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound10219 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6640).moment H =
      Integer.Sparse.eval reductionProjection10219 (momentVector H) := by
  have heq : reductionPivot10219 = (fun u v => (normalNode6640).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6640).moment H = injectiveMoment H reductionPivot10219 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6640).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10219 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10219 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10219 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3864, reductionProjection10218, reductionProjection2720, reductionProjection281, reductionProjection281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10219 (0 : Fin 5)) = canonicalInput13666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13666 hH))).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10219 (1 : Fin 5)) = (normalNode6661).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10219 (2 : Fin 5)) = canonicalInput13382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2720 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13382 hH))).trans (reductionSound2720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10219 (3 : Fin 5)) = canonicalInput13381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13381 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10219 (4 : Fin 5)) = canonicalInput13380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10219 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13380 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6640).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10219 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6640).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10219 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 144, 288, 288] ![1, 10, 10, 5, 5] reductionProjection10219 ![reductionProjection3864, reductionProjection10218, reductionProjection2720, reductionProjection281, reductionProjection281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10220 : Integer.Sparse (Fin 1613) := [(420, -1), (433, -1), (502, -1), (512, -1)]

def reductionPivot10220 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound10220 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6642).moment H =
      Integer.Sparse.eval reductionProjection10220 (momentVector H) := by
  have heq : reductionPivot10220 = (fun u v => (normalNode6642).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6642).moment H = injectiveMoment H reductionPivot10220 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6642).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10220 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10220 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10220 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection476, reductionProjection2377, reductionProjection4387, oldProjection494] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10220 (0 : Fin 4)) = canonicalInput16900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16900 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10220 (1 : Fin 4)) = canonicalInput13422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13422 hH))).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10220 (2 : Fin 4)) = canonicalInput13386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4387 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13386 hH))).trans (reductionSound4387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10220 (3 : Fin 4)) = canonicalInput13383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection494 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10220 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13383 hH))).trans (oldProjectionSound494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6642).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10220 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6642).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10220 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10220 ![oldProjection476, reductionProjection2377, reductionProjection4387, oldProjection494]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10221 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -120), (94, 15), (420, 360), (433, 720), (489, 360), (502, 360), (512, 360), (565, 360), (697, -120), (698, 200), (700, 80), (808, 360), (869, 360), (1059, 80), (1174, 360), (1219, -120), (1221, -120), (1227, 40), (1251, -50), (1270, 360), (1300, -720), (1389, -240)]

def reductionPivot10221 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound10221 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6641).moment H =
      Integer.Sparse.eval reductionProjection10221 (momentVector H) := by
  have heq : reductionPivot10221 = (fun u v => (normalNode6641).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6641).moment H = injectiveMoment H reductionPivot10221 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6641).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10221 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10221 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10221 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2998, oldProjection1641, reductionProjection5890, reductionProjection2796, reductionProjection10220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10221 (0 : Fin 5)) = (normalNode7667).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2998 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10221 (1 : Fin 5)) = canonicalInput13405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1641 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13405 hH))).trans (oldProjectionSound1641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10221 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1300).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5890 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10221 (3 : Fin 5)) = canonicalInput13374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2796 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13374 hH))).trans (reductionSound2796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10221 (4 : Fin 5)) = (normalNode6642).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10220 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10221 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6641).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10221 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6641).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10221 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1, 2, 2] ![1, 1, 1440, 720, 720] reductionProjection10221 ![reductionProjection2998, oldProjection1641, reductionProjection5890, reductionProjection2796, reductionProjection10220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10222 : Integer.Sparse (Fin 1613) := [(72, 12), (94, 3), (243, -4), (406, -36), (682, 12), (698, -4), (700, -4), (1174, -36), (1226, -4), (1251, 1)]

def reductionPivot10222 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 2, 1, -3], ![1, 1, -2, 0]]

theorem reductionSound10222 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode6644).moment H =
      Integer.Sparse.eval reductionProjection10222 (momentVector H) := by
  have heq : reductionPivot10222 = (fun u v => (normalNode6644).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6644).moment H = injectiveMoment H reductionPivot10222 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6644).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10222 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10222 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10222 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection989, oldProjection1231, oldProjection689, reductionProjection4075] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10222 (0 : Fin 4)) = canonicalInput23965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection989 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23965 hH))).trans (oldProjectionSound989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10222 (1 : Fin 4)) = canonicalInput13488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1231 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13488 hH))).trans (oldProjectionSound1231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10222 (2 : Fin 4)) = canonicalInput13387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection689 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13387 hH))).trans (oldProjectionSound689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10222 (3 : Fin 4)) = canonicalInput13377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4075 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10222 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13377 hH))).trans (reductionSound4075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6644).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10222 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6644).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10222 (j : Fin 4)))
      2 72 144 4 ![144, 144, 1, 1] ![1, 1, 144, 144] reductionProjection10222 ![oldProjection989, oldProjection1231, oldProjection689, reductionProjection4075]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10223 : Integer.Sparse (Fin 1613) := [(0, 1), (79, 240), (81, 480), (90, -80), (398, -720), (512, -720), (698, -160), (700, -80), (1052, 240), (1059, -80), (1251, 15)]

def reductionPivot10223 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound10223 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6655).moment H =
      Integer.Sparse.eval reductionProjection10223 (momentVector H) := by
  have heq : reductionPivot10223 = (fun u v => (normalNode6655).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6655).moment H = injectiveMoment H reductionPivot10223 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6655).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10223 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10223 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10223 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection301, oldProjection1190, reductionProjection4387, reductionProjection4116] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10223 (0 : Fin 4)) = canonicalInput23967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection301 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23967 hH))).trans (reductionSound301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10223 (1 : Fin 4)) = canonicalInput13495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1190 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13495 hH))).trans (oldProjectionSound1190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10223 (2 : Fin 4)) = canonicalInput13399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4387 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13399 hH))).trans (reductionSound4387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10223 (3 : Fin 4)) = canonicalInput13390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4116 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10223 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13390 hH))).trans (reductionSound4116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6655).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10223 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6655).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10223 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 1] ![160, 2, 1440, 1440] reductionProjection10223 ![reductionProjection301, oldProjection1190, reductionProjection4387, reductionProjection4116]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10224 : Integer.Sparse (Fin 1613) := [(405, -1), (433, -1), (512, -1), (768, -1)]

def reductionPivot10224 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound10224 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6652).moment H =
      Integer.Sparse.eval reductionProjection10224 (momentVector H) := by
  have heq : reductionPivot10224 = (fun u v => (normalNode6652).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6652).moment H = injectiveMoment H reductionPivot10224 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6652).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10224 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10224 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10224 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection211, oldProjection476, reductionProjection4387, reductionProjection4091] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10224 (0 : Fin 4)) = canonicalInput15114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15114 hH))).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10224 (1 : Fin 4)) = canonicalInput13423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13423 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10224 (2 : Fin 4)) = canonicalInput13399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4387 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13399 hH))).trans (reductionSound4387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10224 (3 : Fin 4)) = canonicalInput13398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10224 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13398 hH))).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6652).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10224 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6652).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10224 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10224 ![reductionProjection211, oldProjection476, reductionProjection4387, reductionProjection4091]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10225 : Integer.Sparse (Fin 1613) := [(0, 1), (62, 240), (87, 240), (88, -80), (90, -160), (94, 5), (243, -80), (405, -720), (698, -320), (1058, 240), (1226, -400), (1227, -80), (1251, 40)]

def reductionPivot10225 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound10225 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6650).moment H =
      Integer.Sparse.eval reductionProjection10225 (momentVector H) := by
  have heq : reductionPivot10225 = (fun u v => (normalNode6650).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6650).moment H = injectiveMoment H reductionPivot10225 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6650).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10225 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10225 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10225 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, oldProjection1347, reductionProjection4091, reductionProjection10211] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10225 (0 : Fin 4)) = canonicalInput15112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15112 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10225 (1 : Fin 4)) = canonicalInput13420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13420 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10225 (2 : Fin 4)) = canonicalInput13398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13398 hH))).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10225 (3 : Fin 4)) = canonicalInput13396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10211 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10225 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13396 hH))).trans (reductionSound10211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6650).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10225 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6650).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10225 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 9] ![160, 2, 1440, 160] reductionProjection10225 ![reductionProjection304, oldProjection1347, reductionProjection4091, reductionProjection10211]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10226 : Integer.Sparse (Fin 1613) := [(0, -1), (62, -120), (79, -120), (81, -240), (87, -240), (88, 40), (90, 200), (94, 25), (243, 40), (398, 360), (405, 720), (433, 720), (512, 720), (698, 640), (700, 80), (768, 720), (1052, -120), (1058, -240), (1059, 40), (1226, 440), (1227, 160), (1251, -50)]

def reductionPivot10226 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound10226 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6646).moment H =
      Integer.Sparse.eval reductionProjection10226 (momentVector H) := by
  have heq : reductionPivot10226 = (fun u v => (normalNode6646).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6646).moment H = injectiveMoment H reductionPivot10226 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6646).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10226 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10226 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10226 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4924, oldProjection1648, reductionProjection10223, reductionProjection10224, reductionProjection10225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10226 (0 : Fin 5)) = (normalNode7684).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4924 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10226 (1 : Fin 5)) = canonicalInput13407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1648 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13407 hH))).trans (oldProjectionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10226 (2 : Fin 5)) = (normalNode6655).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10223 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10226 (3 : Fin 5)) = (normalNode6652).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10224 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10226 (4 : Fin 5)) = (normalNode6650).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10225 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10226 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6646).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10226 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6646).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10226 (j : Fin 5)))
      1 720 1440 2 ![288, 144, 1440, 2, 1440] ![5, 10, 1, 720, 1] reductionProjection10226 ![reductionProjection4924, oldProjection1648, reductionProjection10223, reductionProjection10224, reductionProjection10225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10227 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (90, -80), (398, -720), (698, -320), (700, -240), (1058, 240), (1059, -240), (1251, 15), (1301, -720)]

def reductionPivot10227 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound10227 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6656).moment H =
      Integer.Sparse.eval reductionProjection10227 (momentVector H) := by
  have heq : reductionPivot10227 = (fun u v => (normalNode6656).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6656).moment H = injectiveMoment H reductionPivot10227 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6656).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10227 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10227 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10227 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection975, reductionProjection4357, reductionProjection10210, reductionProjection4116] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10227 (0 : Fin 4)) = canonicalInput24069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24069 hH))).trans (oldProjectionSound975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10227 (1 : Fin 4)) = (normalNode6713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10227 (2 : Fin 4)) = canonicalInput13400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13400 hH))).trans (reductionSound10210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10227 (3 : Fin 4)) = canonicalInput13390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4116 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10227 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13390 hH))).trans (reductionSound4116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6656).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10227 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6656).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10227 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 1] ![2, 160, 1440, 1440] reductionProjection10227 ![oldProjection975, reductionProjection4357, reductionProjection10210, reductionProjection4116]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10228 : Integer.Sparse (Fin 1613) := [(434, -1), (1301, -2), (1341, -1)]

def reductionPivot10228 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound10228 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6653).moment H =
      Integer.Sparse.eval reductionProjection10228 (momentVector H) := by
  have heq : reductionPivot10228 = (fun u v => (normalNode6653).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6653).moment H = injectiveMoment H reductionPivot10228 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6653).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10228 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10228 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10228 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection354, oldProjection477, reductionProjection10210, reductionProjection10210] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10228 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1341).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection354 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10228 (1 : Fin 4)) = canonicalInput13424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13424 hH))).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10228 (2 : Fin 4)) = canonicalInput13400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13400 hH))).trans (reductionSound10210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10228 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10228 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6653).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10228 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6653).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10228 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10228 ![reductionProjection354, oldProjection477, reductionProjection10210, reductionProjection10210]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10229 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (62, 240), (87, 240), (90, -160), (243, -80), (698, -400), (700, -240), (1058, 240), (1059, -160), (1226, -160), (1227, -80), (1251, 15), (1301, -720)]

def reductionPivot10229 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]

theorem reductionSound10229 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6651).moment H =
      Integer.Sparse.eval reductionProjection10229 (momentVector H) := by
  have heq : reductionPivot10229 = (fun u v => (normalNode6651).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6651).moment H = injectiveMoment H reductionPivot10229 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6651).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10229 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10229 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10229 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, oldProjection975, reductionProjection10210, reductionProjection10215] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10229 (0 : Fin 4)) = canonicalInput15113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15113 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10229 (1 : Fin 4)) = canonicalInput13421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13421 hH))).trans (oldProjectionSound975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10229 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10229 (3 : Fin 4)) = canonicalInput13397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10215 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10229 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13397 hH))).trans (reductionSound10215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6651).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10229 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6651).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10229 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 9] ![160, 2, 1440, 160] reductionProjection10229 ![reductionProjection304, oldProjection975, reductionProjection10210, reductionProjection10215]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10230 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 80), (56, -240), (62, -240), (87, -480), (90, 400), (94, 35), (243, 80), (398, 720), (434, 1440), (698, 1600), (700, 560), (1058, -720), (1059, 560), (1226, 640), (1227, 480), (1251, -190), (1301, 2880), (1341, 1440)]

def reductionPivot10230 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10230 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6647).moment H =
      Integer.Sparse.eval reductionProjection10230 (momentVector H) := by
  have heq : reductionPivot10230 = (fun u v => (normalNode6647).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6647).moment H = injectiveMoment H reductionPivot10230 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6647).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10230 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10230 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10230 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection355, oldProjection1652, reductionProjection10227, reductionProjection10228, reductionProjection10229] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10230 (0 : Fin 5)) = (normalNode7685).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10230 (1 : Fin 5)) = canonicalInput13408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1652 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13408 hH))).trans (oldProjectionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10230 (2 : Fin 5)) = (normalNode6656).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10227 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10230 (3 : Fin 5)) = (normalNode6653).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10228 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10230 (4 : Fin 5)) = (normalNode6651).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10229 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10230 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6647).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10230 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6647).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10230 (j : Fin 5)))
      1 1440 1440 1 ![18, 1440, 1440, 2, 1440] ![80, 1, 1, 720, 1] reductionProjection10230 ![reductionProjection355, oldProjection1652, reductionProjection10227, reductionProjection10228, reductionProjection10229]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10231 : Integer.Sparse (Fin 1613) := [(42, -48), (60, -16), (62, 48), (90, -32), (94, 1), (243, -32), (440, -144), (698, -32), (1251, -3)]

def reductionPivot10231 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]

theorem reductionSound10231 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6659).moment H =
      Integer.Sparse.eval reductionProjection10231 (momentVector H) := by
  have heq : reductionPivot10231 = (fun u v => (normalNode6659).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6659).moment H = injectiveMoment H reductionPivot10231 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6659).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10231 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10231 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10231 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection979, reductionProjection4477, reductionProjection10215, reductionProjection4365] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10231 (0 : Fin 4)) = canonicalInput24071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection979 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24071 hH))).trans (oldProjectionSound979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10231 (1 : Fin 4)) = (normalNode6717).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4477 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10231 (2 : Fin 4)) = canonicalInput13402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10215 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13402 hH))).trans (reductionSound10215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10231 (3 : Fin 4)) = canonicalInput13393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10231 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13393 hH))).trans (reductionSound4365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6659).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10231 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6659).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10231 (j : Fin 4)))
      2 288 288 2 ![144, 9, 9, 1] ![2, 32, 32, 288] reductionProjection10231 ![oldProjection979, reductionProjection4477, reductionProjection10215, reductionProjection4365]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10232 : Integer.Sparse (Fin 1613) := [(0, -7), (42, 240), (56, -480), (60, 80), (62, -240), (87, -240), (90, 480), (243, 240), (398, 1440), (427, 720), (440, 720), (698, 1120), (700, 880), (763, 720), (1058, -720), (1059, 480), (1226, 320), (1227, 160), (1251, -105), (1301, 1440)]

def reductionPivot10232 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10232 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6648).moment H =
      Integer.Sparse.eval reductionProjection10232 (momentVector H) := by
  have heq : reductionPivot10232 = (fun u v => (normalNode6648).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6648).moment H = injectiveMoment H reductionPivot10232 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6648).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10232 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10232 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 360, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10232 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4964, oldProjection1650, reductionProjection10231, reductionProjection10227, reductionProjection10227] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10232 (0 : Fin 5)) = canonicalInput15102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4964 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15102 hH))).trans (reductionSound4964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10232 (1 : Fin 5)) = canonicalInput13411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1650 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13411 hH))).trans (oldProjectionSound1650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10232 (2 : Fin 5)) = (normalNode6659).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10231 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10232 (3 : Fin 5)) = canonicalInput13389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10227 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13389 hH))).trans (reductionSound10227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10232 (4 : Fin 5)) = (normalNode6656).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10227 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10232 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6648).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10232 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6648).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10232 (j : Fin 5)))
      1 1440 1440 1 ![1440, 360, 288, 1440, 1440] ![1, 4, 5, 1, 1] reductionProjection10232 ![reductionProjection4964, oldProjection1650, reductionProjection10231, reductionProjection10227, reductionProjection10227]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10233 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (81, 480), (90, -80), (405, -720), (531, -720), (698, -160), (1058, 240), (1226, -80), (1227, -80), (1251, 15)]

def reductionPivot10233 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]

theorem reductionSound10233 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6658).moment H =
      Integer.Sparse.eval reductionProjection10233 (momentVector H) := by
  have heq : reductionPivot10233 = (fun u v => (normalNode6658).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6658).moment H = injectiveMoment H reductionPivot10233 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6658).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10233 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10233 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10233 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection944, reductionProjection4126, reductionProjection4091, reductionProjection294] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10233 (0 : Fin 4)) = canonicalInput24070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection944 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24070 hH))).trans (oldProjectionSound944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10233 (1 : Fin 4)) = (normalNode6714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10233 (2 : Fin 4)) = canonicalInput13401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13401 hH))).trans (reductionSound4091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10233 (3 : Fin 4)) = canonicalInput13392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection294 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10233 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13392 hH))).trans (reductionSound294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6658).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10233 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6658).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10233 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 1] ![2, 160, 1440, 1440] reductionProjection10233 ![oldProjection944, reductionProjection4126, reductionProjection4091, reductionProjection294]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10234 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 240), (90, -80), (531, -720), (698, -320), (1219, 240), (1226, -240), (1227, -240), (1251, 15), (1301, -720)]

def reductionPivot10234 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound10234 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6657).moment H =
      Integer.Sparse.eval reductionProjection10234 (momentVector H) := by
  have heq : reductionPivot10234 = (fun u v => (normalNode6657).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6657).moment H = injectiveMoment H reductionPivot10234 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6657).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10234 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10234 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10234 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, oldProjection1208, reductionProjection10210, reductionProjection294] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10234 (0 : Fin 4)) = canonicalInput23968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23968 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10234 (1 : Fin 4)) = canonicalInput13496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13496 hH))).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10234 (2 : Fin 4)) = canonicalInput13400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13400 hH))).trans (reductionSound10210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10234 (3 : Fin 4)) = canonicalInput13392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection294 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10234 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13392 hH))).trans (reductionSound294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6657).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10234 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6657).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10234 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 1] ![160, 2, 1440, 1440] reductionProjection10234 ![reductionProjection304, oldProjection1208, reductionProjection10210, reductionProjection294]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10235 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 80), (56, -240), (62, -240), (81, -480), (87, -480), (88, 80), (90, 400), (94, 5), (243, 160), (405, 720), (426, 720), (531, 1440), (698, 1200), (700, 320), (934, 720), (955, 720), (1058, -480), (1059, 160), (1219, -240), (1226, 880), (1227, 480), (1251, -60), (1301, 720)]

def reductionPivot10235 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10235 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6649).moment H =
      Integer.Sparse.eval reductionProjection10235 (momentVector H) := by
  have heq : reductionPivot10235 = (fun u v => (normalNode6649).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6649).moment H = injectiveMoment H reductionPivot10235 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6649).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10235 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10235 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1440, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10235 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection358, oldProjection1647, reductionProjection10216, reductionProjection10233, reductionProjection10234] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10235 (0 : Fin 5)) = canonicalInput15104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection358 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15104 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10235 (1 : Fin 5)) = canonicalInput13413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13413 hH))).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10235 (2 : Fin 5)) = (normalNode6660).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10216 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10235 (3 : Fin 5)) = canonicalInput13391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10233 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13391 hH))).trans (reductionSound10233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10235 (4 : Fin 5)) = (normalNode6657).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10234 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10235 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6649).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10235 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6649).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10235 (j : Fin 5)))
      1 1440 1440 1 ![18, 1440, 18, 1440, 1440] ![80, 1, 80, 1, 1] reductionProjection10235 ![reductionProjection358, oldProjection1647, reductionProjection10216, reductionProjection10233, reductionProjection10234]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10236 : Integer.Sparse (Fin 1613) := [(62, -8), (88, 8), (90, 8), (94, -1), (243, 8), (400, 24), (696, -8), (698, 8), (912, 24), (998, 24), (1226, 8), (1251, -1), (1323, -16)]

def reductionPivot10236 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound10236 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode6662).moment H =
      Integer.Sparse.eval reductionProjection10236 (momentVector H) := by
  have heq : reductionPivot10236 = (fun u v => (normalNode6662).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6662).moment H = injectiveMoment H reductionPivot10236 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6662).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10236 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10236 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 36, 72, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10236 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1143, reductionProjection10218, reductionProjection7737, oldProjection1214, oldProjection1214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10236 (0 : Fin 5)) = (normalNode562).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1143 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10236 (1 : Fin 5)) = (normalNode6661).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10236 (2 : Fin 5)) = canonicalInput13491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7737 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13491 hH))).trans (reductionSound7737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10236 (3 : Fin 5)) = canonicalInput13499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13499 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10236 (4 : Fin 5)) = canonicalInput13501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10236 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13501 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6662).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10236 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6662).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10236 (j : Fin 5)))
      1 48 144 3 ![72, 144, 36, 72, 72] ![2, 1, 4, 2, 2] reductionProjection10236 ![reductionProjection1143, reductionProjection10218, reductionProjection7737, oldProjection1214, oldProjection1214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10237 : Integer.Sparse (Fin 1613) := [(1304, 1)]

theorem reductionSound10237 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1304).moment H =
      Integer.Sparse.eval reductionProjection10237 (momentVector H) := by
  have hc : coordinates (1304 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1304) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10237, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10238 : Integer.Sparse (Fin 1613) := [(489, -1), (603, -1), (1117, -1), (1304, -1)]

def reductionPivot10238 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound10238 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6678).moment H =
      Integer.Sparse.eval reductionProjection10238 (momentVector H) := by
  have heq : reductionPivot10238 = (fun u v => (normalNode6678).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6678).moment H = injectiveMoment H reductionPivot10238 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6678).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10238 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10238 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10238 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection680, oldProjection511, oldProjection490, reductionProjection10237] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10238 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6184 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection680 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6184 hH))).trans (oldProjectionSound680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10238 (1 : Fin 4)) = canonicalInput13466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13466 hH))).trans (oldProjectionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10238 (2 : Fin 4)) = canonicalInput13447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13447 hH))).trans (oldProjectionSound490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10238 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1304).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10237 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10238 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6678).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10238 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6678).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10238 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10238 ![oldProjection680, oldProjection511, oldProjection490, reductionProjection10237]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10239 : Integer.Sparse (Fin 1613) := [(42, 8), (60, 8), (90, 8), (94, 1), (698, 8), (700, 32), (1251, 1)]

def reductionPivot10239 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![0, 1, 2, -3], ![1, 2, -3, 0]]

theorem reductionSound10239 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode6693).moment H =
      Integer.Sparse.eval reductionProjection10239 (momentVector H) := by
  have heq : reductionPivot10239 = (fun u v => (normalNode6693).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6693).moment H = injectiveMoment H reductionPivot10239 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6693).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10239 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10239 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10239 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection95, oldProjection93, oldProjection215] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10239 (0 : Fin 3)) = canonicalInput12566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10239 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10239 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12566 hH))).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10239 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10239 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10239 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5699 hH))).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10239 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5722 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10239 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection215 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10239 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5722 hH))).trans (oldProjectionSound215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6693).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10239 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6693).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10239 (j : Fin 3)))
      3 72 72 3 ![3, 3, 24] ![24, 24, 3] reductionProjection10239 ![oldProjection95, oldProjection93, oldProjection215]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical031
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical194
import NoFourMUBs.Step2.SOS.Canonical195
import NoFourMUBs.Step2.SOS.Canonical197
import NoFourMUBs.Step2.SOS.Canonical198
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical200
import NoFourMUBs.Step2.SOS.Canonical215
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical270
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical372
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions165
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions307
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions310
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical108
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical199
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9952 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 240), (56, -480), (60, 80), (82, -720), (87, -480), (88, 240), (90, 640), (91, 160), (210, 1440), (211, 720), (241, 160), (243, 400), (442, 720), (465, 720), (469, 720), (596, 720), (623, 720), (698, 1040), (700, 720), (1055, -240), (1058, -480), (1059, 160), (1219, -240), (1226, 560), (1227, 160), (1251, -45), (1288, 720)]

def reductionPivot9952 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]

theorem reductionSound9952 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6170).moment H =
      Integer.Sparse.eval reductionProjection9952 (momentVector H) := by
  have heq : reductionPivot9952 = (fun u v => (normalNode6170).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6170).moment H = injectiveMoment H reductionPivot9952 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6170).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9952 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9952 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9952 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1282, reductionProjection9947, reductionProjection9948, reductionProjection9950, reductionProjection9951] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9952 (0 : Fin 5)) = canonicalInput1986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1282 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1986 hH))).trans (reductionSound1282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9952 (1 : Fin 5)) = (normalNode6174).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9947 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9952 (2 : Fin 5)) = canonicalInput12720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9948 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12720 hH))).trans (reductionSound9948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9952 (3 : Fin 5)) = canonicalInput12724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9950 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12724 hH))).trans (reductionSound9950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9952 (4 : Fin 5)) = canonicalInput12727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9952 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12727 hH))).trans (reductionSound9951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6170).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9952 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6170).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9952 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 1440, 1440] ![1, 720, 720, 1, 1] reductionProjection9952 ![reductionProjection1282, reductionProjection9947, reductionProjection9948, reductionProjection9950, reductionProjection9951]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9953 : Integer.Sparse (Fin 1613) := [(222, -1), (442, -1), (603, -1), (642, -1)]

def reductionPivot9953 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 2, 0, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]

theorem reductionSound9953 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6197).moment H =
      Integer.Sparse.eval reductionProjection9953 (momentVector H) := by
  have heq : reductionPivot9953 = (fun u v => (normalNode6197).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6197).moment H = injectiveMoment H reductionPivot9953 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6197).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9953 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9953 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9953 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection511, reductionProjection1671, oldProjection519, reductionProjection4312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9953 (0 : Fin 4)) = canonicalInput14053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14053 hH))).trans (oldProjectionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9953 (1 : Fin 4)) = canonicalInput12689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1671 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12689 hH))).trans (reductionSound1671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9953 (2 : Fin 4)) = canonicalInput12660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12660 hH))).trans (oldProjectionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9953 (3 : Fin 4)) = canonicalInput12657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9953 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12657 hH))).trans (reductionSound4312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6197).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9953 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6197).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9953 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9953 ![oldProjection511, reductionProjection1671, oldProjection519, reductionProjection4312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9954 : Integer.Sparse (Fin 1613) := [(0, 1), (79, 240), (82, 240), (88, -240), (90, -480), (91, -80), (94, -5), (243, -80), (698, -480), (700, -160), (1226, -480), (1251, 30)]

def reductionPivot9954 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound9954 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6241).moment H =
      Integer.Sparse.eval reductionProjection9954 (momentVector H) := by
  have heq : reductionPivot9954 = (fun u v => (normalNode6241).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6241).moment H = injectiveMoment H reductionPivot9954 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6241).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9954 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9954 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9954 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection850, reductionProjection1548, reductionProjection1160, reductionProjection9949] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9954 (0 : Fin 4)) = canonicalInput14103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection850 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14103 hH))).trans (oldProjectionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9954 (1 : Fin 4)) = canonicalInput12773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1548 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12773 hH))).trans (reductionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9954 (2 : Fin 4)) = (normalNode6245).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1160 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9954 (3 : Fin 4)) = (normalNode6242).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9949 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9954 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6241).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9954 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6241).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9954 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 9, 9] ![2, 20, 160, 160] reductionProjection9954 ![oldProjection850, reductionProjection1548, reductionProjection1160, reductionProjection9949]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9955 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (56, 240), (82, 240), (88, -160), (90, -320), (91, -80), (94, -10), (243, -160), (698, -480), (700, -160), (1058, 240), (1226, -400), (1227, -160), (1251, 5)]

def reductionPivot9955 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -3, 2]]

theorem reductionSound9955 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6251).moment H =
      Integer.Sparse.eval reductionProjection9955 (momentVector H) := by
  have heq : reductionPivot9955 = (fun u v => (normalNode6251).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6251).moment H = injectiveMoment H reductionPivot9955 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6251).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9955 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9955 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 3, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9955 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection836, reductionProjection1204, reductionProjection9931, reductionProjection5436] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9955 (0 : Fin 4)) = canonicalInput14109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection836 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14109 hH))).trans (oldProjectionSound836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9955 (1 : Fin 4)) = canonicalInput12780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1204 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12780 hH))).trans (reductionSound1204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9955 (2 : Fin 4)) = canonicalInput12770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9931 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12770 hH))).trans (reductionSound9931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9955 (3 : Fin 4)) = canonicalInput12766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5436 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9955 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12766 hH))).trans (reductionSound5436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6251).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9955 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6251).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9955 (j : Fin 4)))
      2 1440 1440 2 ![720, 3, 9, 9] ![2, 480, 160, 160] reductionProjection9955 ![oldProjection836, reductionProjection1204, reductionProjection9931, reductionProjection5436]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9956 : Integer.Sparse (Fin 1613) := [(0, -2), (42, 80), (56, -240), (79, -240), (82, -720), (87, -480), (88, 400), (90, 960), (91, 160), (94, 15), (206, 720), (222, 1440), (243, 240), (442, 1440), (603, 1440), (642, 1440), (698, 1040), (700, 320), (1058, -480), (1226, 1200), (1227, 320), (1251, -35)]

def reductionPivot9956 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]

theorem reductionSound9956 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6172).moment H =
      Integer.Sparse.eval reductionProjection9956 (momentVector H) := by
  have heq : reductionPivot9956 = (fun u v => (normalNode6172).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6172).moment H = injectiveMoment H reductionPivot9956 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6172).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9956 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9956 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9956 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1315, reductionProjection9953, reductionProjection9953, reductionProjection9954, reductionProjection9955] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9956 (0 : Fin 5)) = canonicalInput2116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1315 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2116 hH))).trans (reductionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9956 (1 : Fin 5)) = (normalNode6197).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9953 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9956 (2 : Fin 5)) = canonicalInput12760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9953 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12760 hH))).trans (reductionSound9953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9956 (3 : Fin 5)) = canonicalInput12761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9954 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9954 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12761 hH))).trans (reductionSound9954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9956 (4 : Fin 5)) = canonicalInput12763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9955 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9956 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12763 hH))).trans (reductionSound9955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6172).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9956 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6172).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9956 (j : Fin 5)))
      1 1440 1440 1 ![18, 2, 2, 1440, 1440] ![80, 720, 720, 1, 1] reductionProjection9956 ![reductionProjection1315, reductionProjection9953, reductionProjection9953, reductionProjection9954, reductionProjection9955]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9957 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -80), (20, 10), (76, -960), (81, -480), (84, -480), (94, 15), (241, 320), (243, 320), (247, 160), (622, 1440), (682, -480), (697, -480), (698, 1040), (700, 160), (1052, -480), (1059, 240), (1217, -240), (1221, -480), (1226, 480), (1227, 160), (1251, -110)]

def reductionPivot9957 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 2, -2, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound9957 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6176).moment H =
      Integer.Sparse.eval reductionProjection9957 (momentVector H) := by
  have heq : reductionPivot9957 = (fun u v => (normalNode6176).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6176).moment H = injectiveMoment H reductionPivot9957 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6176).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9957 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9957 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9957 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2835, oldProjection1512, oldProjection1765, reductionProjection9877, reductionProjection9877] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9957 (0 : Fin 5)) = canonicalInput12799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12799 hH))).trans (oldProjectionSound2835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9957 (1 : Fin 5)) = canonicalInput12639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12639 hH))).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9957 (2 : Fin 5)) = canonicalInput12629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1765 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12629 hH))).trans (oldProjectionSound1765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9957 (3 : Fin 5)) = canonicalInput12628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9877 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12628 hH))).trans (reductionSound9877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9957 (4 : Fin 5)) = (normalNode6179).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9877 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9957 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6176).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9957 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6176).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9957 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 720, 720] ![2, 1, 1, 2, 2] reductionProjection9957 ![oldProjection2835, oldProjection1512, oldProjection1765, reductionProjection9877, reductionProjection9877]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9958 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -60), (20, 5), (76, -960), (88, 160), (90, 320), (94, -20), (241, 320), (243, 320), (247, 80), (622, 720), (634, 720), (682, -480), (697, -480), (698, 1200), (700, 160), (1052, -480), (1219, -240), (1221, -480), (1226, 880), (1227, 240), (1251, -95)]

def reductionPivot9958 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 2, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9958 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6177).moment H =
      Integer.Sparse.eval reductionProjection9958 (momentVector H) := by
  have heq : reductionPivot9958 = (fun u v => (normalNode6177).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6177).moment H = injectiveMoment H reductionPivot9958 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6177).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9958 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9958 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9958 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9853, oldProjection1513, reductionProjection9869, oldProjection1765, reductionProjection9872] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9958 (0 : Fin 5)) = canonicalInput12800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9853 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12800 hH))).trans (reductionSound9853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9958 (1 : Fin 5)) = canonicalInput12640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12640 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9958 (2 : Fin 5)) = (normalNode6181).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9869 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9958 (3 : Fin 5)) = canonicalInput12629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1765 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12629 hH))).trans (oldProjectionSound1765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9958 (4 : Fin 5)) = (normalNode6180).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9872 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9958 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6177).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9958 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6177).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9958 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 144, 1440, 1440] ![1, 1, 10, 1, 1] reductionProjection9958 ![reductionProjection9853, oldProjection1513, reductionProjection9869, oldProjection1765, reductionProjection9872]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9959 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 5), (76, 60), (241, -20), (247, -20), (622, -180), (682, 60), (697, 60), (698, -40), (1226, -20), (1251, 10)]

def reductionPivot9959 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound9959 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode6178).moment H =
      Integer.Sparse.eval reductionProjection9959 (momentVector H) := by
  have heq : reductionPivot9959 = (fun u v => (normalNode6178).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6178).moment H = injectiveMoment H reductionPivot9959 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6178).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9959 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9959 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9959 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1092, oldProjection995, reductionProjection3351, oldProjection829] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9959 (0 : Fin 4)) = canonicalInput12801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1092 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12801 hH))).trans (oldProjectionSound1092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9959 (1 : Fin 4)) = canonicalInput12645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12645 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9959 (2 : Fin 4)) = canonicalInput12633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12633 hH))).trans (reductionSound3351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9959 (3 : Fin 4)) = canonicalInput12632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection829 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9959 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12632 hH))).trans (oldProjectionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6178).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9959 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6178).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9959 (j : Fin 4)))
      2 360 720 4 ![144, 720, 1, 72] ![5, 1, 720, 10] reductionProjection9959 ![oldProjection1092, oldProjection995, reductionProjection3351, oldProjection829]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9960 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -5), (243, -80), (492, -360), (698, -160), (700, -240), (704, -80), (1059, -120), (1251, 5)]

def reductionPivot9960 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, -2, 0]]

theorem reductionSound9960 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8869).moment H =
      Integer.Sparse.eval reductionProjection9960 (momentVector H) := by
  have heq : reductionPivot9960 = (fun u v => (normalNode8869).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8869).moment H = injectiveMoment H reductionPivot9960 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8869).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9960 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9960 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9960 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection799, oldProjection491, oldProjection1041, oldProjection799] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9960 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3474 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection799 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3474 hH))).trans (oldProjectionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9960 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6372 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection491 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6372 hH))).trans (oldProjectionSound491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9960 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1041⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1041 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9960 (3 : Fin 4)) = canonicalInput17234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection799 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9960 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17234 hH))).trans (oldProjectionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8869).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9960 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8869).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9960 (j : Fin 4)))
      2 720 720 2 ![720, 1, 360, 720] ![1, 720, 2, 1] reductionProjection9960 ![oldProjection799, oldProjection491, oldProjection1041, oldProjection799]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9961 : Integer.Sparse (Fin 1613) := [(0, -12), (19, -20), (76, -240), (88, 80), (90, 160), (94, 55), (241, 160), (243, 320), (247, 80), (465, 1440), (492, 720), (602, 720), (622, 720), (642, 720), (697, -720), (698, 1280), (700, 800), (704, 160), (1052, -480), (1059, 480), (1131, 720), (1219, -240), (1221, -240), (1226, 240), (1227, 160), (1251, -85)]

def reductionPivot9961 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound9961 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6182).moment H =
      Integer.Sparse.eval reductionProjection9961 (momentVector H) := by
  have heq : reductionPivot9961 = (fun u v => (normalNode6182).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6182).moment H = injectiveMoment H reductionPivot9961 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6182).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9961 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9961 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 288, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9961 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9960, reductionProjection9872, reductionProjection1339, reductionProjection1418, oldProjection1513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9961 (0 : Fin 5)) = canonicalInput12445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12445 hH))).trans (reductionSound9960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9961 (1 : Fin 5)) = (normalNode6180).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9872 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9961 (2 : Fin 5)) = canonicalInput12638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1339 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12638 hH))).trans (reductionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9961 (3 : Fin 5)) = (normalNode6190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1418 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9961 (4 : Fin 5)) = canonicalInput12640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9961 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12640 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6182).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9961 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6182).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9961 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 288, 2, 1440] ![2, 1, 5, 720, 1] reductionProjection9961 ![reductionProjection9960, reductionProjection9872, reductionProjection1339, reductionProjection1418, oldProjection1513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9962 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -25), (243, -80), (505, -720), (698, -80), (700, -240), (704, -160), (1251, -20)]

def reductionPivot9962 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -2, 1]]

theorem reductionSound9962 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8875).moment H =
      Integer.Sparse.eval reductionProjection9962 (momentVector H) := by
  have heq : reductionPivot9962 = (fun u v => (normalNode8875).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8875).moment H = injectiveMoment H reductionPivot9962 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8875).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9962 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9962 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9962 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection816, oldProjection495, oldProjection1063, oldProjection797] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9962 (0 : Fin 4)) = canonicalInput7874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection816 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7874 hH))).trans (oldProjectionSound816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9962 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6383 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection495 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6383 hH))).trans (oldProjectionSound495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9962 (2 : Fin 4)) = canonicalInput17325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17325 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9962 (3 : Fin 4)) = canonicalInput17349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection797 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9962 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17349 hH))).trans (oldProjectionSound797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8875).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9962 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8875).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9962 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 720, 360] ![20, 1440, 2, 4] reductionProjection9962 ![oldProjection816, oldProjection495, oldProjection1063, oldProjection797]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9963 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -40), (76, -240), (81, -480), (88, 80), (90, 160), (94, 130), (228, -240), (241, 320), (243, 240), (247, 80), (505, 720), (508, 1440), (634, 720), (642, 720), (697, -720), (698, 720), (700, 240), (704, 160), (1219, -240), (1226, 400), (1227, 240), (1251, -45)]

def reductionPivot9963 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9963 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6183).moment H =
      Integer.Sparse.eval reductionProjection9963 (momentVector H) := by
  have heq : reductionPivot9963 = (fun u v => (normalNode6183).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6183).moment H = injectiveMoment H reductionPivot9963 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6183).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9963 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9963 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9963 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9962, reductionProjection9869, oldProjection1513, reductionProjection1414, oldProjection2061] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9963 (0 : Fin 5)) = canonicalInput12446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9962 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12446 hH))).trans (reductionSound9962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9963 (1 : Fin 5)) = (normalNode6181).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9869 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9963 (2 : Fin 5)) = canonicalInput12640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12640 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9963 (3 : Fin 5)) = (normalNode6191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1414 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9963 (4 : Fin 5)) = canonicalInput12641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9963 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12641 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6183).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9963 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6183).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9963 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 1440, 1440] ![1, 10, 1, 1, 1] reductionProjection9963 ![reductionProjection9962, reductionProjection9869, oldProjection1513, reductionProjection1414, oldProjection2061]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9964 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -25), (247, -80), (465, -720), (492, -720), (622, -720), (697, 240), (1251, -25)]

def reductionPivot9964 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound9964 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6185).moment H =
      Integer.Sparse.eval reductionProjection9964 (momentVector H) := by
  have heq : reductionPivot9964 = (fun u v => (normalNode6185).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6185).moment H = injectiveMoment H reductionPivot9964 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6185).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9964 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9964 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9964 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection491, reductionProjection3351, oldProjection995, oldProjection483] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9964 (0 : Fin 4)) = canonicalInput12449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection491 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12449 hH))).trans (oldProjectionSound491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9964 (1 : Fin 4)) = canonicalInput12633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12633 hH))).trans (reductionSound3351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9964 (2 : Fin 4)) = canonicalInput12645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12645 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9964 (3 : Fin 4)) = canonicalInput12646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9964 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12646 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6185).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9964 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6185).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9964 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection9964 ![oldProjection491, reductionProjection3351, oldProjection995, oldProjection483]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9965 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -80), (81, -480), (94, 80), (228, -480), (241, 160), (243, 80), (247, 160), (430, 720), (444, 1440), (465, 1440), (508, 720), (697, -720), (698, 720), (704, 160), (1052, -240), (1058, -480), (1059, 80), (1226, 240), (1227, 160), (1251, -45)]

def reductionPivot9965 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound9965 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6186).moment H =
      Integer.Sparse.eval reductionProjection9965 (momentVector H) := by
  have heq : reductionPivot9965 = (fun u v => (normalNode6186).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6186).moment H = injectiveMoment H reductionPivot9965 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6186).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9965 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9965 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9965 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2713, oldProjection2061, oldProjection1512, reductionProjection1409, reductionProjection1409] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9965 (0 : Fin 5)) = canonicalInput12802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2713 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12802 hH))).trans (oldProjectionSound2713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9965 (1 : Fin 5)) = canonicalInput12654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12654 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9965 (2 : Fin 5)) = canonicalInput12639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12639 hH))).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9965 (3 : Fin 5)) = canonicalInput12636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1409 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12636 hH))).trans (reductionSound1409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9965 (4 : Fin 5)) = (normalNode6189).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1409 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9965 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6186).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9965 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6186).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9965 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 720] ![1, 1, 1, 2, 2] reductionProjection9965 ![oldProjection2713, oldProjection2061, oldProjection1512, reductionProjection1409, reductionProjection1409]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9966 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -40), (81, -480), (94, 90), (228, -240), (241, 160), (243, 160), (247, 80), (465, 1440), (505, 720), (508, 720), (602, 720), (642, 1440), (697, -720), (698, 960), (700, 400), (704, 160), (1052, -240), (1059, 240), (1131, 720), (1219, -240), (1226, 160), (1227, 160), (1251, -35)]

def reductionPivot9966 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound9966 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6187).moment H =
      Integer.Sparse.eval reductionProjection9966 (momentVector H) := by
  have heq : reductionPivot9966 = (fun u v => (normalNode6187).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6187).moment H = injectiveMoment H reductionPivot9966 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6187).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9966 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9966 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9966 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9962, reductionProjection1339, reductionProjection1414, oldProjection1513, reductionProjection1418] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9966 (0 : Fin 5)) = canonicalInput12803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9962 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12803 hH))).trans (reductionSound9962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9966 (1 : Fin 5)) = canonicalInput12656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1339 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12656 hH))).trans (reductionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9966 (2 : Fin 5)) = (normalNode6191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1414 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9966 (3 : Fin 5)) = canonicalInput12640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12640 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9966 (4 : Fin 5)) = (normalNode6190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1418 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9966 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6187).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9966 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6187).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9966 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 2] ![1, 5, 1, 1, 720] reductionProjection9966 ![reductionProjection9962, reductionProjection1339, reductionProjection1414, oldProjection1513, reductionProjection1418]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9967 : Integer.Sparse (Fin 1613) := [(72, 96), (94, 1), (222, -144), (229, 48), (243, -16), (700, -48), (896, -144), (1058, 48), (1251, -3)]

def reductionPivot9967 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -3, 2, 2], ![-1, 3, 0, -2], ![0, 0, -2, 2], ![1, 0, 1, -2]]

theorem reductionSound9967 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6208).moment H =
      Integer.Sparse.eval reductionProjection9967 (momentVector H) := by
  have heq : reductionPivot9967 = (fun u v => (normalNode6208).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6208).moment H = injectiveMoment H reductionPivot9967 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6208).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9967 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9967 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9967 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1017, oldProjection729, reductionProjection1671, reductionProjection1544] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9967 (0 : Fin 4)) = canonicalInput23867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23867 hH))).trans (oldProjectionSound1017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9967 (1 : Fin 4)) = canonicalInput12785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection729 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12785 hH))).trans (oldProjectionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9967 (2 : Fin 4)) = canonicalInput12689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1671 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12689 hH))).trans (reductionSound1671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9967 (3 : Fin 4)) = canonicalInput12685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1544 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9967 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12685 hH))).trans (reductionSound1544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6208).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9967 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6208).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9967 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 1] ![2, 4, 288, 288] reductionProjection9967 ![oldProjection1017, oldProjection729, reductionProjection1671, reductionProjection1544]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9968 : Integer.Sparse (Fin 1613) := [(76, 6), (81, 3), (231, 3), (243, -1), (442, -9), (698, -1), (810, -9), (1058, 3), (1226, -1)]

def reductionPivot9968 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 0, -2, 2], ![1, 1, 1, -3]]

theorem reductionSound9968 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6193).moment H =
      Integer.Sparse.eval reductionProjection9968 (momentVector H) := by
  have heq : reductionPivot9968 = (fun u v => (normalNode6193).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6193).moment H = injectiveMoment H reductionPivot9968 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6193).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9968 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9968 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9968 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection953, reductionProjection3737, reductionProjection4312, reductionProjection4070] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9968 (0 : Fin 4)) = canonicalInput23863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23863 hH))).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9968 (1 : Fin 4)) = canonicalInput12776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3737 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12776 hH))).trans (reductionSound3737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9968 (2 : Fin 4)) = canonicalInput12657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12657 hH))).trans (reductionSound4312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9968 (3 : Fin 4)) = canonicalInput12650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4070 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9968 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12650 hH))).trans (reductionSound4070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6193).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9968 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6193).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9968 (j : Fin 4)))
      2 18 18 2 ![9, 3, 1, 1] ![2, 6, 18, 18] reductionProjection9968 ![oldProjection953, reductionProjection3737, reductionProjection4312, reductionProjection4070]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9969 : Integer.Sparse (Fin 1613) := [(0, -4), (72, -480), (76, -480), (81, -960), (94, 15), (222, 720), (228, -240), (229, -240), (231, -240), (243, 160), (442, 720), (508, 720), (603, 720), (642, 720), (674, 720), (698, 560), (700, 240), (810, 720), (896, 720), (1058, -480), (1059, 160), (1221, -480), (1226, 240), (1227, 160), (1251, -25), (1289, -1440)]

def reductionPivot9969 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound9969 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6192).moment H =
      Integer.Sparse.eval reductionProjection9969 (momentVector H) := by
  have heq : reductionPivot9969 = (fun u v => (normalNode6192).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6192).moment H = injectiveMoment H reductionPivot9969 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6192).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9969 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9969 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9969 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1809, reductionProjection9967, reductionProjection1414, reductionProjection3742, reductionProjection9968] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9969 (0 : Fin 5)) = canonicalInput14052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1809 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14052 hH))).trans (oldProjectionSound1809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9969 (1 : Fin 5)) = (normalNode6208).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9967 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9969 (2 : Fin 5)) = canonicalInput12653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1414 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12653 hH))).trans (reductionSound1414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9969 (3 : Fin 5)) = canonicalInput12649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3742 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12649 hH))).trans (reductionSound3742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9969 (4 : Fin 5)) = (normalNode6193).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9968 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9969 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6192).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9969 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6192).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9969 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1, 18] ![1, 5, 1, 1440, 80] reductionProjection9969 ![oldProjection1809, reductionProjection9967, reductionProjection1414, reductionProjection3742, reductionProjection9968]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9970 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -10), (94, 20), (210, 360), (241, 40), (247, 40), (442, 360), (465, 720), (469, 360), (492, 360), (505, 360), (622, 360), (642, 360), (697, -240), (698, 120), (704, 40), (809, 360), (1022, 360), (1251, 5)]

def reductionPivot9970 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound9970 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6194).moment H =
      Integer.Sparse.eval reductionProjection9970 (momentVector H) := by
  have heq : reductionPivot9970 = (fun u v => (normalNode6194).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6194).moment H = injectiveMoment H reductionPivot9970 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6194).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9970 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9970 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9970 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7968, reductionProjection3746, oldProjection483, reductionProjection9948, reductionProjection9964] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9970 (0 : Fin 5)) = canonicalInput12451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7968 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12451 hH))).trans (reductionSound7968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9970 (1 : Fin 5)) = (normalNode6188).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3746 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9970 (2 : Fin 5)) = canonicalInput12651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12651 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9970 (3 : Fin 5)) = (normalNode6196).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9948 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9970 (4 : Fin 5)) = canonicalInput12652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9964 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9970 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12652 hH))).trans (reductionSound9964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6194).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9970 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6194).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9970 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1, 2, 1440] ![1, 1, 1440, 720, 1] reductionProjection9970 ![reductionProjection7968, reductionProjection3746, oldProjection483, reductionProjection9948, reductionProjection9964]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9971 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 2), (222, 144), (241, 16), (243, 16), (442, 144), (465, 432), (505, 144), (602, 432), (603, 144), (642, 432), (697, -48), (698, 80), (700, 32), (809, 144), (1052, -48), (1059, 48), (1095, 144), (1131, 288), (1251, -13)]

def reductionPivot9971 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]

theorem reductionSound9971 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6195).moment H =
      Integer.Sparse.eval reductionProjection9971 (momentVector H) := by
  have heq : reductionPivot9971 = (fun u v => (normalNode6195).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6195).moment H = injectiveMoment H reductionPivot9971 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6195).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9971 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9971 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 2, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9971 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2260, reductionProjection1418, reductionProjection1418, reductionProjection9953, reductionProjection1339] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9971 (0 : Fin 5)) = canonicalInput12454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2260 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12454 hH))).trans (oldProjectionSound2260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9971 (1 : Fin 5)) = (normalNode6190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1418 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9971 (2 : Fin 5)) = canonicalInput12655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1418 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12655 hH))).trans (reductionSound1418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9971 (3 : Fin 5)) = (normalNode6197).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9953 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9971 (4 : Fin 5)) = canonicalInput12656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1339 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9971 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12656 hH))).trans (reductionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6195).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9971 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6195).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9971 (j : Fin 5)))
      1 288 288 1 ![2, 2, 2, 2, 288] ![144, 144, 144, 144, 1] reductionProjection9971 ![oldProjection2260, reductionProjection1418, reductionProjection1418, reductionProjection9953, reductionProjection1339]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9972 : Integer.Sparse (Fin 1613) := [(88, 2), (90, -1), (91, 1), (1226, 1)]

def reductionPivot9972 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![0, 1, -3, 2], ![0, 2, 1, -3]]

theorem reductionSound9972 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6246).moment H =
      Integer.Sparse.eval reductionProjection9972 (momentVector H) := by
  have heq : reductionPivot9972 = (fun u v => (normalNode6246).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6246).moment H = injectiveMoment H reductionPivot9972 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6246).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot9972 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9972 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9972 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection21, oldProjection108, reductionProjection54] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9972 (0 : Fin 3)) = canonicalInput23892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9972 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection21 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9972 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection21 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23892 hH))).trans (oldProjectionSound21 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9972 (1 : Fin 3)) = canonicalInput12791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9972 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9972 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12791 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9972 (2 : Fin 3)) = canonicalInput12736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9972 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9972 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12736 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6246).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9972 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6246).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9972 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection9972 ![oldProjection21, oldProjection108, reductionProjection54]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9973 : Integer.Sparse (Fin 1613) := [(76, 3), (88, -3), (91, -1), (209, -9), (698, -3), (700, -1), (1226, -4)]

def reductionPivot9973 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, -3, 2], ![1, 0, 0, -1]]

theorem reductionSound9973 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6202).moment H =
      Integer.Sparse.eval reductionProjection9973 (momentVector H) := by
  have heq : reductionPivot9973 = (fun u v => (normalNode6202).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6202).moment H = injectiveMoment H reductionPivot9973 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6202).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9973 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9973 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9973 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection362, reductionProjection9972, reductionProjection361, reductionProjection1541] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9973 (0 : Fin 4)) = canonicalInput23884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection362 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23884 hH))).trans (reductionSound362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9973 (1 : Fin 4)) = canonicalInput12783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9972 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12783 hH))).trans (reductionSound9972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9973 (2 : Fin 4)) = canonicalInput12671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection361 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12671 hH))).trans (reductionSound361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9973 (3 : Fin 4)) = canonicalInput12663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1541 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9973 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12663 hH))).trans (reductionSound1541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6202).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9973 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6202).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9973 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection9973 ![reductionProjection362, reductionProjection9972, reductionProjection361, reductionProjection1541]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9974 : Integer.Sparse (Fin 1613) := [(81, 3), (90, -2), (231, 3), (243, -1), (589, -9), (622, -9), (698, -4), (700, -3), (1059, -1), (1226, -1)]

def reductionPivot9974 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 0, -2, 2], ![1, 1, -1, -1]]

theorem reductionSound9974 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6199).moment H =
      Integer.Sparse.eval reductionProjection9974 (momentVector H) := by
  have heq : reductionPivot9974 = (fun u v => (normalNode6199).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6199).moment H = injectiveMoment H reductionPivot9974 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6199).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9974 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9974 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9974 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection852, reductionProjection4971, reductionProjection3351, reductionProjection5311] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9974 (0 : Fin 4)) = canonicalInput23883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection852 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23883 hH))).trans (oldProjectionSound852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9974 (1 : Fin 4)) = canonicalInput12782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4971 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12782 hH))).trans (reductionSound4971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9974 (2 : Fin 4)) = canonicalInput12670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12670 hH))).trans (reductionSound3351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9974 (3 : Fin 4)) = canonicalInput12662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5311 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9974 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12662 hH))).trans (reductionSound5311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6199).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9974 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6199).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9974 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection9974 ![oldProjection852, reductionProjection4971, reductionProjection3351, reductionProjection5311]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9975 : Integer.Sparse (Fin 1613) := [(0, -3), (76, -240), (81, -480), (88, 240), (90, 320), (91, 80), (209, 720), (231, -480), (241, 80), (243, 480), (244, 80), (578, 720), (589, 1440), (622, 1440), (698, 1040), (700, 640), (896, 720), (1052, -240), (1059, 320), (1221, -240), (1226, 640), (1227, 160), (1251, -45)]

def reductionPivot9975 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound9975 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6198).moment H =
      Integer.Sparse.eval reductionProjection9975 (momentVector H) := by
  have heq : reductionPivot9975 = (fun u v => (normalNode6198).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6198).moment H = injectiveMoment H reductionPivot9975 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6198).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9975 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9975 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 18, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9975 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1756, reductionProjection7650, reductionProjection9973, reductionProjection9974, reductionProjection9974] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9975 (0 : Fin 5)) = canonicalInput13785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13785 hH))).trans (oldProjectionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9975 (1 : Fin 5)) = canonicalInput12684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7650 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12684 hH))).trans (reductionSound7650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9975 (2 : Fin 5)) = (normalNode6202).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9973 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9975 (3 : Fin 5)) = canonicalInput12661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9974 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12661 hH))).trans (reductionSound9974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9975 (4 : Fin 5)) = (normalNode6199).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9974 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9975 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6198).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9975 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6198).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9975 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 18, 18, 18] ![1, 10, 80, 80, 80] reductionProjection9975 ![oldProjection1756, reductionProjection7650, reductionProjection9973, reductionProjection9974, reductionProjection9974]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9976 : Integer.Sparse (Fin 1613) := [(0, -3), (76, -720), (88, 400), (90, 320), (91, 80), (94, 40), (209, 720), (241, 320), (243, 480), (508, 720), (634, 1440), (682, -240), (697, -240), (698, 800), (700, 80), (924, 720), (1225, 80), (1226, 720), (1227, 240), (1251, -125)]

def reductionPivot9976 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound9976 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6200).moment H =
      Integer.Sparse.eval reductionProjection9976 (momentVector H) := by
  have heq : reductionPivot9976 = (fun u v => (normalNode6200).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6200).moment H = injectiveMoment H reductionPivot9976 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6200).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9976 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9976 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 18, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9976 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2049, oldProjection2061, reductionProjection9973, reductionProjection9869, reductionProjection9869] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9976 (0 : Fin 5)) = canonicalInput12458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2049 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12458 hH))).trans (reductionSound2049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9976 (1 : Fin 5)) = canonicalInput12654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12654 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9976 (2 : Fin 5)) = (normalNode6202).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9973 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9976 (3 : Fin 5)) = canonicalInput12664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9869 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12664 hH))).trans (reductionSound9869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9976 (4 : Fin 5)) = canonicalInput12665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9869 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9976 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12665 hH))).trans (reductionSound9869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6200).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9976 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6200).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9976 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 18, 144, 144] ![20, 1, 80, 10, 10] reductionProjection9976 ![reductionProjection2049, oldProjection2061, reductionProjection9973, reductionProjection9869, reductionProjection9869]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9977 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (20, 25), (58, -480), (84, -480), (94, -40), (243, 720), (698, 400), (700, 880), (704, 160), (1052, -960), (1217, -240), (1219, -480), (1226, 320), (1251, -30)]

def reductionPivot9977 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound9977 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6203).moment H =
      Integer.Sparse.eval reductionProjection9977 (momentVector H) := by
  have heq : reductionPivot9977 = (fun u v => (normalNode6203).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6203).moment H = injectiveMoment H reductionPivot9977 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6203).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9977 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9977 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9977 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1717, reductionProjection9836, oldProjection1028, reductionProjection8576, reductionProjection8576] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9977 (0 : Fin 5)) = canonicalInput12477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1717 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1717 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12477 hH))).trans (oldProjectionSound1717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9977 (1 : Fin 5)) = canonicalInput12672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9836 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12672 hH))).trans (reductionSound9836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9977 (2 : Fin 5)) = canonicalInput12674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12674 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9977 (3 : Fin 5)) = canonicalInput12675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8576 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12675 hH))).trans (reductionSound8576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9977 (4 : Fin 5)) = canonicalInput12676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8576 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9977 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12676 hH))).trans (reductionSound8576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6203).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9977 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6203).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9977 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 1440, 1440] ![1, 5, 10, 1, 1] reductionProjection9977 ![oldProjection1717, reductionProjection9836, oldProjection1028, reductionProjection8576, reductionProjection8576]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9978 : Integer.Sparse (Fin 1613) := [(19, 2), (58, 24), (84, 24), (94, 5), (243, -24), (698, -16), (700, -40), (704, -8), (1052, 48), (1226, -8), (1251, -1)]

def reductionPivot9978 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 3, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound9978 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6204).moment H =
      Integer.Sparse.eval reductionProjection9978 (momentVector H) := by
  have heq : reductionPivot9978 = (fun u v => (normalNode6204).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6204).moment H = injectiveMoment H reductionPivot9978 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6204).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9978 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9978 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9978 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection809, reductionProjection147, reductionProjection1652, oldProjection1028] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9978 (0 : Fin 4)) = canonicalInput12480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection809 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12480 hH))).trans (oldProjectionSound809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9978 (1 : Fin 4)) = canonicalInput12673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection147 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12673 hH))).trans (reductionSound147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9978 (2 : Fin 4)) = canonicalInput12677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1652 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12677 hH))).trans (reductionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9978 (3 : Fin 4)) = canonicalInput12678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9978 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12678 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6204).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9978 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6204).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9978 (j : Fin 4)))
      2 144 144 2 ![36, 72, 144, 144] ![4, 2, 1, 1] reductionProjection9978 ![oldProjection809, reductionProjection147, reductionProjection1652, oldProjection1028]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9979 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, 10), (243, -160), (698, -160), (700, -400), (704, -80), (1052, 240), (1131, -720), (1219, 240), (1251, -35)]

def reductionPivot9979 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 3, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound9979 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6206).moment H =
      Integer.Sparse.eval reductionProjection9979 (momentVector H) := by
  have heq : reductionPivot9979 = (fun u v => (normalNode6206).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6206).moment H = injectiveMoment H reductionPivot9979 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6206).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9979 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9979 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9979 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1105, reductionProjection1652, reductionProjection1417, oldProjection1104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9979 (0 : Fin 4)) = canonicalInput12485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1105 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12485 hH))).trans (oldProjectionSound1105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9979 (1 : Fin 4)) = canonicalInput12677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1652 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12677 hH))).trans (reductionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9979 (2 : Fin 4)) = canonicalInput12682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1417 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12682 hH))).trans (reductionSound1417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9979 (3 : Fin 4)) = canonicalInput12683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1104 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9979 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12683 hH))).trans (oldProjectionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6206).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9979 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6206).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9979 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 1, 720] ![10, 10, 1440, 2] reductionProjection9979 ![oldProjection1105, reductionProjection1652, reductionProjection1417, oldProjection1104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9980 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 4), (94, -30), (243, 128), (698, 96), (700, 192), (704, 32), (1052, -192), (1131, 144), (1219, -144), (1226, 32), (1251, -13)]

def reductionPivot9980 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9980 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6205).moment H =
      Integer.Sparse.eval reductionProjection9980 (momentVector H) := by
  have heq : reductionPivot9980 = (fun u v => (normalNode6205).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6205).moment H = injectiveMoment H reductionPivot9980 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6205).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9980 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9980 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9980 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2525, reductionProjection8576, oldProjection1104, reductionProjection9979, reductionProjection1258] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9980 (0 : Fin 5)) = canonicalInput12482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2525 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12482 hH))).trans (oldProjectionSound2525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9980 (1 : Fin 5)) = canonicalInput12675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8576 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12675 hH))).trans (reductionSound8576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9980 (2 : Fin 5)) = canonicalInput12679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1104 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12679 hH))).trans (oldProjectionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9980 (3 : Fin 5)) = canonicalInput12680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9979 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12680 hH))).trans (reductionSound9979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9980 (4 : Fin 5)) = canonicalInput12681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1258 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9980 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12681 hH))).trans (reductionSound1258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6205).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9980 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6205).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9980 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 720, 1440, 1440] ![2, 1, 2, 1, 1] reductionProjection9980 ![oldProjection2525, reductionProjection8576, oldProjection1104, reductionProjection9979, reductionProjection1258]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9981 : Integer.Sparse (Fin 1613) := [(42, 2), (84, -3), (90, 1), (91, 1), (243, 1), (700, 1)]

def reductionPivot9981 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 3, -2], ![1, -3, -1, 3], ![1, 3, -2, -2]]

theorem reductionSound9981 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9444).moment H =
      Integer.Sparse.eval reductionProjection9981 (momentVector H) := by
  have heq : reductionPivot9981 = (fun u v => (normalNode9444).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9444).moment H = injectiveMoment H reductionPivot9981 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9444).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9444).entries)).symm
  have hshape : reductionPivot9981 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9981 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9981 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection146, reductionProjection48, oldProjection95] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9981 (0 : Fin 3)) = canonicalInput9607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9981 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9981 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9607 hH))).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9981 (1 : Fin 3)) = canonicalInput22435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9981 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection48 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9981 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection48 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22435 hH))).trans (reductionSound48 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9981 (2 : Fin 3)) = canonicalInput22463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9981 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9981 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22463 hH))).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9444).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9981 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9444).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9981 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection9981 ![reductionProjection146, reductionProjection48, oldProjection95]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9982 : Integer.Sparse (Fin 1613) := [(42, -16), (84, 24), (90, -8), (91, -8), (94, 3), (243, -16), (244, -8), (592, -72), (698, -8), (700, -8), (1226, -8), (1251, -1)]

def reductionPivot9982 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -3, 2, 2], ![-1, 3, 1, -3], ![0, 0, -2, 2], ![1, 0, 0, -1]]

theorem reductionSound9982 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6211).moment H =
      Integer.Sparse.eval reductionProjection9982 (momentVector H) := by
  have heq : reductionPivot9982 = (fun u v => (normalNode6211).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6211).moment H = injectiveMoment H reductionPivot9982 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6211).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9982 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9982 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9982 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4621, reductionProjection5848, reductionProjection9981, reductionProjection5849] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9982 (0 : Fin 4)) = canonicalInput23868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4621 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23868 hH))).trans (reductionSound4621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9982 (1 : Fin 4)) = canonicalInput12786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5848 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12786 hH))).trans (reductionSound5848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9982 (2 : Fin 4)) = canonicalInput12693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9981 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12693 hH))).trans (reductionSound9981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9982 (3 : Fin 4)) = canonicalInput12691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5849 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9982 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5849 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12691 hH))).trans (reductionSound5849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6211).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9982 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6211).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9982 (j : Fin 4)))
      2 144 144 2 ![144, 144, 9, 1] ![1, 1, 16, 144] reductionProjection9982 ![reductionProjection4621, reductionProjection5848, reductionProjection9981, reductionProjection5849]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9983 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (42, 240), (58, -240), (60, 160), (72, -480), (84, -240), (90, 80), (91, 80), (94, -70), (222, 720), (229, -240), (243, 640), (244, 160), (468, 720), (592, 720), (698, 400), (700, 800), (701, 80), (704, 80), (896, 1440), (1052, -720), (1058, -240), (1059, 160), (1219, -240), (1226, 160), (1251, 30)]

def reductionPivot9983 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 3, 0, -2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9983 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6207).moment H =
      Integer.Sparse.eval reductionProjection9983 (momentVector H) := by
  have heq : reductionPivot9983 = (fun u v => (normalNode6207).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6207).moment H = injectiveMoment H reductionPivot9983 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6207).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9983 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9983 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 1440, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9983 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9881, reductionProjection9982, reductionProjection8576, reductionProjection7650, reductionProjection9967] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9983 (0 : Fin 5)) = canonicalInput12806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9881 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9881 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12806 hH))).trans (reductionSound9881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9983 (1 : Fin 5)) = (normalNode6211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9982 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9983 (2 : Fin 5)) = canonicalInput12686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8576 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12686 hH))).trans (reductionSound8576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9983 (3 : Fin 5)) = canonicalInput12684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7650 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12684 hH))).trans (reductionSound7650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9983 (4 : Fin 5)) = (normalNode6208).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9967 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9983 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6207).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9983 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6207).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9983 (j : Fin 5)))
      1 1440 1440 1 ![72, 144, 1440, 144, 288] ![20, 10, 1, 10, 5] reductionProjection9983 ![reductionProjection9881, reductionProjection9982, reductionProjection8576, reductionProjection7650, reductionProjection9967]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

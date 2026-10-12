import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical196
import NoFourMUBs.Step2.SOS.Canonical197
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical265
import NoFourMUBs.Step2.SOS.Canonical266
import NoFourMUBs.Step2.SOS.Canonical314
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical223
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1376 : Integer.Sparse (Fin 1613) := [(579, 1)]

theorem reductionSound1376 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code579).moment H =
      Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
  have hc : coordinates (579 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code579) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1376, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1377 : Integer.Sparse (Fin 1613) := [(563, -1), (569, -1), (579, -2)]

def reductionPivot1377 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 0, 1, -2], ![2, -1, 0, -1]]

theorem reductionSound1377 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode741).moment H =
      Integer.Sparse.eval reductionProjection1377 (momentVector H) := by
  have heq : reductionPivot1377 = (fun u v => (normalNode741).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode741).moment H = injectiveMoment H reductionPivot1377 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode741).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1377 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1377 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1377 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, reductionProjection1375, reductionProjection1376, reductionProjection1376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1377 (0 : Fin 4)) = canonicalInput4662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4662 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1377 (1 : Fin 4)) = canonicalInput1816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1375 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1816 hH))).trans (reductionSound1375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1377 (2 : Fin 4)) = canonicalInput1809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1809 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1377 (3 : Fin 4)) = canonicalInput1807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1377 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1807 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode741).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1377 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode741).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1377 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1377 ![reductionProjection1046, reductionProjection1375, reductionProjection1376, reductionProjection1376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1378 : Integer.Sparse (Fin 1613) := [(0, -3), (72, -240), (94, -10), (185, -720), (241, 80), (243, 80), (430, 360), (443, 360), (455, 720), (563, 360), (569, 360), (579, 720), (698, 320), (700, 80), (1050, -480), (1055, -240), (1058, -480), (1059, 160), (1221, -240), (1227, 80), (1251, -55)]

def reductionPivot1378 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]

theorem reductionSound1378 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode725).moment H =
      Integer.Sparse.eval reductionProjection1378 (momentVector H) := by
  have heq : reductionPivot1378 = (fun u v => (normalNode725).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode725).moment H = injectiveMoment H reductionPivot1378 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode725).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1378 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1378 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1378 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection100, reductionProjection1374, reductionProjection1377, oldProjection2289, oldProjection2289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1378 (0 : Fin 5)) = (normalNode41).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection100 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1378 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code185).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1374 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1378 (2 : Fin 5)) = canonicalInput2062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1377 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2062 hH))).trans (reductionSound1377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1378 (3 : Fin 5)) = canonicalInput2091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2289 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2091 hH))).trans (oldProjectionSound2289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1378 (4 : Fin 5)) = canonicalInput2094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2289 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1378 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2094 hH))).trans (oldProjectionSound2289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode725).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1378 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode725).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1378 (j : Fin 5)))
      1 720 1440 2 ![2, 1, 2, 1440, 1440] ![720, 1440, 720, 1, 1] reductionProjection1378 ![reductionProjection100, reductionProjection1374, reductionProjection1377, oldProjection2289, oldProjection2289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1379 : Integer.Sparse (Fin 1613) := [(186, 1)]

theorem reductionSound1379 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code186).moment H =
      Integer.Sparse.eval reductionProjection1379 (momentVector H) := by
  have hc : coordinates (186 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code186) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1379, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1380 : Integer.Sparse (Fin 1613) := [(597, 1)]

theorem reductionSound1380 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code597).moment H =
      Integer.Sparse.eval reductionProjection1380 (momentVector H) := by
  have hc : coordinates (597 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code597) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1380, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1381 : Integer.Sparse (Fin 1613) := [(1143, 1)]

theorem reductionSound1381 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1143).moment H =
      Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
  have hc : coordinates (1143 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1143) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1381, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1382 : Integer.Sparse (Fin 1613) := [(0, 1), (597, -720), (610, -720), (698, -80), (1055, 240), (1058, 240), (1143, -720), (1227, -80), (1251, 15)]

def reductionPivot1382 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound1382 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode926).moment H =
      Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
  have heq : reductionPivot1382 = (fun u v => (normalNode926).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode926).moment H = injectiveMoment H reductionPivot1382 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode926).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1382 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1382 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1382 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection513, reductionProjection1380, oldProjection828, reductionProjection1381] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1382 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1382 (1 : Fin 4)) = canonicalInput2159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2159 hH))).trans (reductionSound1380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1382 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1306 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1306 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1382 (3 : Fin 4)) = canonicalInput2054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1382 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2054 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode926).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1382 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode926).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1382 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection1382 ![oldProjection513, reductionProjection1380, oldProjection828, reductionProjection1381]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1383 : Integer.Sparse (Fin 1613) := [(94, 7), (186, -288), (475, 144), (483, 144), (546, 144), (597, 144), (610, 144), (694, -96), (698, 64), (1047, -96), (1055, -144), (1058, -144), (1109, 144), (1143, 144), (1227, 64), (1250, 24), (1251, -21), (1321, -48), (1389, -48)]

def reductionPivot1383 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 1, -1], ![2, 0, -1, -1]]

theorem reductionSound1383 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode726).moment H =
      Integer.Sparse.eval reductionProjection1383 (momentVector H) := by
  have heq : reductionPivot1383 = (fun u v => (normalNode726).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode726).moment H = injectiveMoment H reductionPivot1383 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode726).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1383 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1383 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 1, 1440, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1383 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection102, reductionProjection1379, reductionProjection1382, oldProjection2279, reductionProjection1326] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1383 (0 : Fin 5)) = (normalNode42).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection102 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1383 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code186).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1379 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1383 (2 : Fin 5)) = canonicalInput2063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2063 hH))).trans (reductionSound1382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1383 (3 : Fin 5)) = canonicalInput2096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2279 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2096 hH))).trans (oldProjectionSound2279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1383 (4 : Fin 5)) = canonicalInput2098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1383 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2098 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode726).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1383 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode726).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1383 (j : Fin 5)))
      1 288 1440 5 ![6, 1, 1440, 144, 1440] ![240, 1440, 1, 10, 1] reductionProjection1383 ![reductionProjection102, reductionProjection1379, reductionProjection1382, oldProjection2279, reductionProjection1326]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1384 : Integer.Sparse (Fin 1613) := [(1144, 1)]

theorem reductionSound1384 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1144).moment H =
      Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
  have hc : coordinates (1144 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1144) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1384, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1385 : Integer.Sparse (Fin 1613) := [(465, -1), (596, -1), (610, -1), (1144, -1)]

def reductionPivot1385 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound1385 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6161).moment H =
      Integer.Sparse.eval reductionProjection1385 (momentVector H) := by
  have heq : reductionPivot1385 = (fun u v => (normalNode6161).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6161).moment H = injectiveMoment H reductionPivot1385 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6161).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1385 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1385 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1385 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection513, oldProjection483, oldProjection509, reductionProjection1384] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1385 (0 : Fin 4)) = canonicalInput14039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14039 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1385 (1 : Fin 4)) = canonicalInput12646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12646 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1385 (2 : Fin 4)) = canonicalInput12614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12614 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1385 (3 : Fin 4)) = canonicalInput12610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1385 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12610 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6161).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1385 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6161).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1385 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1385 ![oldProjection513, oldProjection483, oldProjection509, reductionProjection1384]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1386 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 240), (94, -10), (697, 240), (698, -240), (1055, 480), (1058, 480), (1219, 240), (1226, -80), (1227, -240), (1250, -60), (1251, 65)]

def reductionPivot1386 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound1386 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode893).moment H =
      Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
  have heq : reductionPivot1386 = (fun u v => (normalNode893).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode893).moment H = injectiveMoment H reductionPivot1386 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode893).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1386 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1386 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1386 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection815, oldProjection828, oldProjection1033, reductionProjection513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1386 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1262 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1262 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1386 (1 : Fin 4)) = canonicalInput2110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2110 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1386 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1323 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1033 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1033 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1323 hH))).trans (oldProjectionSound1033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1386 (3 : Fin 4)) = canonicalInput2135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1386 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2135 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode893).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1386 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode893).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1386 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 9] ![2, 2, 2, 160] reductionProjection1386 ![oldProjection815, oldProjection828, oldProjection1033, reductionProjection513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1387 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (578, -720), (593, -720), (698, -160), (1143, -720), (1221, 240), (1226, -80), (1227, -80), (1251, 30)]

def reductionPivot1387 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -1, 1, -1]]

theorem reductionSound1387 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode935).moment H =
      Integer.Sparse.eval reductionProjection1387 (momentVector H) := by
  have heq : reductionPivot1387 = (fun u v => (normalNode935).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode935).moment H = injectiveMoment H reductionPivot1387 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode935).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1387 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1387 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1387 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1111, reductionProjection1322, reductionProjection1381, oldProjection506] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1387 (0 : Fin 4)) = canonicalInput13905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13905 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1387 (1 : Fin 4)) = canonicalInput2209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2209 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1387 (2 : Fin 4)) = canonicalInput2059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2059 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1387 (3 : Fin 4)) = canonicalInput2050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1387 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2050 hH))).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode935).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1387 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode935).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1387 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1387 ![oldProjection1111, reductionProjection1322, reductionProjection1381, oldProjection506]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1388 : Integer.Sparse (Fin 1613) := [(579, -1), (597, -1), (611, -1), (1313, -1)]

def reductionPivot1388 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, 1, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound1388 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode735).moment H =
      Integer.Sparse.eval reductionProjection1388 (momentVector H) := by
  have heq : reductionPivot1388 = (fun u v => (normalNode735).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode735).moment H = injectiveMoment H reductionPivot1388 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode735).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1388 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1388 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1388 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1109, reductionProjection1376, reductionProjection1366, reductionProjection1380] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1388 (0 : Fin 4)) = canonicalInput5503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5503 hH))).trans (reductionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1388 (1 : Fin 4)) = canonicalInput1813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1813 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1388 (2 : Fin 4)) = canonicalInput1799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1799 hH))).trans (reductionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1388 (3 : Fin 4)) = canonicalInput1797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1388 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1797 hH))).trans (reductionSound1380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode735).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1388 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode735).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1388 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1388 ![reductionProjection1109, reductionProjection1376, reductionProjection1366, reductionProjection1380]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1389 : Integer.Sparse (Fin 1613) := [(0, -3), (87, -240), (94, 15), (465, 720), (578, 720), (579, 720), (593, 720), (596, 720), (597, 1440), (610, 1440), (611, 720), (697, -240), (698, 480), (1055, -720), (1058, -720), (1143, 1440), (1144, 720), (1219, -240), (1221, -240), (1226, 160), (1227, 400), (1250, 60), (1251, -110), (1313, 720)]

def reductionPivot1389 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, -1, 0, -1]]

theorem reductionSound1389 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode727).moment H =
      Integer.Sparse.eval reductionProjection1389 (momentVector H) := by
  have heq : reductionPivot1389 = (fun u v => (normalNode727).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode727).moment H = injectiveMoment H reductionPivot1389 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode727).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1389 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1389 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1440, 1440, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1389 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1385, reductionProjection1386, reductionProjection1387, reductionProjection1382, reductionProjection1388] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1389 (0 : Fin 5)) = canonicalInput2212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1385 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2212 hH))).trans (reductionSound1385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1389 (1 : Fin 5)) = canonicalInput1800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1800 hH))).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1389 (2 : Fin 5)) = canonicalInput1792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1387 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1792 hH))).trans (reductionSound1387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1389 (3 : Fin 5)) = canonicalInput1790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1790 hH))).trans (reductionSound1382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1389 (4 : Fin 5)) = canonicalInput1789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1388 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1389 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1789 hH))).trans (reductionSound1388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode727).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1389 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode727).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1389 (j : Fin 5)))
      1 1440 1440 1 ![2, 1440, 1440, 1440, 2] ![720, 1, 1, 1, 720] reductionProjection1389 ![reductionProjection1385, reductionProjection1386, reductionProjection1387, reductionProjection1382, reductionProjection1388]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1390 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (241, -80), (243, -80), (596, -720), (698, -480), (1115, -720), (1226, -320), (1227, -240), (1251, 45)]

def reductionPivot1390 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound1390 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6162).moment H =
      Integer.Sparse.eval reductionProjection1390 (momentVector H) := by
  have heq : reductionPivot1390 = (fun u v => (normalNode6162).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6162).moment H = injectiveMoment H reductionPivot1390 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6162).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1390 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1390 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1390 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1249, oldProjection827, oldProjection509, oldProjection679] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1390 (0 : Fin 4)) = canonicalInput23879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23879 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1390 (1 : Fin 4)) = canonicalInput12753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12753 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1390 (2 : Fin 4)) = canonicalInput12614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12614 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1390 (3 : Fin 4)) = canonicalInput12603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1390 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12603 hH))).trans (oldProjectionSound679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6162).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1390 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6162).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1390 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 1] ![10, 2, 1440, 1440] reductionProjection1390 ![oldProjection1249, oldProjection827, oldProjection509, oldProjection679]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1391 : Integer.Sparse (Fin 1613) := [(0, 1), (593, -720), (602, -720), (698, -80), (1050, 240), (1058, 240), (1059, -80), (1116, -720), (1251, 15)]

def reductionPivot1391 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound1391 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode942).moment H =
      Integer.Sparse.eval reductionProjection1391 (momentVector H) := by
  have heq : reductionPivot1391 = (fun u v => (normalNode942).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode942).moment H = injectiveMoment H reductionPivot1391 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode942).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1391 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1391 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1391 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection510, reductionProjection1303, oldProjection831, reductionProjection1322] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1391 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2496 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2496 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1391 (1 : Fin 4)) = canonicalInput2190.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1303 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2190 hH))).trans (reductionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1391 (2 : Fin 4)) = canonicalInput2178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2178 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1391 (3 : Fin 4)) = canonicalInput2176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1391 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2176 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode942).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1391 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode942).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1391 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection1391 ![oldProjection510, reductionProjection1303, oldProjection831, reductionProjection1322]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1392 : Integer.Sparse (Fin 1613) := [(184, 1)]

theorem reductionSound1392 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code184).moment H =
      Integer.Sparse.eval reductionProjection1392 (momentVector H) := by
  have hc : coordinates (184 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code184) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1392, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1393 : Integer.Sparse (Fin 1613) := [(0, -1), (87, -60), (94, 5), (184, -360), (241, 20), (243, 20), (593, 180), (596, 180), (597, 180), (602, 180), (610, 180), (697, -60), (698, 220), (1050, -60), (1055, -180), (1058, -240), (1059, 20), (1115, 180), (1116, 180), (1143, 180), (1219, -60), (1226, 100), (1227, 140), (1250, 15), (1251, -35)]

def reductionPivot1393 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![2, -1, -1, 0]]

theorem reductionSound1393 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode728).moment H =
      Integer.Sparse.eval reductionProjection1393 (momentVector H) := by
  have heq : reductionPivot1393 = (fun u v => (normalNode728).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode728).moment H = injectiveMoment H reductionPivot1393 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode728).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1393 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1393 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1393 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1390, reductionProjection1386, reductionProjection1391, reductionProjection1392, reductionProjection1382] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1393 (0 : Fin 5)) = canonicalInput2213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1390 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2213 hH))).trans (reductionSound1390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1393 (1 : Fin 5)) = canonicalInput1801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1801 hH))).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1393 (2 : Fin 5)) = canonicalInput1793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1391 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1793 hH))).trans (reductionSound1391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1393 (3 : Fin 5)) = canonicalInput1791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1791 hH))).trans (reductionSound1392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1393 (4 : Fin 5)) = canonicalInput1790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1393 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1790 hH))).trans (reductionSound1382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode728).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1393 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode728).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1393 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 1440, 1, 1440] ![1, 1, 1, 1440, 1] reductionProjection1393 ![reductionProjection1390, reductionProjection1386, reductionProjection1391, reductionProjection1392, reductionProjection1382]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1394 : Integer.Sparse (Fin 1613) := [(0, 7), (94, -70), (563, -720), (698, -160), (1250, -60), (1251, 55), (1389, 480)]

def reductionPivot1394 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, -1, 1, -1]]

theorem reductionSound1394 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10203).moment H =
      Integer.Sparse.eval reductionProjection1394 (momentVector H) := by
  have heq : reductionPivot1394 = (fun u v => (normalNode10203).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10203).moment H = injectiveMoment H reductionPivot1394 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10203).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1394 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1394 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1394 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1333, oldProjection1263, oldProjection1333, reductionProjection1046] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1394 (0 : Fin 4)) = canonicalInput24718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24718 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1394 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1263 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1394 (2 : Fin 4)) = canonicalInput20130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20130 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1394 (3 : Fin 4)) = canonicalInput20124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1394 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20124 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10203).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1394 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10203).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1394 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 1] ![2, 2, 2, 1440] reductionProjection1394 ![oldProjection1333, oldProjection1263, oldProjection1333, reductionProjection1046]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1395 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -25), (546, -720), (579, -720), (698, -80), (1143, -720), (1389, 240)]

def reductionPivot1395 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]

theorem reductionSound1395 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode934).moment H =
      Integer.Sparse.eval reductionProjection1395 (momentVector H) := by
  have heq : reductionPivot1395 = (fun u v => (normalNode934).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode934).moment H = injectiveMoment H reductionPivot1395 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode934).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1395 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1395 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1395 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1333, oldProjection500, reductionProjection1381, reductionProjection1376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1395 (0 : Fin 4)) = canonicalInput14107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14107 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1395 (1 : Fin 4)) = canonicalInput2210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2210 hH))).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1395 (2 : Fin 4)) = canonicalInput2059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2059 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1395 (3 : Fin 4)) = canonicalInput2049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1395 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2049 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode934).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1395 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode934).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1395 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1395 ![oldProjection1333, oldProjection500, reductionProjection1381, reductionProjection1376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1396 : Integer.Sparse (Fin 1613) := [(0, -13), (94, 120), (185, -1440), (546, 1440), (563, 1440), (569, 720), (579, 2880), (698, 320), (1143, 1440), (1250, 60), (1251, -55), (1389, -960)]

def reductionPivot1396 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]

theorem reductionSound1396 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode729).moment H =
      Integer.Sparse.eval reductionProjection1396 (momentVector H) := by
  have heq : reductionPivot1396 = (fun u v => (normalNode729).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode729).moment H = injectiveMoment H reductionPivot1396 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode729).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1396 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1396 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1396 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1394, reductionProjection1377, reductionProjection1374, reductionProjection1395, reductionProjection1395] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1396 (0 : Fin 5)) = canonicalInput4655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1394 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4655 hH))).trans (reductionSound1394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1396 (1 : Fin 5)) = (normalNode741).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1377 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1396 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code185).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1374 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1396 (3 : Fin 5)) = canonicalInput1784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1395 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1784 hH))).trans (reductionSound1395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1396 (4 : Fin 5)) = canonicalInput1783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1395 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1396 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1783 hH))).trans (reductionSound1395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode729).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1396 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode729).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1396 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1, 1440, 1440] ![1, 720, 1440, 1, 1] reductionProjection1396 ![reductionProjection1394, reductionProjection1377, reductionProjection1374, reductionProjection1395, reductionProjection1395]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1397 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -6), (610, -144), (698, -16), (1251, 11), (1389, 96), (1397, -144)]

def reductionPivot1397 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound1397 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10196).moment H =
      Integer.Sparse.eval reductionProjection1397 (momentVector H) := by
  have heq : reductionPivot1397 = (fun u v => (normalNode10196).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10196).moment H = injectiveMoment H reductionPivot1397 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10196).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1397 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1397 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1397 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1365, oldProjection513, oldProjection1333, oldProjection1096] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1397 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1397).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1397 (1 : Fin 4)) = canonicalInput20140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20140 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1397 (2 : Fin 4)) = canonicalInput20118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20118 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1397 (3 : Fin 4)) = canonicalInput20115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1096 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1397 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20115 hH))).trans (oldProjectionSound1096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10196).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1397 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10196).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1397 (j : Fin 4)))
      2 288 1440 10 ![1, 1, 720, 720] ![1440, 1440, 2, 2] reductionProjection1397 ![reductionProjection1365, oldProjection513, oldProjection1333, oldProjection1096]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1398 : Integer.Sparse (Fin 1613) := [(1380, 1)]

theorem reductionSound1398 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1380).moment H =
      Integer.Sparse.eval reductionProjection1398 (momentVector H) := by
  have hc : coordinates (1380 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1380) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1398, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1399 : Integer.Sparse (Fin 1613) := [(1143, -2), (1380, -1), (1398, -1)]

def reductionPivot1399 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![2, 1, -2, -1]]

theorem reductionSound1399 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode734).moment H =
      Integer.Sparse.eval reductionProjection1399 (momentVector H) := by
  have heq : reductionPivot1399 = (fun u v => (normalNode734).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode734).moment H = injectiveMoment H reductionPivot1399 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode734).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1399 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1399 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1399 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1398, reductionProjection1381, reductionProjection1381, reductionProjection1367] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1399 (0 : Fin 4)) = canonicalInput5502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1398 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5502 hH))).trans (reductionSound1398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1399 (1 : Fin 4)) = canonicalInput1812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1812 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1399 (2 : Fin 4)) = canonicalInput1796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1796 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1399 (3 : Fin 4)) = canonicalInput1794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1367 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1399 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1794 hH))).trans (reductionSound1367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode734).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1399 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode734).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1399 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1399 ![reductionProjection1398, reductionProjection1381, reductionProjection1381, reductionProjection1367]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1400 : Integer.Sparse (Fin 1613) := [(0, 6), (94, 55), (186, -1440), (546, 720), (579, 720), (597, 720), (610, 720), (611, 720), (698, 240), (1055, -240), (1058, -240), (1143, 1440), (1227, 160), (1250, 60), (1251, -95), (1313, 720), (1321, -240), (1380, 720), (1389, -720), (1397, 720), (1398, 720)]

def reductionPivot1400 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![2, 0, -1, -1]]

theorem reductionSound1400 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode730).moment H =
      Integer.Sparse.eval reductionProjection1400 (momentVector H) := by
  have heq : reductionPivot1400 = (fun u v => (normalNode730).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode730).moment H = injectiveMoment H reductionPivot1400 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode730).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1400 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1400 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 1, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1400 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1397, reductionProjection1388, reductionProjection1379, reductionProjection1326, reductionProjection1399] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1400 (0 : Fin 5)) = canonicalInput4657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1397 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4657 hH))).trans (reductionSound1397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1400 (1 : Fin 5)) = canonicalInput1802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1388 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1802 hH))).trans (reductionSound1388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1400 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code186).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1379 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1400 (3 : Fin 5)) = canonicalInput1785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1785 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1400 (4 : Fin 5)) = (normalNode734).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1399 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1400 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode730).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1400 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode730).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1400 (j : Fin 5)))
      1 1440 1440 1 ![288, 2, 1, 1440, 2] ![5, 720, 1440, 1, 720] reductionProjection1400 ![reductionProjection1397, reductionProjection1388, reductionProjection1379, reductionProjection1326, reductionProjection1399]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1401 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -25), (602, -720), (698, -160), (1117, -720), (1227, -160), (1251, 25), (1389, 480)]

def reductionPivot1401 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]

theorem reductionSound1401 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8886).moment H =
      Integer.Sparse.eval reductionProjection1401 (momentVector H) := by
  have heq : reductionPivot1401 = (fun u v => (normalNode8886).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8886).moment H = injectiveMoment H reductionPivot1401 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8886).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1401 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1401 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1401 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1333, oldProjection510, oldProjection1078, oldProjection680] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1401 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7144 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7144 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1401 (1 : Fin 4)) = canonicalInput17034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17034 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1401 (2 : Fin 4)) = canonicalInput17019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17019 hH))).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1401 (3 : Fin 4)) = canonicalInput17017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection680 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1401 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17017 hH))).trans (oldProjectionSound680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8886).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1401 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8886).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1401 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 720, 1] ![2, 1440, 2, 1440] reductionProjection1401 ![oldProjection1333, oldProjection510, oldProjection1078, oldProjection680]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1402 : Integer.Sparse (Fin 1613) := [(639, 1)]

theorem reductionSound1402 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code639).moment H =
      Integer.Sparse.eval reductionProjection1402 (momentVector H) := by
  have hc : coordinates (639 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code639) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1402, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1403 : Integer.Sparse (Fin 1613) := [(645, 1)]

theorem reductionSound1403 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code645).moment H =
      Integer.Sparse.eval reductionProjection1403 (momentVector H) := by
  have hc : coordinates (645 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code645) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1403, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1404 : Integer.Sparse (Fin 1613) := [(579, -1), (636, -1), (639, -1), (645, -1)]

def reductionPivot1404 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 0, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1404 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode742).moment H =
      Integer.Sparse.eval reductionProjection1404 (momentVector H) := by
  have heq : reductionPivot1404 = (fun u v => (normalNode742).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode742).moment H = injectiveMoment H reductionPivot1404 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode742).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1404 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1404 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1404 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1136, reductionProjection1402, reductionProjection1403, reductionProjection1376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1404 (0 : Fin 4)) = canonicalInput5505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5505 hH))).trans (reductionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1404 (1 : Fin 4)) = canonicalInput1818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1818 hH))).trans (reductionSound1402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1404 (2 : Fin 4)) = canonicalInput1810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1810 hH))).trans (reductionSound1403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1404 (3 : Fin 4)) = canonicalInput1807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1404 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1807 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode742).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1404 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode742).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1404 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1404 ![reductionProjection1136, reductionProjection1402, reductionProjection1403, reductionProjection1376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1405 : Integer.Sparse (Fin 1613) := [(546, -1), (635, -1), (638, -1), (1116, -1)]

def reductionPivot1405 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]

theorem reductionSound1405 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode940).moment H =
      Integer.Sparse.eval reductionProjection1405 (momentVector H) := by
  have heq : reductionPivot1405 = (fun u v => (normalNode940).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode940).moment H = injectiveMoment H reductionPivot1405 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode940).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1405 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1405 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1405 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection517, reductionProjection1303, oldProjection518, oldProjection500] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1405 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1405 (1 : Fin 4)) = canonicalInput2185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1303 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2185 hH))).trans (reductionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1405 (2 : Fin 4)) = canonicalInput2171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2171 hH))).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1405 (3 : Fin 4)) = canonicalInput2168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1405 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2168 hH))).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode940).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1405 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode940).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1405 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1405 ![oldProjection517, reductionProjection1303, oldProjection518, oldProjection500]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1406 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 30), (184, -1440), (546, 720), (578, 720), (579, 720), (593, 720), (602, 720), (635, 720), (636, 720), (638, 720), (639, 720), (645, 720), (698, 320), (1116, 720), (1117, 720), (1143, 720), (1221, -240), (1226, 80), (1227, 240), (1251, -55), (1389, -480)]

def reductionPivot1406 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1406 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode731).moment H =
      Integer.Sparse.eval reductionProjection1406 (momentVector H) := by
  have heq : reductionPivot1406 = (fun u v => (normalNode731).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode731).moment H = injectiveMoment H reductionPivot1406 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode731).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1406 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1406 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1406 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1401, reductionProjection1404, reductionProjection1392, reductionProjection1405, reductionProjection1387] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1406 (0 : Fin 5)) = canonicalInput4658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1401 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4658 hH))).trans (reductionSound1401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1406 (1 : Fin 5)) = (normalNode742).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1404 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1406 (2 : Fin 5)) = canonicalInput1791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1791 hH))).trans (reductionSound1392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1406 (3 : Fin 5)) = canonicalInput1787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1405 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1787 hH))).trans (reductionSound1405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1406 (4 : Fin 5)) = canonicalInput1786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1387 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1406 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1786 hH))).trans (reductionSound1387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode731).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1406 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode731).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1406 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1, 2, 1440] ![1, 720, 1440, 720, 1] reductionProjection1406 ![reductionProjection1401, reductionProjection1404, reductionProjection1392, reductionProjection1405, reductionProjection1387]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1407 : Integer.Sparse (Fin 1613) := [(541, -1), (1305, -1), (1313, -1), (1380, -1)]

def reductionPivot1407 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, 1, -1, -1], ![2, -1, 1, -2]]

theorem reductionSound1407 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode733).moment H =
      Integer.Sparse.eval reductionProjection1407 (momentVector H) := by
  have heq : reductionPivot1407 = (fun u v => (normalNode733).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode733).moment H = injectiveMoment H reductionPivot1407 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode733).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1407 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1407 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1407 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1398, reductionProjection1371, reductionProjection1366, oldProjection497] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1407 (0 : Fin 4)) = canonicalInput4660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1398 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4660 hH))).trans (reductionSound1398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1407 (1 : Fin 4)) = canonicalInput1808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1371 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1371 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1808 hH))).trans (reductionSound1371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1407 (2 : Fin 4)) = canonicalInput1799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1799 hH))).trans (reductionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1407 (3 : Fin 4)) = canonicalInput1798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1407 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1798 hH))).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode733).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1407 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode733).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1407 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1407 ![reductionProjection1398, reductionProjection1371, reductionProjection1366, oldProjection497]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical018
import NoFourMUBs.Step2.SOS.Canonical021
import NoFourMUBs.Step2.SOS.Canonical022
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical088
import NoFourMUBs.Step2.SOS.Canonical109
import NoFourMUBs.Step2.SOS.Canonical125
import NoFourMUBs.Step2.SOS.Canonical138
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical277
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical329
import NoFourMUBs.Step2.SOS.Canonical330
import NoFourMUBs.Step2.SOS.Canonical333
import NoFourMUBs.Step2.SOS.Canonical334
import NoFourMUBs.Step2.SOS.Canonical335
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical119
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical69
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical74
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection896 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 120), (638, -360), (698, -160), (1055, 120), (1058, 240), (1226, -80), (1227, -40), (1251, 15)]

def reductionPivot896 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]

theorem reductionSound896 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode932).moment H =
      Integer.Sparse.eval reductionProjection896 (momentVector H) := by
  have heq : reductionPivot896 = (fun u v => (normalNode932).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode932).moment H = injectiveMoment H reductionPivot896 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode932).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot896 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot896 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot896 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection846, reductionProjection513, oldProjection828, oldProjection518] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot896 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection846 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot896 (1 : Fin 4)) = canonicalInput2208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2208 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot896 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1307 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1307 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot896 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1305 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot896 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1305 hH))).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode932).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot896 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode932).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot896 (j : Fin 4)))
      2 720 720 2 ![720, 9, 720, 1] ![1, 80, 1, 720] reductionProjection896 ![oldProjection846, reductionProjection513, oldProjection828, oldProjection518]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection897 : Integer.Sparse (Fin 1613) := [(0, -1), (87, -240), (94, 5), (169, 720), (602, 720), (638, 720), (697, -240), (698, 800), (1055, -240), (1058, -480), (1059, 80), (1219, -480), (1223, -240), (1226, 400), (1227, 560), (1251, -110)]

def reductionPivot897 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![1, 0, 2, -1, -2]]

theorem reductionSound897 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8311).moment H =
      Integer.Sparse.eval reductionProjection897 (momentVector H) := by
  have heq : reductionPivot897 = (fun u v => (normalNode8311).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8311).moment H = injectiveMoment H reductionPivot897 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8311).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot897 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot897 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot897 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection846, oldProjection1820, reductionProjection896, oldProjection1511] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot897 (0 : Fin 4)) = canonicalInput20669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection846 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20669 hH))).trans (oldProjectionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot897 (1 : Fin 4)) = canonicalInput16158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1820 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16158 hH))).trans (oldProjectionSound1820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot897 (2 : Fin 4)) = canonicalInput15832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15832 hH))).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot897 (3 : Fin 4)) = canonicalInput15825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1511 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot897 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15825 hH))).trans (oldProjectionSound1511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8311).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot897 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8311).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot897 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 720, 720] ![4, 2, 4, 4] reductionProjection897 ![oldProjection846, oldProjection1820, reductionProjection896, oldProjection1511]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection898 : Integer.Sparse (Fin 1613) := [(206, 1)]

theorem reductionSound898 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code206).moment H =
      Integer.Sparse.eval reductionProjection898 (momentVector H) := by
  have hc : coordinates (206 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code206) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection898, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection899 : Integer.Sparse (Fin 1613) := [(0, 1), (169, -720), (206, -720), (638, -720), (698, -80), (1050, 240), (1058, 240), (1059, -80), (1251, 15)]

def reductionPivot899 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, 0, 0, -2]]

theorem reductionSound899 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode863).moment H =
      Integer.Sparse.eval reductionProjection899 (momentVector H) := by
  have heq : reductionPivot899 = (fun u v => (normalNode863).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode863).moment H = injectiveMoment H reductionPivot899 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode863).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot899 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot899 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot899 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection408, reductionProjection898, oldProjection831, oldProjection518] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot899 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot899 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot899 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1304 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1304 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot899 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1305 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot899 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1305 hH))).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode863).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot899 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode863).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot899 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection899 ![oldProjection408, reductionProjection898, oldProjection831, oldProjection518]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection900 : Integer.Sparse (Fin 1613) := [(213, 1)]

theorem reductionSound900 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code213).moment H =
      Integer.Sparse.eval reductionProjection900 (momentVector H) := by
  have hc : coordinates (213 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code213) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection900, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection901 : Integer.Sparse (Fin 1613) := [(214, 1)]

theorem reductionSound901 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code214).moment H =
      Integer.Sparse.eval reductionProjection901 (momentVector H) := by
  have hc : coordinates (214 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code214) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection901, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection902 : Integer.Sparse (Fin 1613) := [(0, -3), (87, -240), (169, 720), (206, 720), (213, -1440), (214, -1440), (638, 1440), (698, 400), (1050, -240), (1055, -240), (1058, -720), (1059, 80), (1226, 160), (1227, 80), (1251, -45)]

def reductionPivot902 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -1, -1, 2, 0], ![0, -1, 2, -2, 1], ![2, 2, -1, -2, -1]]

theorem reductionSound902 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8313).moment H =
      Integer.Sparse.eval reductionProjection902 (momentVector H) := by
  have heq : reductionPivot902 = (fun u v => (normalNode8313).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8313).moment H = injectiveMoment H reductionPivot902 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8313).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8313).entries)).symm
  have hshape : reductionPivot902 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot902 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot902 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection899, reductionProjection900, reductionProjection901, reductionProjection896] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot902 (0 : Fin 4)) = canonicalInput8024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection899 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8024 hH))).trans (reductionSound899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot902 (1 : Fin 4)) = canonicalInput21369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection900 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21369 hH))).trans (reductionSound900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot902 (2 : Fin 4)) = canonicalInput21457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection901 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection901 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21457 hH))).trans (reductionSound901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot902 (3 : Fin 4)) = canonicalInput21458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot902 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21458 hH))).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8313).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot902 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8313).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot902 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1, 1, 720] ![2, 2880, 2880, 4] reductionProjection902 ![reductionProjection899, reductionProjection900, reductionProjection901, reductionProjection896]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection903 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (169, -720), (602, -720), (698, -240), (1050, 240), (1058, 240), (1059, -160), (1226, -80), (1251, -5)]

def reductionPivot903 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, 0, 0, -2]]

theorem reductionSound903 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2390).moment H =
      Integer.Sparse.eval reductionProjection903 (momentVector H) := by
  have heq : reductionPivot903 = (fun u v => (normalNode2390).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2390).moment H = injectiveMoment H reductionPivot903 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2390).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot903 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot903 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot903 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection408, oldProjection831, oldProjection840, oldProjection510] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot903 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot903 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2218 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot903 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2391 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2391 hH))).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot903 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot903 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2390).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot903 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2390).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot903 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 360, 1] ![1440, 2, 4, 1440] reductionProjection903 ![oldProjection408, oldProjection831, oldProjection840, oldProjection510]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection904 : Integer.Sparse (Fin 1613) := [(1007, 1)]

theorem reductionSound904 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1007).moment H =
      Integer.Sparse.eval reductionProjection904 (momentVector H) := by
  have hc : coordinates (1007 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1007) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection904, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection905 : Integer.Sparse (Fin 1613) := [(600, 1)]

theorem reductionSound905 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code600).moment H =
      Integer.Sparse.eval reductionProjection905 (momentVector H) := by
  have hc : coordinates (600 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code600) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection905, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection906 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 15), (169, 720), (600, -1440), (602, 1440), (698, 720), (1007, -1440), (1050, -240), (1058, -240), (1059, 240), (1226, 320), (1227, 240), (1251, -75)]

def reductionPivot906 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![2, 2, -1, -2, -1]]

theorem reductionSound906 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8312).moment H =
      Integer.Sparse.eval reductionProjection906 (momentVector H) := by
  have heq : reductionPivot906 = (fun u v => (normalNode8312).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8312).moment H = injectiveMoment H reductionPivot906 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8312).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8312).entries)).symm
  have hshape : reductionPivot906 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot906 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot906 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection903, reductionProjection904, reductionProjection905, oldProjection1820] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot906 (0 : Fin 4)) = canonicalInput8021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection903 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8021 hH))).trans (reductionSound903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot906 (1 : Fin 4)) = canonicalInput21366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection904 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21366 hH))).trans (reductionSound904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot906 (2 : Fin 4)) = canonicalInput21451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection905 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21451 hH))).trans (reductionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot906 (3 : Fin 4)) = canonicalInput21453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1820 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot906 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21453 hH))).trans (oldProjectionSound1820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8312).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot906 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8312).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot906 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1, 1, 1440] ![2, 2880, 2880, 2] reductionProjection906 ![reductionProjection903, reductionProjection904, reductionProjection905, oldProjection1820]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection907 : Integer.Sparse (Fin 1613) := [(0, 9), (87, 480), (94, -20), (145, -2880), (169, -2880), (174, -2160), (179, -720), (206, -720), (213, 1440), (214, 1440), (600, 1440), (602, -2160), (638, -2160), (697, 720), (698, -2400), (1007, 1440), (1050, 480), (1055, 480), (1058, 1440), (1059, -400), (1219, 1440), (1223, 720), (1226, -1120), (1227, -1120), (1251, 275)]

def reductionPivot907 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound907 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode480).moment H =
      Integer.Sparse.eval reductionProjection907 (momentVector H) := by
  have heq : reductionPivot907 = (fun u v => (normalNode480).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode480).moment H = injectiveMoment H reductionPivot907 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode480).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot907 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot907 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![960, 1, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot907 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection894, reductionProjection895, reductionProjection897, reductionProjection902, reductionProjection906] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot907 (0 : Fin 5)) = canonicalInput1161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((960 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection894 (momentVector H)
      have hh : (960 : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (960 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1161 hH))).trans (reductionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot907 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code145).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection895 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot907 (2 : Fin 5)) = canonicalInput1408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection897 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1408 hH))).trans (reductionSound897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot907 (3 : Fin 5)) = canonicalInput1411.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection902 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1411 hH))).trans (reductionSound902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot907 (4 : Fin 5)) = canonicalInput1413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection906 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot907 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1413 hH))).trans (reductionSound906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode480).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot907 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode480).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot907 (j : Fin 5)))
      1 2880 2880 1 ![960, 1, 2880, 2880, 2880] ![3, 2880, 1, 1, 1] reductionProjection907 ![reductionProjection894, reductionProjection895, reductionProjection897, reductionProjection902, reductionProjection906]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection908 : Integer.Sparse (Fin 1613) := [(94, -1), (243, -32), (698, -80), (700, -16), (1052, 48), (1219, 96), (1223, 144), (1225, -16), (1226, -80), (1227, -48), (1251, 3)]

def reductionPivot908 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 1, 1, -3]]

theorem reductionSound908 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4501).moment H =
      Integer.Sparse.eval reductionProjection908 (momentVector H) := by
  have heq : reductionPivot908 = (fun u v => (normalNode4501).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4501).moment H = injectiveMoment H reductionPivot908 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4501).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot908 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot908 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot908 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1270, oldProjection1239, oldProjection1249, oldProjection1251] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot908 (0 : Fin 4)) = canonicalInput9446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1270 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9446 hH))).trans (oldProjectionSound1270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot908 (1 : Fin 4)) = canonicalInput8847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8847 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot908 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3827 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3827 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot908 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3826 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1251 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot908 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3826 hH))).trans (oldProjectionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4501).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot908 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4501).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot908 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 9] ![32, 32, 2, 32] reductionProjection908 ![oldProjection1270, oldProjection1239, oldProjection1249, oldProjection1251]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection909 : Integer.Sparse (Fin 1613) := [(0, -1), (56, -240), (89, -240), (90, 80), (94, 15), (174, 720), (175, 720), (243, 240), (697, -240), (698, 880), (700, 240), (704, 80), (1052, -240), (1059, 160), (1219, -720), (1223, -720), (1225, 80), (1226, 560), (1227, 480), (1251, -60)]

def reductionPivot909 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, 0, -1, 2], ![0, 0, 2, -1, -1], ![1, 0, -1, 3, -3]]

theorem reductionSound909 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10041).moment H =
      Integer.Sparse.eval reductionProjection909 (momentVector H) := by
  have heq : reductionPivot909 = (fun u v => (normalNode10041).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10041).moment H = injectiveMoment H reductionPivot909 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10041).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot909 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot909 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 144, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot909 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection908, oldProjection1035, reductionProjection834, oldProjection1510] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot909 (0 : Fin 4)) = canonicalInput22693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection908 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22693 hH))).trans (reductionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot909 (1 : Fin 4)) = canonicalInput19879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1035 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19879 hH))).trans (oldProjectionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot909 (2 : Fin 4)) = canonicalInput19780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19780 hH))).trans (reductionSound834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot909 (3 : Fin 4)) = canonicalInput19779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot909 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19779 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10041).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot909 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10041).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot909 (j : Fin 4)))
      2 2880 2880 2 ![288, 144, 1440, 288] ![10, 20, 2, 10] reductionProjection909 ![reductionProjection908, oldProjection1035, reductionProjection834, oldProjection1510]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection910 : Integer.Sparse (Fin 1613) := [(875, 1)]

theorem reductionSound910 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code875).moment H =
      Integer.Sparse.eval reductionProjection910 (momentVector H) := by
  have hc : coordinates (875 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code875) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection910, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection911 : Integer.Sparse (Fin 1613) := [(942, 1)]

theorem reductionSound911 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code942).moment H =
      Integer.Sparse.eval reductionProjection911 (momentVector H) := by
  have hc : coordinates (942 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code942) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection911, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection912 : Integer.Sparse (Fin 1613) := [(947, 1)]

theorem reductionSound912 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code947).moment H =
      Integer.Sparse.eval reductionProjection912 (momentVector H) := by
  have hc : coordinates (947 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code947) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection912, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection913 : Integer.Sparse (Fin 1613) := [(426, 9), (698, 2), (875, -18), (942, -18), (947, -18), (955, 9), (1015, 9), (1226, 2), (1227, -1)]

def reductionPivot913 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -1, 2, 0, -1], ![0, -1, -1, -1, 3], ![2, 2, -1, -1, -2]]

theorem reductionSound913 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode8317).moment H =
      Integer.Sparse.eval reductionProjection913 (momentVector H) := by
  have heq : reductionPivot913 = (fun u v => (normalNode8317).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8317).moment H = injectiveMoment H reductionPivot913 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8317).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8317).entries)).symm
  have hshape : reductionPivot913 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot913 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 18] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot913 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection910, reductionProjection911, reductionProjection912, reductionProjection346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot913 (0 : Fin 4)) = canonicalInput8043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection910 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8043 hH))).trans (reductionSound910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot913 (1 : Fin 4)) = canonicalInput21379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection911 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21379 hH))).trans (reductionSound911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot913 (2 : Fin 4)) = canonicalInput21479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection912 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection912 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21479 hH))).trans (reductionSound912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot913 (3 : Fin 4)) = canonicalInput21482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot913 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21482 hH))).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8317).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot913 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8317).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot913 (j : Fin 4)))
      2 36 36 2 ![1, 1, 1, 18] ![36, 36, 36, 2] reductionProjection913 ![reductionProjection910, reductionProjection911, reductionProjection912, reductionProjection346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection914 : Integer.Sparse (Fin 1613) := [(87, 6), (616, -18), (698, -8), (1050, 6), (1058, 12), (1059, -4), (1226, -4), (1227, -6), (1251, 1)]

def reductionPivot914 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound914 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode930).moment H =
      Integer.Sparse.eval reductionProjection914 (momentVector H) := by
  have heq : reductionPivot914 = (fun u v => (normalNode930).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode930).moment H = injectiveMoment H reductionPivot914 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode930).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot914 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot914 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot914 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection845, oldProjection831, reductionProjection566, reductionProjection513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot914 (0 : Fin 4)) = canonicalInput5693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection845 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5693 hH))).trans (oldProjectionSound845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot914 (1 : Fin 4)) = canonicalInput2167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2167 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot914 (2 : Fin 4)) = canonicalInput2058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2058 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot914 (3 : Fin 4)) = canonicalInput2055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot914 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2055 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode930).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot914 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode930).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot914 (j : Fin 4)))
      2 36 720 40 ![720, 720, 1, 9] ![1, 1, 720, 80] reductionProjection914 ![oldProjection845, oldProjection831, reductionProjection566, reductionProjection513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection915 : Integer.Sparse (Fin 1613) := [(0, -2), (87, -240), (94, 15), (174, 720), (616, 720), (697, -240), (698, 960), (1050, -240), (1052, -240), (1058, -480), (1059, 160), (1219, -240), (1221, -240), (1223, -240), (1226, 480), (1227, 480), (1251, -155)]

def reductionPivot915 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, 0, -2, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]

theorem reductionSound915 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9764).moment H =
      Integer.Sparse.eval reductionProjection915 (momentVector H) := by
  have heq : reductionPivot915 = (fun u v => (normalNode9764).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9764).moment H = injectiveMoment H reductionPivot915 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9764).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot915 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot915 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 36, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot915 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1510, reductionProjection914, oldProjection845, oldProjection1818] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot915 (0 : Fin 4)) = canonicalInput14312.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14312 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot915 (1 : Fin 4)) = canonicalInput19382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection914 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19382 hH))).trans (reductionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot915 (2 : Fin 4)) = canonicalInput19410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection845 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19410 hH))).trans (oldProjectionSound845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot915 (3 : Fin 4)) = canonicalInput19415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1818 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot915 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19415 hH))).trans (oldProjectionSound1818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9764).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot915 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9764).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot915 (j : Fin 4)))
      2 2880 2880 2 ![288, 36, 720, 144] ![10, 80, 4, 20] reductionProjection915 ![oldProjection1510, reductionProjection914, oldProjection845, oldProjection1818]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection916 : Integer.Sparse (Fin 1613) := [(1286, 1)]

theorem reductionSound916 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1286).moment H =
      Integer.Sparse.eval reductionProjection916 (momentVector H) := by
  have hc : coordinates (1286 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1286) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection916, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection917 : Integer.Sparse (Fin 1613) := [(14, -6), (82, 3), (88, -1), (228, 6), (241, -2), (243, -3), (698, -3), (1223, 3), (1226, -2), (1227, -1)]

def reductionPivot917 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -2, 1, 2, 0], ![1, 1, -2, 2, -2], ![1, 1, 1, -4, 1]]

theorem reductionSound917 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode9353).moment H =
      Integer.Sparse.eval reductionProjection917 (momentVector H) := by
  have heq : reductionPivot917 = (fun u v => (normalNode9353).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9353).moment H = injectiveMoment H reductionPivot917 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9353).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9353).entries)).symm
  have hshape : reductionPivot917 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot917 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 6, 6] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot917 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection64, oldProjection422, oldProjection423] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot917 (0 : Fin 3)) = canonicalInput1461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot917 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection64 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot917 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection64 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1461 hH))).trans (reductionSound64 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot917 (1 : Fin 3)) = canonicalInput13977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot917 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection422 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot917 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13977 hH))).trans (oldProjectionSound422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot917 (2 : Fin 3)) = canonicalInput13987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot917 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection423 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot917 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13987 hH))).trans (oldProjectionSound423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9353).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot917 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9353).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot917 (j : Fin 3)))
      3 18 18 3 ![1, 6, 6] ![18, 3, 3] reductionProjection917 ![reductionProjection64, oldProjection422, oldProjection423]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection918 : Integer.Sparse (Fin 1613) := [(0, 1), (79, 240), (80, -480), (81, 480), (90, -80), (94, -5), (698, -320), (700, -80), (1052, 240), (1059, -80), (1226, -160), (1227, -80), (1251, 30)]

def reductionPivot918 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 3, -1], ![0, 2, -2, -1, 1], ![2, -1, 2, -2, -1]]

theorem reductionSound918 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8988).moment H =
      Integer.Sparse.eval reductionProjection918 (momentVector H) := by
  have heq : reductionPivot918 = (fun u v => (normalNode8988).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8988).moment H = injectiveMoment H reductionPivot918 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8988).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode8988).entries)).symm
  have hshape : reductionPivot918 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot918 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![96, 1, 480] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot918 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection367, reductionProjection385, oldProjection377] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot918 (0 : Fin 3)) = canonicalInput4258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot918 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection367 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot918 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4258 hH))).trans (oldProjectionSound367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot918 (1 : Fin 3)) = canonicalInput17759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot918 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection385 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot918 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17759 hH))).trans (reductionSound385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot918 (2 : Fin 3)) = canonicalInput17764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot918 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection377 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot918 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17764 hH))).trans (oldProjectionSound377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8988).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot918 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8988).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot918 (j : Fin 3)))
      3 1440 1440 3 ![96, 1, 480] ![15, 1440, 3] reductionProjection918 ![oldProjection367, reductionProjection385, oldProjection377]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection919 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 240), (90, -80), (94, -30), (698, -320), (700, -80), (1219, 240), (1226, -320), (1227, -240), (1251, 25)]

def reductionPivot919 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, 0, 2], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, -1, 1, -1]]

theorem reductionSound919 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8994).moment H =
      Integer.Sparse.eval reductionProjection919 (momentVector H) := by
  have heq : reductionPivot919 = (fun u v => (normalNode8994).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8994).moment H = injectiveMoment H reductionPivot919 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8994).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot919 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot919 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot919 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, oldProjection939, oldProjection1352, oldProjection946] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot919 (0 : Fin 4)) = canonicalInput15301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15301 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot919 (1 : Fin 4)) = canonicalInput17148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection939 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17148 hH))).trans (oldProjectionSound939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot919 (2 : Fin 4)) = canonicalInput17156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17156 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot919 (3 : Fin 4)) = canonicalInput17157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection946 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot919 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17157 hH))).trans (oldProjectionSound946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8994).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot919 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8994).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot919 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 720, 720] ![160, 2, 2, 2] reductionProjection919 ![reductionProjection304, oldProjection939, oldProjection1352, oldProjection946]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection920 : Integer.Sparse (Fin 1613) := [(0, -2), (14, 480), (79, -240), (80, 480), (81, -480), (82, -240), (87, -240), (88, 80), (90, 160), (94, 35), (228, -480), (241, 160), (243, 240), (698, 880), (700, 160), (1052, -240), (1059, 80), (1219, -240), (1223, -240), (1226, 640), (1227, 400), (1251, -55), (1286, -1440)]

def reductionPivot920 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 1, 0], ![-3, 1, 1, 1, 0], ![2, -1, -2, 0, 1], ![2, 1, 1, -2, -2]]

theorem reductionSound920 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9604).moment H =
      Integer.Sparse.eval reductionProjection920 (momentVector H) := by
  have heq : reductionPivot920 = (fun u v => (normalNode9604).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9604).moment H = injectiveMoment H reductionPivot920 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9604).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9604).entries)).symm
  have hshape : reductionPivot920 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot920 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 18, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot920 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection916, reductionProjection917, reductionProjection918, reductionProjection919] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot920 (0 : Fin 4)) = canonicalInput16210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection916 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16210 hH))).trans (reductionSound916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot920 (1 : Fin 4)) = canonicalInput26166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection917 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26166 hH))).trans (reductionSound917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot920 (2 : Fin 4)) = canonicalInput26171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection918 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26171 hH))).trans (reductionSound918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot920 (3 : Fin 4)) = canonicalInput26174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection919 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot920 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26174 hH))).trans (reductionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9604).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot920 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9604).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot920 (j : Fin 4)))
      2 2880 2880 2 ![1, 18, 1440, 1440] ![2880, 160, 2, 2] reductionProjection920 ![reductionProjection916, reductionProjection917, reductionProjection918, reductionProjection919]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection921 : Integer.Sparse (Fin 1613) := [(87, 48), (94, -1), (698, -32), (1058, 48), (1219, 48), (1223, 48), (1226, -32), (1227, -16), (1251, 3)]

def reductionPivot921 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, 0, -1, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 2, -1, -1]]

theorem reductionSound921 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10251).moment H =
      Integer.Sparse.eval reductionProjection921 (momentVector H) := by
  have heq : reductionPivot921 = (fun u v => (normalNode10251).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10251).moment H = injectiveMoment H reductionPivot921 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10251).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot921 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot921 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 144, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot921 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection229, oldProjection1249, oldProjection1239, reductionProjection513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot921 (0 : Fin 4)) = canonicalInput28066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection229 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28066 hH))).trans (oldProjectionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot921 (1 : Fin 4)) = canonicalInput20376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20376 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot921 (2 : Fin 4)) = canonicalInput20200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20200 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot921 (3 : Fin 4)) = canonicalInput20191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot921 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20191 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10251).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot921 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10251).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot921 (j : Fin 4)))
      2 288 288 2 ![3, 144, 9, 9] ![96, 2, 32, 32] reductionProjection921 ![oldProjection229, oldProjection1249, oldProjection1239, reductionProjection513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection922 : Integer.Sparse (Fin 1613) := [(90, -8), (94, -1), (698, -40), (1226, -24), (1227, -32), (1251, 3)]

def reductionPivot922 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]

theorem reductionSound922 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10264).moment H =
      Integer.Sparse.eval reductionProjection922 (momentVector H) := by
  have heq : reductionPivot922 = (fun u v => (normalNode10264).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10264).moment H = injectiveMoment H reductionPivot922 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10264).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot922 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot922 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot922 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection952, oldProjection946, oldProjection974, oldProjection1249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot922 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection952 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot922 (1 : Fin 4)) = canonicalInput20179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection946 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20179 hH))).trans (oldProjectionSound946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot922 (2 : Fin 4)) = canonicalInput20218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20218 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot922 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot922 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10264).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot922 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10264).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot922 (j : Fin 4)))
      2 144 720 10 ![9, 720, 720, 144] ![80, 1, 1, 5] reductionProjection922 ![oldProjection952, oldProjection946, oldProjection974, oldProjection1249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection923 : Integer.Sparse (Fin 1613) := [(0, -1), (79, -240), (80, 480), (81, -480), (87, -240), (90, 160), (94, 20), (698, 880), (700, 80), (942, -1440), (1052, -240), (1058, -240), (1059, 80), (1219, -240), (1223, -240), (1226, 560), (1227, 480), (1251, -75)]

def reductionPivot923 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, -2, 1, 0, 1], ![1, 1, -3, 1, 0], ![1, 1, 2, -2, -2]]

theorem reductionSound923 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8609).moment H =
      Integer.Sparse.eval reductionProjection923 (momentVector H) := by
  have heq : reductionPivot923 = (fun u v => (normalNode8609).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8609).moment H = injectiveMoment H reductionPivot923 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8609).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8609).entries)).symm
  have hshape : reductionPivot923 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot923 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 288, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot923 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection911, reductionProjection918, reductionProjection921, reductionProjection922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot923 (0 : Fin 4)) = canonicalInput7000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection911 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7000 hH))).trans (reductionSound911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot923 (1 : Fin 4)) = canonicalInput21079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection918 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21079 hH))).trans (reductionSound918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot923 (2 : Fin 4)) = canonicalInput21170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection921 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21170 hH))).trans (reductionSound921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot923 (3 : Fin 4)) = canonicalInput21179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot923 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21179 hH))).trans (reductionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8609).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot923 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8609).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot923 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 288, 144] ![2880, 2, 10, 20] reductionProjection923 ![reductionProjection911, reductionProjection918, reductionProjection921, reductionProjection922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection924 : Integer.Sparse (Fin 1613) := [(0, 6), (14, -480), (56, 240), (79, 480), (80, -960), (81, 960), (82, 240), (87, 720), (88, -80), (89, 240), (90, -400), (94, -85), (174, -1440), (175, -720), (228, 480), (241, -160), (243, -480), (426, -720), (616, -720), (697, 480), (698, -3760), (700, -480), (704, -80), (875, 1440), (942, 2880), (947, 1440), (955, -720), (1015, -720), (1050, 240), (1052, 960), (1058, 720), (1059, -480), (1219, 1440), (1221, 240), (1223, 1440), (1225, -80), (1226, -2400), (1227, -1760), (1251, 345), (1286, 1440)]

def reductionPivot924 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound924 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode481).moment H =
      Integer.Sparse.eval reductionProjection924 (momentVector H) := by
  have heq : reductionPivot924 = (fun u v => (normalNode481).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode481).moment H = injectiveMoment H reductionPivot924 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode481).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot924 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot924 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 36, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot924 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection909, reductionProjection913, reductionProjection915, reductionProjection920, reductionProjection923] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot924 (0 : Fin 5)) = canonicalInput1162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection909 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1162 hH))).trans (reductionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot924 (1 : Fin 5)) = canonicalInput1402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection913 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1402 hH))).trans (reductionSound913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot924 (2 : Fin 5)) = canonicalInput1410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection915 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1410 hH))).trans (reductionSound915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot924 (3 : Fin 5)) = canonicalInput1414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection920 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1414 hH))).trans (reductionSound920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot924 (4 : Fin 5)) = canonicalInput1415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection923 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot924 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1415 hH))).trans (reductionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode481).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot924 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode481).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot924 (j : Fin 5)))
      1 2880 2880 1 ![2880, 36, 2880, 2880, 2880] ![1, 80, 1, 1, 1] reductionProjection924 ![reductionProjection909, reductionProjection913, reductionProjection915, reductionProjection920, reductionProjection923]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection925 : Integer.Sparse (Fin 1613) := [(1022, 1)]

theorem reductionSound925 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1022).moment H =
      Integer.Sparse.eval reductionProjection925 (momentVector H) := by
  have hc : coordinates (1022 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1022) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection925, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection926 : Integer.Sparse (Fin 1613) := [(174, -1), (484, -1), (610, -1), (1022, -1)]

def reductionPivot926 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 1, -1, -1]]

theorem reductionSound926 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4504).moment H =
      Integer.Sparse.eval reductionProjection926 (momentVector H) := by
  have heq : reductionPivot926 = (fun u v => (normalNode4504).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4504).moment H = injectiveMoment H reductionPivot926 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4504).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot926 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot926 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot926 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection488, reductionProjection925, oldProjection513, oldProjection409] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot926 (0 : Fin 4)) = canonicalInput9452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9452 hH))).trans (oldProjectionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot926 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1022).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot926 (2 : Fin 4)) = canonicalInput8861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8861 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot926 (3 : Fin 4)) = canonicalInput8860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot926 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8860 hH))).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4504).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot926 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4504).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot926 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection926 ![oldProjection488, reductionProjection925, oldProjection513, oldProjection409]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection927 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (94, 10), (169, 360), (174, 1080), (241, 40), (484, 360), (610, 360), (697, -240), (698, 440), (1022, 360), (1050, -120), (1052, -360), (1058, -120), (1059, 120), (1219, -240), (1223, -360), (1226, 200), (1227, 240), (1251, -55)]

def reductionPivot927 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 1, -2]]

theorem reductionSound927 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6348).moment H =
      Integer.Sparse.eval reductionProjection927 (momentVector H) := by
  have heq : reductionPivot927 = (fun u v => (normalNode6348).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6348).moment H = injectiveMoment H reductionPivot927 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6348).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot927 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot927 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 288, 720, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot927 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1510, oldProjection1510, oldProjection1501, reductionProjection926] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot927 (0 : Fin 4)) = canonicalInput14312.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14312 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot927 (1 : Fin 4)) = canonicalInput12924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12924 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot927 (2 : Fin 4)) = canonicalInput12893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1501 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12893 hH))).trans (oldProjectionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot927 (3 : Fin 4)) = canonicalInput12889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection926 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot927 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection926 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12889 hH))).trans (reductionSound926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6348).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot927 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6348).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot927 (j : Fin 4)))
      2 1440 1440 2 ![288, 288, 720, 2] ![5, 5, 2, 720] reductionProjection927 ![oldProjection1510, oldProjection1510, oldProjection1501, reductionProjection926]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical018
import NoFourMUBs.Step2.SOS.Canonical040
import NoFourMUBs.Step2.SOS.Canonical047
import NoFourMUBs.Step2.SOS.Canonical055
import NoFourMUBs.Step2.SOS.Canonical057
import NoFourMUBs.Step2.SOS.Canonical058
import NoFourMUBs.Step2.SOS.Canonical100
import NoFourMUBs.Step2.SOS.Canonical108
import NoFourMUBs.Step2.SOS.Canonical117
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical124
import NoFourMUBs.Step2.SOS.Canonical136
import NoFourMUBs.Step2.SOS.Canonical142
import NoFourMUBs.Step2.SOS.Canonical143
import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical255
import NoFourMUBs.Step2.SOS.Canonical258
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical272
import NoFourMUBs.Step2.SOS.Canonical273
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical329
import NoFourMUBs.Step2.SOS.Canonical330
import NoFourMUBs.Step2.SOS.Canonical347
import NoFourMUBs.Step2.SOS.Canonical348
import NoFourMUBs.Step2.SOS.Canonical484
import NoFourMUBs.Step2.SOS.Canonical485
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions067
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical112
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical116
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical118
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical207
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical74
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2176 : Integer.Sparse (Fin 1613) := [(888, 1)]

theorem reductionSound2176 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code888).moment H =
      Integer.Sparse.eval reductionProjection2176 (momentVector H) := by
  have hc : coordinates (888 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code888) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2176, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2177 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (602, -720), (635, -720), (698, -240), (1059, -80), (1221, 240), (1227, -160), (1251, 25)]

def reductionPivot2177 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 0, 2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]

theorem reductionSound2177 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3965).moment H =
      Integer.Sparse.eval reductionProjection2177 (momentVector H) := by
  have heq : reductionPivot2177 = (fun u v => (normalNode3965).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3965).moment H = injectiveMoment H reductionPivot2177 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3965).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2177 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2177 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2177 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection517, oldProjection1110, oldProjection1010, oldProjection510] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2177 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2177 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3593 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3593 hH))).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2177 (2 : Fin 4)) = canonicalInput7925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7925 hH))).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2177 (3 : Fin 4)) = canonicalInput7928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2177 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7928 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3965).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2177 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3965).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2177 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 360, 1] ![1440, 2, 4, 1440] reductionProjection2177 ![oldProjection517, oldProjection1110, oldProjection1010, oldProjection510]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2178 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (508, 720), (602, 1440), (635, 720), (698, 480), (874, -1440), (888, -1440), (1050, -240), (1058, -240), (1059, 240), (1221, -480), (1227, 240), (1251, -70)]

def reductionPivot2178 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![-1, 2, 0, 0, -1], ![1, 0, -2, 1, 0], ![2, -1, 2, -2, -1]]

theorem reductionSound2178 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7580).moment H =
      Integer.Sparse.eval reductionProjection2178 (momentVector H) := by
  have heq : reductionPivot2178 = (fun u v => (normalNode7580).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7580).moment H = injectiveMoment H reductionPivot2178 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7580).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7580).entries)).symm
  have hshape : reductionPivot2178 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2178 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2178 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2176, oldProjection1757, reductionProjection964, reductionProjection2177] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2178 (0 : Fin 4)) = canonicalInput3013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2176 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3013 hH))).trans (reductionSound2176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2178 (1 : Fin 4)) = canonicalInput16227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1757 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16227 hH))).trans (oldProjectionSound1757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2178 (2 : Fin 4)) = canonicalInput16337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16337 hH))).trans (reductionSound964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2178 (3 : Fin 4)) = canonicalInput16341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2177 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2178 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16341 hH))).trans (reductionSound2177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7580).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2178 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7580).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2178 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 1, 1440] ![2880, 2, 2880, 2] reductionProjection2178 ![reductionProjection2176, oldProjection1757, reductionProjection964, reductionProjection2177]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2179 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 80), (241, 160), (243, 80), (508, 720), (602, 720), (697, -240), (698, 720), (1050, -240), (1055, -480), (1058, -480), (1059, 160), (1221, -240), (1226, 160), (1227, 320), (1250, 60), (1251, -125), (1389, -240)]

def reductionPivot2179 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]

theorem reductionSound2179 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7602).moment H =
      Integer.Sparse.eval reductionProjection2179 (momentVector H) := by
  have heq : reductionPivot2179 = (fun u v => (normalNode7602).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7602).moment H = injectiveMoment H reductionPivot2179 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7602).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2179 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2179 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 360, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2179 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1785, oldProjection1829, oldProjection2061, oldProjection1523] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2179 (0 : Fin 4)) = canonicalInput16575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16575 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2179 (1 : Fin 4)) = canonicalInput14900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1829 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14900 hH))).trans (oldProjectionSound1829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2179 (2 : Fin 4)) = canonicalInput14860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14860 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2179 (3 : Fin 4)) = canonicalInput14857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2179 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14857 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7602).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2179 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7602).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2179 (j : Fin 4)))
      2 2880 2880 2 ![1440, 360, 1440, 1440] ![2, 8, 2, 2] reductionProjection2179 ![oldProjection1785, oldProjection1829, oldProjection2061, oldProjection1523]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2180 : Integer.Sparse (Fin 1613) := [(574, 1)]

theorem reductionSound2180 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code574).moment H =
      Integer.Sparse.eval reductionProjection2180 (momentVector H) := by
  have hc : coordinates (574 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code574) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2180, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2181 : Integer.Sparse (Fin 1613) := [(0, 2), (76, 240), (81, 480), (94, -15), (698, -160), (1034, -480), (1058, 240), (1221, 240), (1227, -80), (1251, -5), (1389, 240)]

def reductionPivot2181 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 2, -1], ![1, -2, 1, -1, 1], ![2, 2, -2, -1, -1]]

theorem reductionSound2181 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6977).moment H =
      Integer.Sparse.eval reductionProjection2181 (momentVector H) := by
  have heq : reductionPivot2181 = (fun u v => (normalNode6977).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6977).moment H = injectiveMoment H reductionPivot2181 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6977).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6977).entries)).symm
  have hshape : reductionPivot2181 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2181 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![480, 1, 480] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2181 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection356, oldProjection625, oldProjection626] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2181 (0 : Fin 3)) = canonicalInput539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2181 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection356 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2181 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound539 hH))).trans (oldProjectionSound356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2181 (1 : Fin 3)) = canonicalInput9222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2181 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection625 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2181 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9222 hH))).trans (oldProjectionSound625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2181 (2 : Fin 3)) = canonicalInput9235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2181 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2181 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9235 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6977).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2181 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6977).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2181 (j : Fin 3)))
      3 1440 1440 3 ![480, 1, 480] ![3, 1440, 3] reductionProjection2181 ![oldProjection356, oldProjection625, oldProjection626]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2182 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -40), (698, -480), (1059, -240), (1226, -80), (1227, -160), (1251, 65)]

def reductionPivot2182 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 1, -1]]

theorem reductionSound2182 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9453).moment H =
      Integer.Sparse.eval reductionProjection2182 (momentVector H) := by
  have heq : reductionPivot2182 = (fun u v => (normalNode9453).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9453).moment H = injectiveMoment H reductionPivot2182 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9453).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2182 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2182 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![240, 360, 180, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2182 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1265, oldProjection1123, oldProjection1112, oldProjection1110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2182 (0 : Fin 4)) = canonicalInput20915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1265 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20915 hH))).trans (oldProjectionSound1265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2182 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1123 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2182 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1112 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2182 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6635 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2182 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6635 hH))).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9453).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2182 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9453).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2182 (j : Fin 4)))
      2 1440 1440 2 ![240, 360, 180, 720] ![6, 4, 8, 2] reductionProjection2182 ![oldProjection1265, oldProjection1123, oldProjection1112, oldProjection1110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2183 : Integer.Sparse (Fin 1613) := [(0, 3), (76, -240), (81, -480), (94, 95), (241, 80), (574, -1440), (697, -240), (698, 880), (1034, 480), (1055, -240), (1058, -240), (1059, 240), (1221, -240), (1226, 80), (1227, 400), (1250, 60), (1251, -140), (1389, -480)]

def reductionPivot2183 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![1, -2, 1, 1, -1], ![2, 2, -2, -1, -1]]

theorem reductionSound2183 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7606).moment H =
      Integer.Sparse.eval reductionProjection2183 (momentVector H) := by
  have heq : reductionPivot2183 = (fun u v => (normalNode7606).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7606).moment H = injectiveMoment H reductionPivot2183 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7606).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7606).entries)).symm
  have hshape : reductionPivot2183 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2183 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 360, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2183 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2180, reductionProjection2181, reductionProjection965, reductionProjection2182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2183 (0 : Fin 4)) = canonicalInput6943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2180 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6943 hH))).trans (reductionSound2180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2183 (1 : Fin 4)) = canonicalInput21052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2181 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21052 hH))).trans (reductionSound2181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2183 (2 : Fin 4)) = canonicalInput21118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection965 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21118 hH))).trans (reductionSound965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2183 (3 : Fin 4)) = canonicalInput21121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2182 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2183 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21121 hH))).trans (reductionSound2182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7606).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2183 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7606).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2183 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 360, 1440] ![2880, 2, 8, 2] reductionProjection2183 ![reductionProjection2180, reductionProjection2181, reductionProjection965, reductionProjection2182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2184 : Integer.Sparse (Fin 1613) := [(19, -1), (94, 2), (241, 12), (243, 8), (698, 40), (1050, -12), (1055, -24), (1058, -24), (1059, 8), (1226, 16), (1227, 16), (1250, 3), (1251, -8)]

def reductionPivot2184 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound2184 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7604).moment H =
      Integer.Sparse.eval reductionProjection2184 (momentVector H) := by
  have heq : reductionPivot2184 = (fun u v => (normalNode7604).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7604).moment H = injectiveMoment H reductionPivot2184 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7604).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2184 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2184 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2184 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1110, oldProjection2447, oldProjection1523, oldProjection2782] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2184 (0 : Fin 4)) = canonicalInput16586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16586 hH))).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2184 (1 : Fin 4)) = canonicalInput14907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14907 hH))).trans (oldProjectionSound2447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2184 (2 : Fin 4)) = canonicalInput14864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14864 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2184 (3 : Fin 4)) = canonicalInput14862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2782 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2184 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2782 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14862 hH))).trans (oldProjectionSound2782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7604).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2184 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7604).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2184 (j : Fin 4)))
      2 144 1440 20 ![720, 1440, 1440, 720] ![2, 1, 1, 2] reductionProjection2184 ![oldProjection1110, oldProjection2447, oldProjection1523, oldProjection2782]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2185 : Integer.Sparse (Fin 1613) := [(0, -27), (19, 20), (76, 240), (81, 480), (94, -285), (241, -480), (243, -240), (247, -80), (508, -1440), (574, 1440), (602, -2160), (616, -720), (635, -720), (697, 720), (698, -3280), (874, 1440), (888, 1440), (1034, -480), (1050, 1200), (1055, 1920), (1058, 2160), (1059, -960), (1221, 960), (1226, -560), (1227, -1520), (1250, -360), (1251, 590), (1388, 240), (1389, 720)]

def reductionPivot2185 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]

theorem reductionSound2185 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1156).moment H =
      Integer.Sparse.eval reductionProjection2185 (momentVector H) := by
  have heq : reductionPivot2185 = (fun u v => (normalNode1156).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1156).moment H = injectiveMoment H reductionPivot2185 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1156).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2185 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2185 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2185 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2175, reductionProjection2178, reductionProjection2179, reductionProjection2183, reductionProjection2184] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2185 (0 : Fin 5)) = canonicalInput1185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2175 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1185 hH))).trans (reductionSound2175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2185 (1 : Fin 5)) = canonicalInput2584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2178 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2584 hH))).trans (reductionSound2178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2185 (2 : Fin 5)) = canonicalInput2596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2179 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2596 hH))).trans (reductionSound2179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2185 (3 : Fin 5)) = canonicalInput2597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2183 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2597 hH))).trans (reductionSound2183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2185 (4 : Fin 5)) = canonicalInput2598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2184 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2185 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2598 hH))).trans (reductionSound2184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1156).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2185 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1156).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2185 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 2880, 144] ![1, 1, 1, 1, 20] reductionProjection2185 ![reductionProjection2175, reductionProjection2178, reductionProjection2179, reductionProjection2183, reductionProjection2184]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2186 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 20), (241, 40), (578, 360), (638, 360), (697, -120), (698, 320), (1050, -240), (1055, -360), (1058, -360), (1059, 200), (1227, 80), (1250, 60), (1251, -95)]

def reductionPivot2186 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 0, 0, 1, -2]]

theorem reductionSound2186 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7608).moment H =
      Integer.Sparse.eval reductionProjection2186 (momentVector H) := by
  have heq : reductionPivot2186 = (fun u v => (normalNode7608).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7608).moment H = injectiveMoment H reductionPivot2186 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7608).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2186 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2186 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2186 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection831, oldProjection1519, oldProjection1523, reductionProjection1628] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2186 (0 : Fin 4)) = canonicalInput19396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19396 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2186 (1 : Fin 4)) = canonicalInput14987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1519 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14987 hH))).trans (oldProjectionSound1519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2186 (2 : Fin 4)) = canonicalInput14864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14864 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2186 (3 : Fin 4)) = canonicalInput14859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1628 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2186 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14859 hH))).trans (reductionSound1628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7608).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2186 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7608).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2186 (j : Fin 4)))
      2 1440 1440 2 ![720, 1440, 1440, 720] ![2, 1, 1, 2] reductionProjection2186 ![oldProjection831, oldProjection1519, oldProjection1523, reductionProjection1628]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2187 : Integer.Sparse (Fin 1613) := [(0, -1), (602, -360), (890, -180), (1227, 20), (1251, 5)]

def reductionPivot2187 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, -1, 1]]

theorem reductionSound2187 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode3994).moment H =
      Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
  have heq : reductionPivot2187 = (fun u v => (normalNode3994).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3994).moment H = injectiveMoment H reductionPivot2187 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3994).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot2187 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2187 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2187 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1126, oldProjection510, oldProjection510, oldProjection609] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2187 (0 : Fin 4)) = canonicalInput20906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1126 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20906 hH))).trans (oldProjectionSound1126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2187 (1 : Fin 4)) = canonicalInput7980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7980 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2187 (2 : Fin 4)) = canonicalInput7545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7545 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2187 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node609⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection609 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2187 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3994).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2187 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3994).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2187 (j : Fin 4)))
      2 360 360 2 ![180, 1, 1, 1] ![2, 360, 360, 360] reductionProjection2187 ![oldProjection1126, oldProjection510, oldProjection510, oldProjection609]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2188 : Integer.Sparse (Fin 1613) := [(0, 1), (602, 360), (848, -360), (888, -720), (890, 180), (1227, -20), (1251, -5)]

def reductionPivot2188 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![1, 0, -2, 0, 1], ![2, -1, 2, -1, -2]]

theorem reductionSound2188 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7581).moment H =
      Integer.Sparse.eval reductionProjection2188 (momentVector H) := by
  have heq : reductionPivot2188 = (fun u v => (normalNode7581).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7581).moment H = injectiveMoment H reductionPivot2188 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7581).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7581).entries)).symm
  have hshape : reductionPivot2188 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2188 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2188 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2176, reductionProjection2176, reductionProjection987, reductionProjection2187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2188 (0 : Fin 4)) = canonicalInput3531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2176 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3531 hH))).trans (reductionSound2176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2188 (1 : Fin 4)) = canonicalInput17420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2176 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17420 hH))).trans (reductionSound2176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2188 (2 : Fin 4)) = canonicalInput17511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection987 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17511 hH))).trans (reductionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2188 (3 : Fin 4)) = canonicalInput17514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2188 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17514 hH))).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7581).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2188 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7581).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2188 (j : Fin 4)))
      2 720 720 2 ![1, 1, 1, 360] ![720, 720, 720, 2] reductionProjection2188 ![reductionProjection2176, reductionProjection2176, reductionProjection987, reductionProjection2187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2189 : Integer.Sparse (Fin 1613) := [(576, 1)]

theorem reductionSound2189 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code576).moment H =
      Integer.Sparse.eval reductionProjection2189 (momentVector H) := by
  have hc : coordinates (576 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code576) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2189, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2190 : Integer.Sparse (Fin 1613) := [(0, -6), (94, -5), (698, -560), (1059, -320), (1221, 240), (1226, -80), (1227, -320), (1251, 205)]

def reductionPivot2190 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 1, -1]]

theorem reductionSound2190 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9448).moment H =
      Integer.Sparse.eval reductionProjection2190 (momentVector H) := by
  have heq : reductionPivot2190 = (fun u v => (normalNode9448).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9448).moment H = injectiveMoment H reductionPivot2190 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9448).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2190 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2190 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 180, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2190 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1058, oldProjection1119, oldProjection1112, oldProjection1111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2190 (0 : Fin 4)) = canonicalInput18756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18756 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2190 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1119 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2190 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1112 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2190 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2190 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9448).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2190 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9448).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2190 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 180, 720] ![2, 4, 8, 2] reductionProjection2190 ![oldProjection1058, oldProjection1119, oldProjection1112, oldProjection1111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2191 : Integer.Sparse (Fin 1613) := [(0, 1), (76, -240), (81, -480), (94, 30), (576, -1440), (698, 960), (1034, 480), (1050, -240), (1052, -240), (1058, -240), (1059, 400), (1220, 480), (1221, -960), (1226, 160), (1227, 480), (1251, -195), (1389, -240)]

def reductionPivot2191 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![-1, 0, 2, -1, 0], ![1, -2, -1, 1, 1], ![2, 2, -1, -1, -2]]

theorem reductionSound2191 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7607).moment H =
      Integer.Sparse.eval reductionProjection2191 (momentVector H) := by
  have heq : reductionPivot2191 = (fun u v => (normalNode7607).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7607).moment H = injectiveMoment H reductionPivot2191 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7607).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7607).entries)).symm
  have hshape : reductionPivot2191 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2191 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2191 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2189, reductionProjection2181, reductionProjection991, reductionProjection2190] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2191 (0 : Fin 4)) = canonicalInput6948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2189 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6948 hH))).trans (reductionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2191 (1 : Fin 4)) = canonicalInput21054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2181 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21054 hH))).trans (reductionSound2181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2191 (2 : Fin 4)) = canonicalInput21128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection991 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21128 hH))).trans (reductionSound991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2191 (3 : Fin 4)) = canonicalInput21130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2190 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2191 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21130 hH))).trans (reductionSound2190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7607).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2191 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7607).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2191 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 1440, 1440] ![2880, 2, 2, 2] reductionProjection2191 ![reductionProjection2189, reductionProjection2181, reductionProjection991, reductionProjection2190]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2192 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 20), (76, 240), (81, 480), (94, -115), (241, -320), (243, -160), (508, -720), (576, 1440), (578, -720), (602, -2880), (635, -720), (638, -720), (697, 240), (698, -2880), (848, 1440), (874, 1440), (888, 4320), (890, -720), (1034, -480), (1050, 1200), (1052, 240), (1055, 1200), (1058, 1680), (1059, -1200), (1220, -480), (1221, 1440), (1226, -480), (1227, -1120), (1250, -180), (1251, 635), (1389, 240)]

def reductionPivot2192 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound2192 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1157).moment H =
      Integer.Sparse.eval reductionProjection2192 (momentVector H) := by
  have heq : reductionPivot2192 = (fun u v => (normalNode1157).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1157).moment H = injectiveMoment H reductionPivot2192 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1157).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2192 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2192 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 144, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2192 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2186, reductionProjection2188, reductionProjection2184, reductionProjection2191, reductionProjection2178] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2192 (0 : Fin 5)) = canonicalInput1189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2186 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1189 hH))).trans (reductionSound2186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2192 (1 : Fin 5)) = canonicalInput2585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2188 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2585 hH))).trans (reductionSound2188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2192 (2 : Fin 5)) = canonicalInput2598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2184 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2598 hH))).trans (reductionSound2184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2192 (3 : Fin 5)) = canonicalInput2599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2191 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2599 hH))).trans (reductionSound2191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2192 (4 : Fin 5)) = canonicalInput2600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2178 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2192 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2600 hH))).trans (reductionSound2178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1157).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2192 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1157).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2192 (j : Fin 5)))
      1 2880 2880 1 ![1440, 720, 144, 2880, 2880] ![2, 4, 20, 1, 1] reductionProjection2192 ![reductionProjection2186, reductionProjection2188, reductionProjection2184, reductionProjection2191, reductionProjection2178]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2193 : Integer.Sparse (Fin 1613) := [(0, 27), (81, -120), (94, 45), (698, 640), (700, 120), (1059, 360), (1221, -120), (1227, 280), (1251, -170), (1389, -120)]

def reductionPivot2193 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -1, -1], ![1, -1, -1, 0, 1]]

theorem reductionSound2193 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10133).moment H =
      Integer.Sparse.eval reductionProjection2193 (momentVector H) := by
  have heq : reductionPivot2193 = (fun u v => (normalNode10133).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10133).moment H = injectiveMoment H reductionPivot2193 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10133).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2193 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2193 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2193 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1785, oldProjection1790, oldProjection1844, oldProjection1786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2193 (0 : Fin 4)) = canonicalInput20503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20503 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2193 (1 : Fin 4)) = canonicalInput19925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1790 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19925 hH))).trans (oldProjectionSound1790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2193 (2 : Fin 4)) = canonicalInput19896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19896 hH))).trans (oldProjectionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2193 (3 : Fin 4)) = canonicalInput19894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2193 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19894 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10133).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2193 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10133).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2193 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 1440] ![1, 1, 1, 1] reductionProjection2193 ![oldProjection1785, oldProjection1790, oldProjection1844, oldProjection1786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2194 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -15), (697, 360), (698, -80), (1058, 120), (1059, -40), (1227, -40), (1250, -60), (1251, 45), (1389, 240)]

def reductionPivot2194 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 1, 1, -1], ![0, 2, -2, 1, -1], ![2, -2, 1, -2, 1]]

theorem reductionSound2194 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9108).moment H =
      Integer.Sparse.eval reductionProjection2194 (momentVector H) := by
  have heq : reductionPivot2194 = (fun u v => (normalNode9108).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9108).moment H = injectiveMoment H reductionPivot2194 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9108).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9108).entries)).symm
  have hshape : reductionPivot2194 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2194 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![240, 160, 160] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2194 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection660, oldProjection1136, oldProjection1136] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2194 (0 : Fin 3)) = canonicalInput9178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2194 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection660 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2194 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9178 hH))).trans (oldProjectionSound660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2194 (1 : Fin 3)) = canonicalInput22244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2194 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection1136 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2194 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22244 hH))).trans (oldProjectionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2194 (2 : Fin 3)) = canonicalInput22330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2194 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection1136 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2194 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22330 hH))).trans (oldProjectionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9108).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2194 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9108).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2194 (j : Fin 3)))
      3 720 1440 6 ![240, 160, 160] ![6, 9, 9] reductionProjection2194 ![oldProjection660, oldProjection1136, oldProjection1136]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2195 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -35), (698, -80), (1251, -20)]

def reductionPivot2195 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0]]

theorem reductionSound2195 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9107).moment H =
      Integer.Sparse.eval reductionProjection2195 (momentVector H) := by
  have heq : reductionPivot2195 = (fun u v => (normalNode9107).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9107).moment H = injectiveMoment H reductionPivot2195 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9107).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2195 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2195 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2195 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1264, oldProjection1079, oldProjection1057, oldProjection1053] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2195 (0 : Fin 4)) = canonicalInput21003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1264 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21003 hH))).trans (oldProjectionSound1264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2195 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6548 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1079 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6548 hH))).trans (oldProjectionSound1079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2195 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1057 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2195 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1053 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2195 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9107).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2195 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9107).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2195 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 720, 72] ![2, 4, 2, 20] reductionProjection2195 ![oldProjection1264, oldProjection1079, oldProjection1057, oldProjection1053]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2196 : Integer.Sparse (Fin 1613) := [(0, -8), (94, 85), (697, -960), (698, 560), (1034, 480), (1050, -720), (1052, -720), (1058, -240), (1059, 400), (1221, -720), (1227, 80), (1250, 180), (1251, -115), (1389, -720)]

def reductionPivot2196 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![2, -1, 2, -2, -1]]

theorem reductionSound2196 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10115).moment H =
      Integer.Sparse.eval reductionProjection2196 (momentVector H) := by
  have heq : reductionPivot2196 = (fun u v => (normalNode10115).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10115).moment H = injectiveMoment H reductionPivot2196 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10115).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10115).entries)).symm
  have hshape : reductionPivot2196 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2196 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2196 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection951, reductionProjection1001, reductionProjection2194, reductionProjection2195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2196 (0 : Fin 4)) = canonicalInput21099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21099 hH))).trans (reductionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2196 (1 : Fin 4)) = canonicalInput31035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1001 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31035 hH))).trans (reductionSound1001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2196 (2 : Fin 4)) = canonicalInput31050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2194 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31050 hH))).trans (reductionSound2194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2196 (3 : Fin 4)) = canonicalInput31051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2195 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2196 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound31051 hH))).trans (reductionSound2195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10115).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2196 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10115).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2196 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 720, 1440] ![2, 4, 4, 2] reductionProjection2196 ![reductionProjection951, reductionProjection1001, reductionProjection2194, reductionProjection2195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2197 : Integer.Sparse (Fin 1613) := [(0, -3), (465, 540), (574, -360), (578, 180), (602, 180), (610, 360), (698, 200), (1055, -120), (1058, -120), (1059, 100), (1227, 120), (1251, -45)]

def reductionPivot2197 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 1, 1, -1], ![0, 0, -1, 2, -1], ![0, 2, -1, -1, 0], ![2, -2, 1, -2, 1]]

theorem reductionSound2197 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8436).moment H =
      Integer.Sparse.eval reductionProjection2197 (momentVector H) := by
  have heq : reductionPivot2197 = (fun u v => (normalNode8436).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8436).moment H = injectiveMoment H reductionPivot2197 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8436).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8436).entries)).symm
  have hshape : reductionPivot2197 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2197 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 360, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2197 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1761, oldProjection1759, reductionProjection2180, oldProjection1759] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2197 (0 : Fin 4)) = canonicalInput9145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1761 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9145 hH))).trans (oldProjectionSound1761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2197 (1 : Fin 4)) = canonicalInput22232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22232 hH))).trans (oldProjectionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2197 (2 : Fin 4)) = canonicalInput22296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2180 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22296 hH))).trans (reductionSound2180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2197 (3 : Fin 4)) = canonicalInput22297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2197 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22297 hH))).trans (oldProjectionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8436).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2197 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8436).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2197 (j : Fin 4)))
      2 720 720 2 ![360, 360, 1, 360] ![2, 2, 720, 2] reductionProjection2197 ![oldProjection1761, oldProjection1759, reductionProjection2180, oldProjection1759]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2198 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 120), (94, -10), (241, -120), (243, -80), (698, -200), (1055, 120), (1058, 120), (1226, -120), (1227, -80), (1251, 45)]

def reductionPivot2198 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, -1, 2, -3]]

theorem reductionSound2198 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4374).moment H =
      Integer.Sparse.eval reductionProjection2198 (momentVector H) := by
  have heq : reductionPivot2198 = (fun u v => (normalNode4374).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4374).moment H = injectiveMoment H reductionPivot2198 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4374).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2198 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2198 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2198 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection829, oldProjection832, oldProjection827, oldProjection828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2198 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2393 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection829 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2393 hH))).trans (oldProjectionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2198 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3729 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection832 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3729 hH))).trans (oldProjectionSound832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2198 (2 : Fin 4)) = canonicalInput8747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8747 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2198 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3796 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2198 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3796 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4374).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2198 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4374).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2198 (j : Fin 4)))
      2 720 720 2 ![72, 144, 720, 720] ![10, 5, 1, 1] reductionProjection2198 ![oldProjection829, oldProjection832, oldProjection827, oldProjection828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2199 : Integer.Sparse (Fin 1613) := [(0, 11), (76, -240), (81, -240), (94, 30), (241, 320), (243, 240), (698, 1600), (700, 240), (1050, -240), (1055, -720), (1058, -960), (1059, 400), (1226, 320), (1227, 720), (1251, -365)]

def reductionPivot2199 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -2, 1, 2], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, -1, 1, 0, -1]]

theorem reductionSound2199 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9784).moment H =
      Integer.Sparse.eval reductionProjection2199 (momentVector H) := by
  have heq : reductionPivot2199 = (fun u v => (normalNode9784).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9784).moment H = injectiveMoment H reductionPivot2199 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9784).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2199 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2199 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2199 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1844, reductionProjection2123, reductionProjection2198, reductionProjection940] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2199 (0 : Fin 4)) = canonicalInput19430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19430 hH))).trans (oldProjectionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2199 (1 : Fin 4)) = canonicalInput19401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2123 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19401 hH))).trans (reductionSound2123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2199 (2 : Fin 4)) = canonicalInput19398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2198 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19398 hH))).trans (reductionSound2198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2199 (3 : Fin 4)) = canonicalInput19397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection940 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2199 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19397 hH))).trans (reductionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9784).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2199 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9784).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2199 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 1440] ![2, 2, 4, 2] reductionProjection2199 ![oldProjection1844, reductionProjection2123, reductionProjection2198, reductionProjection940]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2200 : Integer.Sparse (Fin 1613) := [(0, -41), (76, 240), (81, 480), (94, -210), (241, -320), (243, -240), (465, -2880), (574, 1440), (578, -720), (602, -720), (610, -2160), (617, -720), (697, 960), (698, -5040), (700, -480), (878, 1440), (885, 1440), (1034, -480), (1050, 960), (1052, 720), (1055, 1440), (1058, 1920), (1059, -2400), (1221, 960), (1226, -320), (1227, -2240), (1250, -180), (1251, 1235), (1389, 960)]

def reductionPivot2200 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-2, -1, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]

theorem reductionSound2200 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1158).moment H =
      Integer.Sparse.eval reductionProjection2200 (momentVector H) := by
  have heq : reductionPivot2200 = (fun u v => (normalNode1158).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1158).moment H = injectiveMoment H reductionPivot2200 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1158).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2200 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2200 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 720, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2200 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2193, reductionProjection2196, reductionProjection2197, reductionProjection2172, reductionProjection2199] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2200 (0 : Fin 5)) = canonicalInput3657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2193 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3657 hH))).trans (reductionSound2193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2200 (1 : Fin 5)) = canonicalInput2601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2196 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2601 hH))).trans (reductionSound2196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2200 (2 : Fin 5)) = canonicalInput2595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2197 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2595 hH))).trans (reductionSound2197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2200 (3 : Fin 5)) = canonicalInput2593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2172 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2593 hH))).trans (reductionSound2172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2200 (4 : Fin 5)) = canonicalInput2592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2199 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2200 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2592 hH))).trans (reductionSound2199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1158).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2200 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1158).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2200 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 720, 2880, 2880] ![2, 1, 4, 1, 1] reductionProjection2200 ![reductionProjection2193, reductionProjection2196, reductionProjection2197, reductionProjection2172, reductionProjection2199]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2201 : Integer.Sparse (Fin 1613) := [(274, 1)]

theorem reductionSound2201 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code274).moment H =
      Integer.Sparse.eval reductionProjection2201 (momentVector H) := by
  have hc : coordinates (274 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code274) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2201, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2202 : Integer.Sparse (Fin 1613) := [(274, -1), (285, -1), (307, -1), (775, -1)]

def reductionPivot2202 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 2, -1, -1], ![2, 1, -1, -2]]

theorem reductionSound2202 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1159).moment H =
      Integer.Sparse.eval reductionProjection2202 (momentVector H) := by
  have heq : reductionPivot2202 = (fun u v => (normalNode1159).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1159).moment H = injectiveMoment H reductionPivot2202 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1159).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2202 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2202 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2202 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection588, reductionProjection2201, oldProjection459, oldProjection448] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2202 (0 : Fin 4)) = canonicalInput3751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3751 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2202 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2201 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2202 (2 : Fin 4)) = canonicalInput2610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2610 hH))).trans (oldProjectionSound459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2202 (3 : Fin 4)) = canonicalInput2609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection448 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2202 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2609 hH))).trans (oldProjectionSound448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1159).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2202 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1159).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2202 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2202 ![oldProjection588, reductionProjection2201, oldProjection459, oldProjection448]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2203 : Integer.Sparse (Fin 1613) := [(275, 1)]

theorem reductionSound2203 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code275).moment H =
      Integer.Sparse.eval reductionProjection2203 (momentVector H) := by
  have hc : coordinates (275 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code275) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2203, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2204 : Integer.Sparse (Fin 1613) := [(271, 1)]

theorem reductionSound2204 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code271).moment H =
      Integer.Sparse.eval reductionProjection2204 (momentVector H) := by
  have hc : coordinates (271 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code271) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2204, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2205 : Integer.Sparse (Fin 1613) := [(271, -1), (275, -1), (307, -1), (789, -1)]

def reductionPivot2205 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 2, 0, -2], ![2, 1, -2, -1]]

theorem reductionSound2205 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1160).moment H =
      Integer.Sparse.eval reductionProjection2205 (momentVector H) := by
  have heq : reductionPivot2205 = (fun u v => (normalNode1160).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1160).moment H = injectiveMoment H reductionPivot2205 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1160).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2205 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2205 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2205 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection591, reductionProjection2203, reductionProjection2204, oldProjection459] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2205 (0 : Fin 4)) = canonicalInput3753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection591 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3753 hH))).trans (oldProjectionSound591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2205 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2203 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2205 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code271).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2204 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2205 (3 : Fin 4)) = canonicalInput2610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2205 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2610 hH))).trans (oldProjectionSound459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1160).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2205 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1160).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2205 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2205 ![oldProjection591, reductionProjection2203, reductionProjection2204, oldProjection459]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2206 : Integer.Sparse (Fin 1613) := [(762, 1)]

theorem reductionSound2206 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code762).moment H =
      Integer.Sparse.eval reductionProjection2206 (momentVector H) := by
  have hc : coordinates (762 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code762) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2206, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2207 : Integer.Sparse (Fin 1613) := [(76, 96), (79, 48), (94, -1), (241, -32), (691, 48), (698, -64), (762, -144), (1226, -32), (1251, 3)]

def reductionPivot2207 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]

theorem reductionSound2207 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3388).moment H =
      Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
  have heq : reductionPivot2207 = (fun u v => (normalNode3388).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3388).moment H = injectiveMoment H reductionPivot2207 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3388).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2207 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2207 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2207 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1305, oldProjection1296, reductionProjection2206, reductionProjection306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2207 (0 : Fin 4)) = canonicalInput9762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1305 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9762 hH))).trans (oldProjectionSound1305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2207 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3072 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1296 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3072 hH))).trans (oldProjectionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2207 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code762).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2206 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2207 (3 : Fin 4)) = canonicalInput6462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2207 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6462 hH))).trans (reductionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3388).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2207 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3388).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2207 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection2207 ![oldProjection1305, oldProjection1296, reductionProjection2206, reductionProjection306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

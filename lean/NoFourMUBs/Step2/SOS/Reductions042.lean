import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical064
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical082
import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical137
import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical112
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical134
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical65
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical66
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical75
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical76
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1344 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (90, -80), (94, -20), (611, -720), (698, -480), (1059, -80), (1221, 240), (1226, -240), (1227, -160), (1251, 75)]

def reductionPivot1344 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound1344 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2807).moment H =
      Integer.Sparse.eval reductionProjection1344 (momentVector H) := by
  have heq : reductionPivot1344 = (fun u v => (normalNode2807).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2807).moment H = injectiveMoment H reductionPivot1344 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2807).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1344 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1344 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1344 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection838, oldProjection844, oldProjection850, reductionProjection1109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1344 (0 : Fin 4)) = canonicalInput8782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8782 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1344 (1 : Fin 4)) = canonicalInput5282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5282 hH))).trans (oldProjectionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1344 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2408 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection850 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2408 hH))).trans (oldProjectionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1344 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code611).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1344 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2807).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1344 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2807).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1344 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 1] ![2, 2, 2, 1440] reductionProjection1344 ![oldProjection838, oldProjection844, oldProjection850, reductionProjection1109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1345 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (76, 240), (81, 240), (90, -80), (542, -720), (683, 240), (698, -160), (700, -240), (1052, 240), (1059, -160), (1221, 240), (1251, 15)]

def reductionPivot1345 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound1345 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode721).moment H =
      Integer.Sparse.eval reductionProjection1345 (momentVector H) := by
  have heq : reductionPivot1345 = (fun u v => (normalNode721).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode721).moment H = injectiveMoment H reductionPivot1345 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode721).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1345 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1345 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1345 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection844, reductionProjection826, reductionProjection808, reductionProjection1111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1345 (0 : Fin 4)) = canonicalInput5282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5282 hH))).trans (oldProjectionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1345 (1 : Fin 4)) = canonicalInput1752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection826 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1752 hH))).trans (reductionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1345 (2 : Fin 4)) = canonicalInput1732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1732 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1345 (3 : Fin 4)) = canonicalInput1729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1345 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1729 hH))).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode721).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1345 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode721).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1345 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 9, 1] ![2, 160, 160, 1440] reductionProjection1345 ![oldProjection844, reductionProjection826, reductionProjection808, reductionProjection1111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1346 : Integer.Sparse (Fin 1613) := [(76, 1), (173, -3), (177, -3), (577, -3), (1052, 1), (1221, 1)]

def reductionPivot1346 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -1, 2, -2]]

theorem reductionSound1346 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode703).moment H =
      Integer.Sparse.eval reductionProjection1346 (momentVector H) := by
  have heq : reductionPivot1346 = (fun u v => (normalNode703).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode703).moment H = injectiveMoment H reductionPivot1346 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode703).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1346 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1346 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1346 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1184, reductionProjection1251, reductionProjection1114, reductionProjection1252] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1346 (0 : Fin 4)) = canonicalInput13531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1184 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13531 hH))).trans (reductionSound1184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1346 (1 : Fin 4)) = canonicalInput1777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1251 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1777 hH))).trans (reductionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1346 (2 : Fin 4)) = canonicalInput1644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1644 hH))).trans (reductionSound1114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1346 (3 : Fin 4)) = canonicalInput1638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1252 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1346 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1638 hH))).trans (reductionSound1252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode703).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1346 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode703).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1346 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection1346 ![reductionProjection1184, reductionProjection1251, reductionProjection1114, reductionProjection1252]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1347 : Integer.Sparse (Fin 1613) := [(0, -3), (56, -480), (76, -480), (81, -480), (89, -240), (90, 240), (94, 35), (173, 1440), (175, 1440), (177, 720), (243, 80), (542, 1440), (577, 720), (611, 1440), (683, -240), (698, 960), (700, 400), (704, 80), (1052, -720), (1059, 320), (1221, -720), (1223, -240), (1226, 400), (1227, 160), (1251, -110)]

def reductionPivot1347 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound1347 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode697).moment H =
      Integer.Sparse.eval reductionProjection1347 (momentVector H) := by
  have heq : reductionPivot1347 = (fun u v => (normalNode697).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode697).moment H = injectiveMoment H reductionPivot1347 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode697).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1347 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1347 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 6, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1347 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1344, reductionProjection1345, reductionProjection1346, reductionProjection834, reductionProjection1268] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1347 (0 : Fin 5)) = (normalNode2807).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1347 (1 : Fin 5)) = canonicalInput1725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1345 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1725 hH))).trans (reductionSound1345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1347 (2 : Fin 5)) = (normalNode703).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1346 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1347 (3 : Fin 5)) = canonicalInput1635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1635 hH))).trans (reductionSound834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1347 (4 : Fin 5)) = (normalNode698).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1268 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1347 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode697).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1347 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode697).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1347 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 6, 1440, 2] ![1, 1, 240, 1, 720] reductionProjection1347 ![reductionProjection1344, reductionProjection1345, reductionProjection1346, reductionProjection834, reductionProjection1268]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1348 : Integer.Sparse (Fin 1613) := [(172, 1)]

theorem reductionSound1348 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code172).moment H =
      Integer.Sparse.eval reductionProjection1348 (momentVector H) := by
  have hc : coordinates (172 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code172) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1348, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1349 : Integer.Sparse (Fin 1613) := [(0, 1), (433, -720), (445, -720), (484, -720), (697, 240), (698, -80), (1052, 240), (1059, -80), (1251, 15)]

def reductionPivot1349 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound1349 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode716).moment H =
      Integer.Sparse.eval reductionProjection1349 (momentVector H) := by
  have heq : reductionPivot1349 = (fun u v => (normalNode716).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode716).moment H = injectiveMoment H reductionPivot1349 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode716).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1349 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1349 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1349 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection476, reductionProjection1104, oldProjection804, oldProjection488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1349 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2100 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2100 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1349 (1 : Fin 4)) = canonicalInput1747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1747 hH))).trans (reductionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1349 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1268 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1268 hH))).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1349 (3 : Fin 4)) = canonicalInput1728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1349 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1728 hH))).trans (oldProjectionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode716).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1349 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode716).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1349 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection1349 ![oldProjection476, reductionProjection1104, oldProjection804, oldProjection488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1350 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (94, -55), (247, -80), (484, -720), (698, -160), (1251, -5), (1323, 240)]

def reductionPivot1350 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound1350 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4868).moment H =
      Integer.Sparse.eval reductionProjection1350 (momentVector H) := by
  have heq : reductionPivot1350 = (fun u v => (normalNode4868).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4868).moment H = injectiveMoment H reductionPivot1350 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4868).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1350 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1350 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 360, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1350 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1099, oldProjection488, oldProjection1332, oldProjection1198] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1350 (0 : Fin 4)) = canonicalInput6556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6556 hH))).trans (oldProjectionSound1099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1350 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4293 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4293 hH))).trans (oldProjectionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1350 (2 : Fin 4)) = canonicalInput9827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1332 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9827 hH))).trans (oldProjectionSound1332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1350 (3 : Fin 4)) = canonicalInput9830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1198 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1350 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9830 hH))).trans (oldProjectionSound1198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4868).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1350 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4868).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1350 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 360, 72] ![10, 1440, 4, 20] reductionProjection1350 ![oldProjection1099, oldProjection488, oldProjection1332, oldProjection1198]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1351 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -60), (94, 85), (247, 320), (433, 2160), (445, 1440), (484, 2160), (697, -960), (698, 480), (1052, -720), (1059, 240), (1251, -145), (1323, -240)]

def reductionPivot1351 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound1351 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode704).moment H =
      Integer.Sparse.eval reductionProjection1351 (momentVector H) := by
  have heq : reductionPivot1351 = (fun u v => (normalNode704).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode704).moment H = injectiveMoment H reductionPivot1351 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode704).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1351 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1351 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1351 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1715, reductionProjection1349, reductionProjection1349, oldProjection1512, reductionProjection1350] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1351 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1715⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1715 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1351 (1 : Fin 5)) = canonicalInput1722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1349 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1722 hH))).trans (reductionSound1349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1351 (2 : Fin 5)) = (normalNode716).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1349 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1351 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1512⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1351 (4 : Fin 5)) = canonicalInput1659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1350 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1351 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1659 hH))).trans (reductionSound1350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode704).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1351 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode704).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1351 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection1351 ![oldProjection1715, reductionProjection1349, reductionProjection1349, oldProjection1512, reductionProjection1350]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1352 : Integer.Sparse (Fin 1613) := [(0, 1), (73, 120), (81, 120), (94, -5), (542, -360), (683, 120), (697, 120), (698, -80), (700, -80), (1052, 240), (1059, -80), (1251, 10)]

def reductionPivot1352 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound1352 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode717).moment H =
      Integer.Sparse.eval reductionProjection1352 (momentVector H) := by
  have heq : reductionPivot1352 = (fun u v => (normalNode717).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode717).moment H = injectiveMoment H reductionPivot1352 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode717).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1352 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1352 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1352 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1190, reductionProjection1105, oldProjection804, reductionProjection1111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1352 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2101 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1190 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2101 hH))).trans (oldProjectionSound1190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1352 (1 : Fin 4)) = canonicalInput1748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1105 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1748 hH))).trans (reductionSound1105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1352 (2 : Fin 4)) = canonicalInput1731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1731 hH))).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1352 (3 : Fin 4)) = canonicalInput1729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1352 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1729 hH))).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode717).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1352 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode717).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1352 (j : Fin 4)))
      2 720 720 2 ![720, 72, 720, 1] ![1, 10, 1, 720] reductionProjection1352 ![oldProjection1190, reductionProjection1105, oldProjection804, reductionProjection1111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1353 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -40), (73, -480), (81, -1440), (94, 125), (247, 240), (542, 2160), (683, -720), (697, -1440), (698, 720), (700, 320), (1052, -1440), (1059, 480), (1251, -100)]

def reductionPivot1353 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound1353 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode705).moment H =
      Integer.Sparse.eval reductionProjection1353 (momentVector H) := by
  have heq : reductionPivot1353 = (fun u v => (normalNode705).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode705).moment H = injectiveMoment H reductionPivot1353 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode705).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1353 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1353 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1353 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1716, reductionProjection1352, reductionProjection1352, oldProjection1512, reductionProjection1269] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1353 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1716 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1353 (1 : Fin 5)) = canonicalInput1723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1723 hH))).trans (reductionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1353 (2 : Fin 5)) = (normalNode717).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1353 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1241 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1241 hH))).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1353 (4 : Fin 5)) = (normalNode709).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1269 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1353 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode705).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1353 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode705).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1353 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 1440, 1440] ![1, 2, 2, 1, 1] reductionProjection1353 ![oldProjection1716, reductionProjection1352, reductionProjection1352, oldProjection1512, reductionProjection1269]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1354 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (81, 240), (90, -80), (94, -20), (241, -80), (547, -720), (683, 240), (697, 240), (698, -400), (700, -80), (1226, -160), (1227, -80), (1251, 35)]

def reductionPivot1354 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound1354 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode718).moment H =
      Integer.Sparse.eval reductionProjection1354 (momentVector H) := by
  have heq : reductionPivot1354 = (fun u v => (normalNode718).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode718).moment H = injectiveMoment H reductionPivot1354 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode718).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1354 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1354 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1354 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1016, reductionProjection826, oldProjection1036, reductionProjection1083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1354 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2107 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1016 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2107 hH))).trans (oldProjectionSound1016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1354 (1 : Fin 4)) = canonicalInput1752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection826 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1752 hH))).trans (reductionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1354 (2 : Fin 4)) = canonicalInput1737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1737 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1354 (3 : Fin 4)) = canonicalInput1736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1354 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1736 hH))).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode718).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1354 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode718).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1354 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 720, 1] ![10, 160, 2, 1440] reductionProjection1354 ![oldProjection1016, reductionProjection826, oldProjection1036, reductionProjection1083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1355 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -4), (56, -96), (76, -96), (81, -288), (90, 32), (94, 17), (241, 32), (247, 16), (542, 144), (547, 288), (683, -144), (697, -192), (698, 288), (700, 96), (1052, -48), (1059, 64), (1219, -96), (1221, -48), (1226, 64), (1227, 64), (1251, -13)]

def reductionPivot1355 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound1355 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode707).moment H =
      Integer.Sparse.eval reductionProjection1355 (momentVector H) := by
  have heq : reductionPivot1355 = (fun u v => (normalNode707).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode707).moment H = injectiveMoment H reductionPivot1355 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode707).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1355 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1355 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1355 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1718, reductionProjection1345, reductionProjection1354, oldProjection1513, reductionProjection1085] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1355 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1718 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1355 (1 : Fin 5)) = canonicalInput1725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1345 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1725 hH))).trans (reductionSound1345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1355 (2 : Fin 5)) = (normalNode718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1354 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1355 (3 : Fin 5)) = canonicalInput1665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1665 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1355 (4 : Fin 5)) = (normalNode713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1085 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1355 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1085 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode707).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1355 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode707).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1355 (j : Fin 5)))
      1 288 1440 5 ![360, 1440, 1440, 1440, 720] ![4, 1, 1, 1, 2] reductionProjection1355 ![oldProjection1718, reductionProjection1345, reductionProjection1354, oldProjection1513, reductionProjection1085]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1356 : Integer.Sparse (Fin 1613) := [(170, -1), (183, -1), (547, -1), (636, -1)]

def reductionPivot1356 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]

theorem reductionSound1356 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode722).moment H =
      Integer.Sparse.eval reductionProjection1356 (momentVector H) := by
  have heq : reductionPivot1356 = (fun u v => (normalNode722).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode722).moment H = injectiveMoment H reductionPivot1356 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode722).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1356 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1356 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1356 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1136, reductionProjection1139, reductionProjection837, reductionProjection1083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1356 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code636).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1356 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code183).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1139 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1356 (2 : Fin 4)) = canonicalInput1738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection837 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1738 hH))).trans (reductionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1356 (3 : Fin 4)) = canonicalInput1736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1356 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1736 hH))).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode722).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1356 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode722).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1356 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1356 ![reductionProjection1136, reductionProjection1139, reductionProjection837, reductionProjection1083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1357 : Integer.Sparse (Fin 1613) := [(56, 6), (81, 6), (89, 3), (90, -2), (177, -9), (683, 3), (698, -3), (1226, -3), (1227, -1)]

def reductionPivot1357 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -3, 1]]

theorem reductionSound1357 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode719).moment H =
      Integer.Sparse.eval reductionProjection1357 (momentVector H) := by
  have heq : reductionPivot1357 = (fun u v => (normalNode719).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode719).moment H = injectiveMoment H reductionPivot1357 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode719).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1357 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1357 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 9, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1357 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection851, reductionProjection1251, reductionProjection819, reductionProjection1084] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1357 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2460 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection851 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2460 hH))).trans (oldProjectionSound851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1357 (1 : Fin 4)) = canonicalInput1740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1251 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1740 hH))).trans (reductionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1357 (2 : Fin 4)) = canonicalInput1699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1699 hH))).trans (reductionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1357 (3 : Fin 4)) = canonicalInput1697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1084 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1357 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1697 hH))).trans (reductionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode719).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1357 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode719).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1357 (j : Fin 4)))
      2 18 18 2 ![9, 1, 9, 3] ![2, 18, 2, 6] reductionProjection1357 ![oldProjection851, reductionProjection1251, reductionProjection819, reductionProjection1084]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1358 : Integer.Sparse (Fin 1613) := [(0, -1), (56, -96), (81, -144), (89, -48), (90, 32), (94, 4), (169, 144), (170, 288), (177, 144), (183, 288), (243, 16), (508, 144), (547, 288), (636, 288), (683, -48), (697, -48), (698, 112), (700, 32), (704, 16), (1059, 32), (1219, -96), (1223, -48), (1226, 80), (1227, 48), (1251, -11)]

def reductionPivot1358 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]

theorem reductionSound1358 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode711).moment H =
      Integer.Sparse.eval reductionProjection1358 (momentVector H) := by
  have heq : reductionPivot1358 = (fun u v => (normalNode711).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode711).moment H = injectiveMoment H reductionPivot1358 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode711).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1358 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1358 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 720, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1358 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1724, reductionProjection1356, reductionProjection1356, oldProjection1511, reductionProjection1357] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1358 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1724⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1358 (1 : Fin 5)) = canonicalInput1733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1356 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1733 hH))).trans (reductionSound1356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1358 (2 : Fin 5)) = (normalNode722).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1356 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1358 (3 : Fin 5)) = canonicalInput1689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1511 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1689 hH))).trans (oldProjectionSound1511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1358 (4 : Fin 5)) = (normalNode719).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1357 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1358 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode711).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1358 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode711).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1358 (j : Fin 5)))
      1 288 1440 5 ![1440, 2, 2, 720, 18] ![1, 720, 720, 2, 80] reductionProjection1358 ![oldProjection1724, reductionProjection1356, reductionProjection1356, oldProjection1511, reductionProjection1357]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1359 : Integer.Sparse (Fin 1613) := [(0, 1), (489, -180), (505, -180), (697, 60), (698, -80), (1059, -20), (1219, 60), (1227, -60), (1251, 15)]

def reductionPivot1359 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound1359 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2130).moment H =
      Integer.Sparse.eval reductionProjection1359 (momentVector H) := by
  have heq : reductionPivot1359 = (fun u v => (normalNode2130).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2130).moment H = injectiveMoment H reductionPivot1359 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2130).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1359 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1359 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1359 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1058, oldProjection495, oldProjection815, oldProjection490] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1359 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3599 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3599 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1359 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2114 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection495 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2114 hH))).trans (oldProjectionSound495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1359 (2 : Fin 4)) = canonicalInput4140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4140 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1359 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1359 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2130).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1359 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2130).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1359 (j : Fin 4)))
      2 360 720 4 ![720, 1, 720, 1] ![1, 720, 1, 720] reductionProjection1359 ![oldProjection1058, oldProjection495, oldProjection815, oldProjection490]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1360 : Integer.Sparse (Fin 1613) := [(178, 1)]

theorem reductionSound1360 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code178).moment H =
      Integer.Sparse.eval reductionProjection1360 (momentVector H) := by
  have hc : coordinates (178 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code178) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1360, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1361 : Integer.Sparse (Fin 1613) := [(179, -1), (181, -1), (490, -1), (618, -1)]

def reductionPivot1361 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -3, 1]]

theorem reductionSound1361 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode720).moment H =
      Integer.Sparse.eval reductionProjection1361 (momentVector H) := by
  have heq : reductionPivot1361 = (fun u v => (normalNode720).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode720).moment H = injectiveMoment H reductionPivot1361 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode720).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1361 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1361 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1361 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection515, reductionProjection1333, reductionProjection818, reductionProjection1275] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1361 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection515 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1361 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code181).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1333 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1361 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code179).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection818 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1361 (3 : Fin 4)) = canonicalInput1708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1275 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1361 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1708 hH))).trans (reductionSound1275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode720).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1361 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode720).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1361 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1361 ![oldProjection515, reductionProjection1333, reductionProjection818, reductionProjection1275]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1362 : Integer.Sparse (Fin 1613) := [(0, -4), (94, 5), (169, 720), (174, 720), (178, -1440), (179, 720), (181, 720), (478, 720), (489, 720), (490, 720), (505, 720), (602, 720), (618, 720), (697, -480), (698, 640), (1052, -240), (1059, 160), (1095, 720), (1219, -480), (1223, -240), (1226, 160), (1227, 480), (1251, -115)]

def reductionPivot1362 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound1362 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode712).moment H =
      Integer.Sparse.eval reductionProjection1362 (momentVector H) := by
  have heq : reductionPivot1362 = (fun u v => (normalNode712).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode712).moment H = injectiveMoment H reductionPivot1362 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode712).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1362 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1362 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1, 2, 288, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1362 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1359, reductionProjection1360, oldProjection2188, oldProjection1510, reductionProjection1361] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1362 (0 : Fin 5)) = (normalNode2130).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1359 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1362 (1 : Fin 5)) = canonicalInput1734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1360 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1734 hH))).trans (reductionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1362 (2 : Fin 5)) = canonicalInput1695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2188 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1695 hH))).trans (oldProjectionSound2188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1362 (3 : Fin 5)) = canonicalInput1692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1692 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1362 (4 : Fin 5)) = (normalNode720).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1361 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1362 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode712).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1362 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode712).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1362 (j : Fin 5)))
      1 1440 1440 1 ![360, 1, 2, 288, 2] ![4, 1440, 720, 5, 720] reductionProjection1362 ![reductionProjection1359, reductionProjection1360, oldProjection2188, oldProjection1510, reductionProjection1361]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1363 : Integer.Sparse (Fin 1613) := [(42, 1), (56, -3), (60, 1), (73, -3), (700, 1)]

def reductionPivot1363 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 3, 0], ![0, 3, 0, -3], ![2, -1, -3, 2]]

theorem reductionSound1363 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode8908).moment H =
      Integer.Sparse.eval reductionProjection1363 (momentVector H) := by
  have heq : reductionPivot1363 = (fun u v => (normalNode8908).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8908).moment H = injectiveMoment H reductionPivot1363 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8908).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode8908).entries)).symm
  have hshape : reductionPivot1363 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1363 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1363 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection376, oldProjection97, oldProjection92] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1363 (0 : Fin 3)) = canonicalInput2256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1363 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1363 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2256 hH))).trans (reductionSound376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1363 (1 : Fin 3)) = canonicalInput14161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1363 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1363 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14161 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1363 (2 : Fin 3)) = canonicalInput14172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1363 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection92 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1363 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection92 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14172 hH))).trans (oldProjectionSound92 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8908).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1363 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8908).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1363 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1363 ![reductionProjection376, oldProjection97, oldProjection92]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1364 : Integer.Sparse (Fin 1613) := [(42, -8), (56, 48), (60, -8), (73, 24), (94, -1), (243, -8), (698, -16), (700, -56), (1052, 72), (1059, -16), (1219, 24), (1251, -1)]

def reductionPivot1364 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound1364 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode715).moment H =
      Integer.Sparse.eval reductionProjection1364 (momentVector H) := by
  have heq : reductionPivot1364 = (fun u v => (normalNode715).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode715).moment H = injectiveMoment H reductionPivot1364 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode715).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1364 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1364 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1364 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1269, reductionProjection1363, reductionProjection808, oldProjection1270] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1364 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2099 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1269 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2099 hH))).trans (oldProjectionSound1269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1364 (1 : Fin 4)) = canonicalInput1746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1363 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1746 hH))).trans (reductionSound1363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1364 (2 : Fin 4)) = canonicalInput1730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1730 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1364 (3 : Fin 4)) = canonicalInput1727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1270 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1364 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1727 hH))).trans (oldProjectionSound1270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode715).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1364 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode715).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1364 (j : Fin 4)))
      2 144 144 2 ![72, 9, 9, 9] ![2, 16, 16, 16] reductionProjection1364 ![oldProjection1269, reductionProjection1363, reductionProjection808, oldProjection1270]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1365 : Integer.Sparse (Fin 1613) := [(1397, 1)]

theorem reductionSound1365 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1397).moment H =
      Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
  have hc : coordinates (1397 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1397) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1365, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1366 : Integer.Sparse (Fin 1613) := [(1313, 1)]

theorem reductionSound1366 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1313).moment H =
      Integer.Sparse.eval reductionProjection1366 (momentVector H) := by
  have hc : coordinates (1313 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1313) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1366, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1367 : Integer.Sparse (Fin 1613) := [(1398, 1)]

theorem reductionSound1367 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1398).moment H =
      Integer.Sparse.eval reductionProjection1367 (momentVector H) := by
  have hc : coordinates (1398 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1398) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1367, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1368 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (1250, -60), (1251, 10), (1313, -720), (1321, 240), (1389, 240), (1397, -720), (1398, -720)]

def reductionPivot1368 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![2, 1, -1, -2]]

theorem reductionSound1368 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode732).moment H =
      Integer.Sparse.eval reductionProjection1368 (momentVector H) := by
  have heq : reductionPivot1368 = (fun u v => (normalNode732).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode732).moment H = injectiveMoment H reductionPivot1368 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode732).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1368 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1368 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1368 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1365, reductionProjection1366, oldProjection1331, reductionProjection1367] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1368 (0 : Fin 4)) = canonicalInput4659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4659 hH))).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1368 (1 : Fin 4)) = canonicalInput1805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1805 hH))).trans (reductionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1368 (2 : Fin 4)) = canonicalInput1795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1795 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1368 (3 : Fin 4)) = canonicalInput1794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1367 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1368 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1794 hH))).trans (reductionSound1367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode732).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1368 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode732).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1368 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection1368 ![reductionProjection1365, reductionProjection1366, oldProjection1331, reductionProjection1367]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1369 : Integer.Sparse (Fin 1613) := [(0, 11), (20, 10), (93, 180), (94, -20), (541, 720), (690, -240), (1050, -240), (1106, 720), (1250, 180), (1251, -25), (1313, 1440), (1319, -240), (1321, -1200), (1322, -240), (1388, -240), (1389, -960), (1397, 1440), (1398, 1440)]

def reductionPivot1369 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, 1, -1, -2]]

theorem reductionSound1369 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode723).moment H =
      Integer.Sparse.eval reductionProjection1369 (momentVector H) := by
  have heq : reductionPivot1369 = (fun u v => (normalNode723).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode723).moment H = injectiveMoment H reductionPivot1369 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode723).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1369 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1369 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 480, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1369 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection92, reductionProjection1368, reductionProjection1368, oldProjection2340, oldProjection2346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1369 (0 : Fin 5)) = (normalNode38).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection92 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection92 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound92 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1369 (1 : Fin 5)) = (normalNode732).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1368 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1369 (2 : Fin 5)) = canonicalInput2060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1368 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2060 hH))).trans (reductionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1369 (3 : Fin 5)) = canonicalInput2071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2340 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2071 hH))).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1369 (4 : Fin 5)) = canonicalInput2076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2346 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1369 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2076 hH))).trans (oldProjectionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode723).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1369 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode723).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1369 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 480, 360] ![1, 1, 1, 3, 4] reductionProjection1369 ![reductionProjection92, reductionProjection1368, reductionProjection1368, oldProjection2340, oldProjection2346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1370 : Integer.Sparse (Fin 1613) := [(72, 1), (553, -3), (566, -3), (1050, 1), (1221, 1), (1313, -3)]

def reductionPivot1370 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound1370 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode736).moment H =
      Integer.Sparse.eval reductionProjection1370 (momentVector H) := by
  have heq : reductionPivot1370 = (fun u v => (normalNode736).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode736).moment H = injectiveMoment H reductionPivot1370 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode736).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1370 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1370 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1370 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection503, oldProjection825, reductionProjection1366, reductionProjection170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1370 (0 : Fin 4)) = canonicalInput14036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14036 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1370 (1 : Fin 4)) = canonicalInput2095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2095 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1370 (2 : Fin 4)) = canonicalInput1799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1799 hH))).trans (reductionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1370 (3 : Fin 4)) = canonicalInput1788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1370 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1788 hH))).trans (reductionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode736).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1370 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode736).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1370 (j : Fin 4)))
      2 6 6 2 ![1, 3, 1, 1] ![6, 2, 6, 6] reductionProjection1370 ![oldProjection503, oldProjection825, reductionProjection1366, reductionProjection170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1371 : Integer.Sparse (Fin 1613) := [(1305, 1)]

theorem reductionSound1371 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1305).moment H =
      Integer.Sparse.eval reductionProjection1371 (momentVector H) := by
  have hc : coordinates (1305 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1305) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1371, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1372 : Integer.Sparse (Fin 1613) := [(68, 1), (72, 2), (682, 2), (1050, 1), (1221, 2), (1305, -3), (1389, 1)]

def reductionPivot1372 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound1372 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode740).moment H =
      Integer.Sparse.eval reductionProjection1372 (momentVector H) := by
  have heq : reductionPivot1372 = (fun u v => (normalNode740).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode740).moment H = injectiveMoment H reductionPivot1372 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode740).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1372 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1372 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1372 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection822, reductionProjection172, reductionProjection1371, oldProjection825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1372 (0 : Fin 4)) = canonicalInput4661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection822 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4661 hH))).trans (oldProjectionSound822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1372 (1 : Fin 4)) = canonicalInput1815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1815 hH))).trans (reductionSound172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1372 (2 : Fin 4)) = canonicalInput1808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1371 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1371 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1808 hH))).trans (reductionSound1371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1372 (3 : Fin 4)) = canonicalInput1806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1372 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1806 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode740).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1372 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode740).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1372 (j : Fin 4)))
      2 6 6 2 ![3, 3, 1, 3] ![2, 2, 6, 2] reductionProjection1372 ![oldProjection822, reductionProjection172, reductionProjection1371, oldProjection825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1373 : Integer.Sparse (Fin 1613) := [(68, -16), (69, -16), (72, -48), (94, -1), (536, 48), (541, 48), (553, 48), (566, 48), (682, -48), (684, -16), (690, -16), (1044, -16), (1050, -32), (1217, -16), (1221, -48), (1250, 4), (1251, -1), (1305, 48), (1313, 48), (1321, -16), (1389, -32)]

def reductionPivot1373 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound1373 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode724).moment H =
      Integer.Sparse.eval reductionProjection1373 (momentVector H) := by
  have heq : reductionPivot1373 = (fun u v => (normalNode724).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode724).moment H = injectiveMoment H reductionPivot1373 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode724).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1373 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1373 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 6, 6, 3, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1373 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection98, reductionProjection1370, reductionProjection1372, oldProjection825, oldProjection2347] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1373 (0 : Fin 5)) = (normalNode40).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection98 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection98 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound98 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1373 (1 : Fin 5)) = (normalNode736).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1370 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1373 (2 : Fin 5)) = canonicalInput2061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1372 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2061 hH))).trans (reductionSound1372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1373 (3 : Fin 5)) = canonicalInput2090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2090 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1373 (4 : Fin 5)) = canonicalInput2093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2347 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1373 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2093 hH))).trans (oldProjectionSound2347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode724).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1373 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode724).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1373 (j : Fin 5)))
      1 96 96 1 ![6, 6, 6, 3, 96] ![16, 16, 16, 32, 1] reductionProjection1373 ![reductionProjection98, reductionProjection1370, reductionProjection1372, oldProjection825, oldProjection2347]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1374 : Integer.Sparse (Fin 1613) := [(185, 1)]

theorem reductionSound1374 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code185).moment H =
      Integer.Sparse.eval reductionProjection1374 (momentVector H) := by
  have hc : coordinates (185 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code185) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1374, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1375 : Integer.Sparse (Fin 1613) := [(569, 1)]

theorem reductionSound1375 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code569).moment H =
      Integer.Sparse.eval reductionProjection1375 (momentVector H) := by
  have hc : coordinates (569 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code569) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1375, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

end NoFourMUBs.Step2.SOS.Normalization

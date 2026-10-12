import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical020
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.Canonical429
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical134
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical62
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical63
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1248 : Integer.Sparse (Fin 1613) := [(19, 4), (73, 48), (76, 48), (77, 48), (94, -3), (241, -32), (243, -16), (580, -144), (698, -32), (1052, 96), (1223, 48), (1226, -16), (1251, 5)]

def reductionPivot1248 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -1, 2, -3]]

theorem reductionSound1248 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode622).moment H =
      Integer.Sparse.eval reductionProjection1248 (momentVector H) := by
  have heq : reductionPivot1248 = (fun u v => (normalNode622).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode622).moment H = injectiveMoment H reductionPivot1248 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode622).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1248 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1248 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1248 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection830, reductionProjection1247, reductionProjection1091, oldProjection829] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1248 (0 : Fin 4)) = canonicalInput1316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection830 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1316 hH))).trans (oldProjectionSound830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1248 (1 : Fin 4)) = canonicalInput1637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1247 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1637 hH))).trans (reductionSound1247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1248 (2 : Fin 4)) = canonicalInput1671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1091 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1671 hH))).trans (reductionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1248 (3 : Fin 4)) = canonicalInput1673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection829 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1248 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1673 hH))).trans (oldProjectionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode622).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1248 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode622).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1248 (j : Fin 4)))
      2 288 288 2 ![144, 1, 3, 72] ![2, 288, 96, 4] reductionProjection1248 ![oldProjection830, reductionProjection1247, reductionProjection1091, oldProjection829]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1249 : Integer.Sparse (Fin 1613) := [(19, 4), (73, 48), (94, 7), (1052, 144), (1251, 7)]

def reductionPivot1249 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 2, -3]]

theorem reductionSound1249 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode706).moment H =
      Integer.Sparse.eval reductionProjection1249 (momentVector H) := by
  have heq : reductionPivot1249 = (fun u v => (normalNode706).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode706).moment H = injectiveMoment H reductionPivot1249 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode706).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1249 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1249 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 3, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1249 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1028, reductionProjection1091, reductionProjection1091, oldProjection1028] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1249 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2023 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1249 (1 : Fin 4)) = canonicalInput1724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1091 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1724 hH))).trans (reductionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1249 (2 : Fin 4)) = canonicalInput1671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1091 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1671 hH))).trans (reductionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1249 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1242 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1249 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1242 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode706).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1249 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode706).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1249 (j : Fin 4)))
      2 144 144 2 ![144, 3, 3, 144] ![1, 48, 48, 1] reductionProjection1249 ![oldProjection1028, reductionProjection1091, reductionProjection1091, oldProjection1028]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1250 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (73, -480), (76, -480), (77, -480), (94, -25), (241, 320), (243, 160), (580, 720), (698, 320), (1052, -1440), (1053, -120), (1221, -120), (1223, -480), (1226, 160), (1251, -65)]

def reductionPivot1250 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]

theorem reductionSound1250 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode611).moment H =
      Integer.Sparse.eval reductionProjection1250 (momentVector H) := by
  have heq : reductionPivot1250 = (fun u v => (normalNode611).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode611).moment H = injectiveMoment H reductionPivot1250 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode611).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1250 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1250 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1250 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1494, reductionProjection1248, reductionProjection1248, reductionProjection1249, oldProjection1765] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1250 (0 : Fin 5)) = canonicalInput1307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1494 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1307 hH))).trans (oldProjectionSound1494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1250 (1 : Fin 5)) = canonicalInput1633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1248 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1633 hH))).trans (reductionSound1248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1250 (2 : Fin 5)) = canonicalInput1650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1248 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1650 hH))).trans (reductionSound1248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1250 (3 : Fin 5)) = (normalNode706).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1250 (4 : Fin 5)) = canonicalInput1656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1765 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1250 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1656 hH))).trans (oldProjectionSound1765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode611).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1250 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode611).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1250 (j : Fin 5)))
      1 720 1440 2 ![288, 288, 288, 144, 1440] ![5, 5, 5, 10, 1] reductionProjection1250 ![oldProjection1494, reductionProjection1248, reductionProjection1248, reductionProjection1249, oldProjection1765]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1251 : Integer.Sparse (Fin 1613) := [(177, 1)]

theorem reductionSound1251 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code177).moment H =
      Integer.Sparse.eval reductionProjection1251 (momentVector H) := by
  have hc : coordinates (177 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code177) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1251, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1252 : Integer.Sparse (Fin 1613) := [(577, 1)]

theorem reductionSound1252 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code577).moment H =
      Integer.Sparse.eval reductionProjection1252 (momentVector H) := by
  have hc : coordinates (577 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code577) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1252, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1253 : Integer.Sparse (Fin 1613) := [(169, -1), (177, -1), (478, -1), (577, -1)]

def reductionPivot1253 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, -1, 1, -2]]

theorem reductionSound1253 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode692).moment H =
      Integer.Sparse.eval reductionProjection1253 (momentVector H) := by
  have heq : reductionPivot1253 = (fun u v => (normalNode692).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode692).moment H = injectiveMoment H reductionPivot1253 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode692).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1253 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1253 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1253 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection484, reductionProjection1251, reductionProjection1252, oldProjection408] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1253 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1253 (1 : Fin 4)) = canonicalInput1717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1251 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1717 hH))).trans (reductionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1253 (2 : Fin 4)) = canonicalInput1638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1252 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1638 hH))).trans (reductionSound1252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1253 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1253 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode692).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1253 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode692).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1253 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1253 ![oldProjection484, reductionProjection1251, reductionProjection1252, oldProjection408]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1254 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (76, -96), (88, 16), (94, 13), (169, 288), (177, 288), (241, 80), (243, 64), (247, 32), (478, 288), (508, 144), (543, 144), (577, 288), (697, -48), (698, 96), (1052, -48), (1221, -48), (1226, 48), (1251, -10)]

def reductionPivot1254 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, 1, -2]]

theorem reductionSound1254 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode612).moment H =
      Integer.Sparse.eval reductionProjection1254 (momentVector H) := by
  have heq : reductionPivot1254 = (fun u v => (normalNode612).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode612).moment H = injectiveMoment H reductionPivot1254 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode612).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1254 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1254 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1254 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1725, reductionProjection1253, reductionProjection1253, oldProjection1765, oldProjection2061] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1254 (0 : Fin 5)) = canonicalInput1308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1725 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1308 hH))).trans (oldProjectionSound1725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1254 (1 : Fin 5)) = (normalNode692).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1253 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1254 (2 : Fin 5)) = canonicalInput1651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1253 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1651 hH))).trans (reductionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1254 (3 : Fin 5)) = canonicalInput1656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1765 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1656 hH))).trans (oldProjectionSound1765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1254 (4 : Fin 5)) = canonicalInput1657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1254 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1657 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode612).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1254 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode612).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1254 (j : Fin 5)))
      1 288 1440 5 ![144, 2, 2, 1440, 1440] ![10, 720, 720, 1, 1] reductionProjection1254 ![oldProjection1725, reductionProjection1253, reductionProjection1253, oldProjection1765, oldProjection2061]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1255 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -8), (94, -19), (244, -16), (700, -16), (701, -16), (1053, 48), (1061, 96), (1251, -11)]

def reductionPivot1255 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound1255 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1285).moment H =
      Integer.Sparse.eval reductionProjection1255 (momentVector H) := by
  have heq : reductionPivot1255 = (fun u v => (normalNode1285).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1285).moment H = injectiveMoment H reductionPivot1255 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1285).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1255 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1255 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1255 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1029, oldProjection961, oldProjection1070, oldProjection1070] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1255 (0 : Fin 4)) = canonicalInput1340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1029 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1340 hH))).trans (oldProjectionSound1029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1255 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1710 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection961 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection961 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1710 hH))).trans (oldProjectionSound961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1255 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1730 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1070 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1730 hH))).trans (oldProjectionSound1070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1255 (3 : Fin 4)) = canonicalInput2845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1070 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1255 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2845 hH))).trans (oldProjectionSound1070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1285).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1255 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1285).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1255 (j : Fin 4)))
      2 288 288 2 ![72, 144, 48, 48] ![4, 2, 6, 6] reductionProjection1255 ![oldProjection1029, oldProjection961, oldProjection1070, oldProjection1070]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1256 : Integer.Sparse (Fin 1613) := [(42, 1), (77, -3), (89, -3), (90, 1), (91, 1)]

def reductionPivot1256 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 3, -2], ![-1, 4, -2, -1], ![2, -3, -1, 2]]

theorem reductionSound1256 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode10310).moment H =
      Integer.Sparse.eval reductionProjection1256 (momentVector H) := by
  have heq : reductionPivot1256 = (fun u v => (normalNode10310).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10310).moment H = injectiveMoment H reductionPivot1256 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10310).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10310).entries)).symm
  have hshape : reductionPivot1256 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1256 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1256 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection115, oldProjection104, reductionProjection53] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1256 (0 : Fin 3)) = canonicalInput19114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1256 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1256 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19114 hH))).trans (oldProjectionSound115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1256 (1 : Fin 3)) = canonicalInput27449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1256 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1256 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27449 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1256 (2 : Fin 3)) = canonicalInput27461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1256 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection53 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1256 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection53 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27461 hH))).trans (reductionSound53 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10310).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1256 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10310).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1256 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1256 ![oldProjection115, oldProjection104, reductionProjection53]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1257 : Integer.Sparse (Fin 1613) := [(19, 4), (42, -16), (77, 48), (89, 96), (90, -16), (91, -16), (94, -1), (241, -16), (243, -80), (698, -48), (704, -48), (1223, 144), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot1257 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound1257 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode693).moment H =
      Integer.Sparse.eval reductionProjection1257 (momentVector H) := by
  have heq : reductionPivot1257 = (fun u v => (normalNode693).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode693).moment H = injectiveMoment H reductionPivot1257 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode693).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1257 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1257 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1257 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1306, reductionProjection1256, oldProjection848, oldProjection1251] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1257 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1998 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1998 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1257 (1 : Fin 4)) = canonicalInput1718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1256 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1718 hH))).trans (reductionSound1256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1257 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1234 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection848 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1234 hH))).trans (oldProjectionSound848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1257 (3 : Fin 4)) = canonicalInput1639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1251 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1257 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1639 hH))).trans (oldProjectionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode693).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1257 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode693).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1257 (j : Fin 4)))
      2 288 288 2 ![144, 9, 9, 9] ![2, 32, 32, 32] reductionProjection1257 ![oldProjection1306, reductionProjection1256, oldProjection848, oldProjection1251]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1258 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (94, 85), (243, -80), (698, -80), (700, -80), (1052, 240), (1219, 480), (1251, 55)]

def reductionPivot1258 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound1258 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4867).moment H =
      Integer.Sparse.eval reductionProjection1258 (momentVector H) := by
  have heq : reductionPivot1258 = (fun u v => (normalNode4867).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4867).moment H = injectiveMoment H reductionPivot1258 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4867).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1258 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1258 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 9, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1258 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1268, oldProjection1270, oldProjection1104, reductionProjection1025] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1258 (0 : Fin 4)) = canonicalInput6555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1268 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6555 hH))).trans (oldProjectionSound1268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1258 (1 : Fin 4)) = canonicalInput9759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1270 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9759 hH))).trans (oldProjectionSound1270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1258 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4300 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1104 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4300 hH))).trans (oldProjectionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1258 (3 : Fin 4)) = canonicalInput9829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1025 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1258 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9829 hH))).trans (reductionSound1025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4867).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1258 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4867).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1258 (j : Fin 4)))
      2 1440 1440 2 ![360, 9, 720, 144] ![4, 160, 2, 10] reductionProjection1258 ![oldProjection1268, oldProjection1270, oldProjection1104, reductionProjection1025]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1259 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -160), (20, 55), (42, 160), (77, -480), (89, -1200), (90, 160), (91, 160), (94, 80), (241, 160), (243, 1040), (244, 80), (604, 720), (698, 720), (700, 160), (701, 80), (704, 960), (1052, -240), (1053, -240), (1061, -480), (1219, -480), (1223, -1920), (1225, 160), (1226, 160), (1251, 60)]

def reductionPivot1259 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound1259 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode613).moment H =
      Integer.Sparse.eval reductionProjection1259 (momentVector H) := by
  have heq : reductionPivot1259 = (fun u v => (normalNode613).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode613).moment H = injectiveMoment H reductionPivot1259 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode613).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1259 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1259 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1259 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1255, reductionProjection1257, reductionProjection1257, reductionProjection1019, reductionProjection1258] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1259 (0 : Fin 5)) = canonicalInput1309.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1255 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1309 hH))).trans (reductionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1259 (1 : Fin 5)) = (normalNode693).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1257 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1259 (2 : Fin 5)) = canonicalInput1652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1257 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1652 hH))).trans (reductionSound1257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1259 (3 : Fin 5)) = (normalNode708).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1019 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1259 (4 : Fin 5)) = canonicalInput1658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1258 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1259 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1658 hH))).trans (reductionSound1258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode613).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1259 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode613).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1259 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 144, 1440] ![5, 5, 5, 10, 1] reductionProjection1259 ![reductionProjection1255, reductionProjection1257, reductionProjection1257, reductionProjection1019, reductionProjection1258]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1260 : Integer.Sparse (Fin 1613) := [(6, -3), (42, 1), (77, -3), (700, 1), (701, 1)]

def reductionPivot1260 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 1, 2, 0], ![1, 3, -2, -2], ![3, -4, 0, 1]]

theorem reductionSound1260 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6134).moment H =
      Integer.Sparse.eval reductionProjection1260 (momentVector H) := by
  have heq : reductionPivot1260 = (fun u v => (normalNode6134).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6134).moment H = injectiveMoment H reductionPivot1260 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6134).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6134).entries)).symm
  have hshape : reductionPivot1260 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1260 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1260 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9, oldProjection88, oldProjection104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1260 (0 : Fin 3)) = canonicalInput54.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1260 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1260 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound54 hH))).trans (reductionSound9 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1260 (1 : Fin 3)) = canonicalInput768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1260 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection88 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1260 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound768 hH))).trans (oldProjectionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1260 (2 : Fin 3)) = canonicalInput777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1260 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1260 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound777 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6134).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1260 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6134).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1260 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection1260 ![reductionProjection9, oldProjection88, oldProjection104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1261 : Integer.Sparse (Fin 1613) := [(176, 1)]

theorem reductionSound1261 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code176).moment H =
      Integer.Sparse.eval reductionProjection1261 (momentVector H) := by
  have hc : coordinates (176 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code176) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1261, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1262 : Integer.Sparse (Fin 1613) := [(6, 48), (19, 8), (20, -1), (42, -32), (77, 48), (89, 48), (94, -4), (176, -144), (241, -16), (243, -48), (698, -16), (700, -16), (701, -16), (704, -48), (1223, 48), (1251, -3)]

def reductionPivot1262 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 3, -4]]

theorem reductionSound1262 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode695).moment H =
      Integer.Sparse.eval reductionProjection1262 (momentVector H) := by
  have heq : reductionPivot1262 = (fun u v => (normalNode695).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode695).moment H = injectiveMoment H reductionPivot1262 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode695).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1262 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1262 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1262 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection818, reductionProjection1260, reductionProjection1261, oldProjection848] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1262 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2001 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection818 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2001 hH))).trans (oldProjectionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1262 (1 : Fin 4)) = canonicalInput1719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1260 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1719 hH))).trans (reductionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1262 (2 : Fin 4)) = canonicalInput1641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1261 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1641 hH))).trans (reductionSound1261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1262 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1234 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection848 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1262 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1234 hH))).trans (oldProjectionSound848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode695).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1262 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode695).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1262 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 9] ![2, 32, 288, 32] reductionProjection1262 ![oldProjection818, reductionProjection1260, reductionProjection1261, oldProjection848]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1263 : Integer.Sparse (Fin 1613) := [(6, -3), (42, 1), (89, -3), (243, 1), (704, 1)]

def reductionPivot1263 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 1, 1, 1], ![1, -2, 3, -2], ![3, 1, -4, 0]]

theorem reductionSound1263 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6126).moment H =
      Integer.Sparse.eval reductionProjection1263 (momentVector H) := by
  have heq : reductionPivot1263 = (fun u v => (normalNode6126).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6126).moment H = injectiveMoment H reductionPivot1263 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6126).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6126).entries)).symm
  have hshape : reductionPivot1263 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1263 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1263 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9, oldProjection87, oldProjection115] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1263 (0 : Fin 3)) = canonicalInput44.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1263 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1263 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound44 hH))).trans (reductionSound9 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1263 (1 : Fin 3)) = canonicalInput677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1263 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1263 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound677 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1263 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw595 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1263 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1263 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical595 hH))).trans (oldProjectionSound115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6126).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1263 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6126).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1263 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection1263 ![reductionProjection9, oldProjection87, oldProjection115]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1264 : Integer.Sparse (Fin 1613) := [(171, 1)]

theorem reductionSound1264 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code171).moment H =
      Integer.Sparse.eval reductionProjection1264 (momentVector H) := by
  have hc : coordinates (171 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code171) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1264, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1265 : Integer.Sparse (Fin 1613) := [(6, 3), (42, -2), (89, 6), (171, -9), (243, -4), (698, -2), (704, -1), (1223, 3)]

def reductionPivot1265 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound1265 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode702).moment H =
      Integer.Sparse.eval reductionProjection1265 (momentVector H) := by
  have heq : reductionPivot1265 = (fun u v => (normalNode702).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode702).moment H = injectiveMoment H reductionPivot1265 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode702).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1265 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1265 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1265 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection817, reductionProjection1263, oldProjection848, reductionProjection1264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1265 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node817⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection817 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1265 (1 : Fin 4)) = canonicalInput1776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1263 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1776 hH))).trans (reductionSound1263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1265 (2 : Fin 4)) = canonicalInput1643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection848 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1643 hH))).trans (oldProjectionSound848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1265 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code171).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1265 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode702).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1265 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode702).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1265 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection1265 ![oldProjection817, reductionProjection1263, oldProjection848, reductionProjection1264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1266 : Integer.Sparse (Fin 1613) := [(0, -1), (6, -360), (19, -60), (20, 15), (42, 240), (56, -240), (61, -240), (77, -240), (89, -480), (94, 30), (171, 360), (176, 720), (241, 80), (243, 400), (244, 40), (698, 240), (700, 280), (701, 200), (704, 360), (1052, -120), (1053, -120), (1059, 40), (1061, -240), (1219, -240), (1223, -360), (1251, 20)]

def reductionPivot1266 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]

theorem reductionSound1266 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode614).moment H =
      Integer.Sparse.eval reductionProjection1266 (momentVector H) := by
  have heq : reductionPivot1266 = (fun u v => (normalNode614).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode614).moment H = injectiveMoment H reductionPivot1266 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode614).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1266 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1266 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1266 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1483, reductionProjection1262, reductionProjection1262, reductionProjection1265, reductionProjection841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1266 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1483⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1483 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1266 (1 : Fin 5)) = (normalNode695).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1262 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1266 (2 : Fin 5)) = canonicalInput1653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1262 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1653 hH))).trans (reductionSound1262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1266 (3 : Fin 5)) = canonicalInput1660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1265 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1660 hH))).trans (reductionSound1265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1266 (4 : Fin 5)) = (normalNode710).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1266 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode614).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1266 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode614).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1266 (j : Fin 5)))
      1 720 1440 2 ![288, 288, 288, 18, 1440] ![5, 5, 5, 80, 1] reductionProjection1266 ![oldProjection1483, reductionProjection1262, reductionProjection1262, reductionProjection1265, reductionProjection841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1267 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -120), (20, 10), (38, -480), (56, -960), (77, -480), (90, 160), (94, 105), (175, 1440), (241, 160), (243, 160), (247, 320), (697, -480), (698, 880), (700, 800), (704, 160), (1052, -480), (1053, -240), (1059, 240), (1219, -960), (1223, -480), (1226, 160), (1227, 160), (1251, 10)]

def reductionPivot1267 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound1267 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode615).moment H =
      Integer.Sparse.eval reductionProjection1267 (momentVector H) := by
  have heq : reductionPivot1267 = (fun u v => (normalNode615).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode615).moment H = injectiveMoment H reductionPivot1267 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode615).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1267 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1267 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1267 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1484, reductionProjection1244, reductionProjection1244, reductionProjection841, oldProjection1512] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1267 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1484⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1484 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1267 (1 : Fin 5)) = (normalNode696).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1244 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1267 (2 : Fin 5)) = canonicalInput1654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1244 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1654 hH))).trans (reductionSound1244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1267 (3 : Fin 5)) = (normalNode710).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1267 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1512⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1267 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode615).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1267 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode615).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1267 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 1440, 1440] ![2, 1, 1, 1, 1] reductionProjection1267 ![oldProjection1484, reductionProjection1244, reductionProjection1244, reductionProjection841, oldProjection1512]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1268 : Integer.Sparse (Fin 1613) := [(173, -1), (175, -1), (542, -1), (611, -1)]

def reductionPivot1268 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound1268 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode698).moment H =
      Integer.Sparse.eval reductionProjection1268 (momentVector H) := by
  have heq : reductionPivot1268 = (fun u v => (normalNode698).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode698).moment H = injectiveMoment H reductionPivot1268 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode698).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1268 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1268 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1268 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1109, reductionProjection1111, reductionProjection833, reductionProjection1114] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1268 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code611).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1268 (1 : Fin 4)) = canonicalInput1729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1729 hH))).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1268 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code175).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1268 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code173).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1268 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode698).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1268 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode698).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1268 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1268 ![reductionProjection1109, reductionProjection1111, reductionProjection833, reductionProjection1114]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1269 : Integer.Sparse (Fin 1613) := [(0, 7), (81, 480), (94, -55), (247, -80), (542, -720), (683, 240), (697, 480), (698, -80), (1251, -50)]

def reductionPivot1269 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound1269 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode709).moment H =
      Integer.Sparse.eval reductionProjection1269 (momentVector H) := by
  have heq : reductionPivot1269 = (fun u v => (normalNode709).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode709).moment H = injectiveMoment H reductionPivot1269 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode709).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1269 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1269 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1269 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1013, reductionProjection1111, oldProjection995, reductionProjection721] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1269 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2045 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2045 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1269 (1 : Fin 4)) = canonicalInput1729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1729 hH))).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1269 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1252 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1252 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1269 (3 : Fin 4)) = canonicalInput1679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection721 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1269 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1679 hH))).trans (reductionSound721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode709).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1269 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode709).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1269 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 720, 3] ![2, 1440, 2, 480] reductionProjection1269 ![oldProjection1013, reductionProjection1111, oldProjection995, reductionProjection721]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1270 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (38, -48), (56, -48), (81, -240), (94, 37), (173, 144), (175, 144), (228, -48), (231, -48), (241, 16), (247, 64), (542, 288), (547, 144), (548, 144), (549, 144), (611, 144), (683, -96), (697, -192), (698, 96), (700, 16), (704, 16), (1059, 16), (1219, -48), (1227, 16), (1251, 15), (1323, -48), (1389, -48)]

def reductionPivot1270 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound1270 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode616).moment H =
      Integer.Sparse.eval reductionProjection1270 (momentVector H) := by
  have heq : reductionPivot1270 = (fun u v => (normalNode616).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode616).moment H = injectiveMoment H reductionPivot1270 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode616).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1270 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1270 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1270 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1777, reductionProjection1268, reductionProjection1269, oldProjection2161, reductionProjection1085] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1270 (0 : Fin 5)) = canonicalInput1311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1777 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1311 hH))).trans (oldProjectionSound1777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1270 (1 : Fin 5)) = (normalNode698).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1268 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1270 (2 : Fin 5)) = (normalNode709).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1269 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1270 (3 : Fin 5)) = canonicalInput1663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2161 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1663 hH))).trans (oldProjectionSound2161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1270 (4 : Fin 5)) = (normalNode713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1085 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1270 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1085 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode616).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1270 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode616).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1270 (j : Fin 5)))
      1 288 1440 5 ![1440, 2, 1440, 720, 720] ![1, 720, 1, 2, 2] reductionProjection1270 ![oldProjection1777, reductionProjection1268, reductionProjection1269, oldProjection2161, reductionProjection1085]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1271 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -120), (20, 15), (38, -480), (56, -960), (89, -480), (90, 160), (94, 70), (170, 720), (175, 720), (241, 160), (243, 320), (247, 160), (697, -480), (698, 960), (700, 640), (704, 320), (1052, -480), (1059, 160), (1061, -240), (1219, -960), (1223, -480), (1226, 320), (1227, 160), (1251, 5)]

def reductionPivot1271 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound1271 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode617).moment H =
      Integer.Sparse.eval reductionProjection1271 (momentVector H) := by
  have heq : reductionPivot1271 = (fun u v => (normalNode617).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode617).moment H = injectiveMoment H reductionPivot1271 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode617).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1271 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1271 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1271 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1486, reductionProjection834, reductionProjection841, reductionProjection838, oldProjection1513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1271 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1271 (1 : Fin 5)) = (normalNode699).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1271 (2 : Fin 5)) = (normalNode710).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1271 (3 : Fin 5)) = canonicalInput1664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection838 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1664 hH))).trans (reductionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1271 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1271 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode617).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1271 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode617).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1271 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 144, 1440] ![1, 1, 1, 10, 1] reductionProjection1271 ![oldProjection1486, reductionProjection834, reductionProjection841, reductionProjection838, oldProjection1513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1272 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -180), (20, 5), (94, 150), (174, 720), (241, 400), (243, 80), (247, 480), (697, -1200), (698, 800), (1052, -480), (1059, 160), (1219, -480), (1223, -240), (1226, 160), (1227, 320), (1251, -130)]

def reductionPivot1272 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound1272 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode618).moment H =
      Integer.Sparse.eval reductionProjection1272 (momentVector H) := by
  have heq : reductionPivot1272 = (fun u v => (normalNode618).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode618).moment H = injectiveMoment H reductionPivot1272 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode618).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1272 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1272 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1272 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2578, oldProjection1510, oldProjection1512, oldProjection1513, oldProjection2823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1272 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1120 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2578 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1120 hH))).trans (oldProjectionSound2578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1272 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1272 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1512⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1272 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1272 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1244 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2823 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1272 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1244 hH))).trans (oldProjectionSound2823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode618).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1272 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode618).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1272 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection1272 ![oldProjection2578, oldProjection1510, oldProjection1512, oldProjection1513, oldProjection2823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1273 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (94, -45), (241, -320), (243, -80), (247, -240), (326, -720), (327, -720), (698, -80), (1251, -15)]

def reductionPivot1273 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1273 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3225).moment H =
      Integer.Sparse.eval reductionProjection1273 (momentVector H) := by
  have heq : reductionPivot1273 = (fun u v => (normalNode3225).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3225).moment H = injectiveMoment H reductionPivot1273 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3225).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1273 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1273 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1273 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection464, oldProjection1113, oldProjection465, oldProjection786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1273 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1273 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2986 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2986 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1273 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection465 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3023 hH))).trans (oldProjectionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1273 (3 : Fin 4)) = canonicalInput6348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1273 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6348 hH))).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3225).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1273 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3225).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1273 (j : Fin 4)))
      2 1440 1440 2 ![1, 144, 1, 360] ![1440, 10, 1440, 4] reductionProjection1273 ![oldProjection464, oldProjection1113, oldProjection465, oldProjection786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1274 : Integer.Sparse (Fin 1613) := [(168, 1)]

theorem reductionSound1274 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code168).moment H =
      Integer.Sparse.eval reductionProjection1274 (momentVector H) := by
  have hc : coordinates (168 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code168) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1274, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1275 : Integer.Sparse (Fin 1613) := [(490, 1)]

theorem reductionSound1275 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code490).moment H =
      Integer.Sparse.eval reductionProjection1275 (momentVector H) := by
  have hc : coordinates (490 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code490) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1275, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1276 : Integer.Sparse (Fin 1613) := [(0, 1), (478, -720), (489, -720), (490, -720), (697, 240), (698, -80), (1219, 240), (1227, -80), (1251, 15)]

def reductionPivot1276 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound1276 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode714).moment H =
      Integer.Sparse.eval reductionProjection1276 (momentVector H) := by
  have heq : reductionPivot1276 = (fun u v => (normalNode714).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode714).moment H = injectiveMoment H reductionPivot1276 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode714).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1276 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1276 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1276 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection490, oldProjection484, oldProjection815, reductionProjection1275] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1276 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1276 (1 : Fin 4)) = canonicalInput1739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1739 hH))).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1276 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1267 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1267 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1276 (3 : Fin 4)) = canonicalInput1708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1275 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1276 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1708 hH))).trans (reductionSound1275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode714).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1276 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode714).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1276 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection1276 ![oldProjection490, oldProjection484, oldProjection815, reductionProjection1275]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1277 : Integer.Sparse (Fin 1613) := [(0, -12), (19, -140), (94, 185), (168, -1440), (241, 400), (243, 80), (247, 480), (326, 720), (327, 720), (478, 720), (489, 720), (490, 720), (549, 720), (697, -1200), (698, 480), (704, 80), (1219, -240), (1227, 80), (1251, 5), (1323, -240), (1389, -240)]

def reductionPivot1277 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1277 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode619).moment H =
      Integer.Sparse.eval reductionProjection1277 (momentVector H) := by
  have heq : reductionPivot1277 = (fun u v => (normalNode619).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode619).moment H = injectiveMoment H reductionPivot1277 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode619).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1277 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1277 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1277 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1273, reductionProjection1274, oldProjection2161, reductionProjection1088, reductionProjection1276] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1277 (0 : Fin 5)) = canonicalInput1313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1273 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1313 hH))).trans (reductionSound1273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1277 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code168).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1274 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1277 (2 : Fin 5)) = canonicalInput1663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2161 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1663 hH))).trans (oldProjectionSound2161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1277 (3 : Fin 5)) = canonicalInput1667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1088 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1088 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1667 hH))).trans (reductionSound1088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1277 (4 : Fin 5)) = (normalNode714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1276 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1277 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode619).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1277 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode619).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1277 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1, 720, 1440, 1440] ![1, 1440, 2, 1, 1] reductionProjection1277 ![reductionProjection1273, reductionProjection1274, oldProjection2161, reductionProjection1088, reductionProjection1276]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1278 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -180), (94, 130), (143, 720), (169, 1440), (174, 1440), (179, 1440), (241, 240), (247, 320), (697, -1440), (698, 640), (1219, -960), (1227, 320), (1251, 15)]

def reductionPivot1278 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound1278 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode620).moment H =
      Integer.Sparse.eval reductionProjection1278 (momentVector H) := by
  have heq : reductionPivot1278 = (fun u v => (normalNode620).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode620).moment H = injectiveMoment H reductionPivot1278 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode620).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1278 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1278 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1278 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1487, reductionProjection893, oldProjection1513, reductionProjection893, oldProjection1513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1278 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1487⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1487 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1278 (1 : Fin 5)) = (normalNode700).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection893 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1278 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1278 (3 : Fin 5)) = canonicalInput1668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection893 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1668 hH))).trans (reductionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1278 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1246 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1278 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1246 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode620).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1278 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode620).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1278 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection1278 ![oldProjection1487, reductionProjection893, oldProjection1513, reductionProjection893, oldProjection1513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1279 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (82, 480), (94, -5), (238, 240), (241, -80), (243, -80), (698, -80), (1058, 480), (1223, 480), (1250, -60), (1251, 15)]

def reductionPivot1279 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound1279 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode835).moment H =
      Integer.Sparse.eval reductionProjection1279 (momentVector H) := by
  have heq : reductionPivot1279 = (fun u v => (normalNode835).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode835).moment H = injectiveMoment H reductionPivot1279 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode835).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1279 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1279 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1279 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1108, reductionProjection1148, reductionProjection1210, oldProjection1052] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1279 (0 : Fin 4)) = canonicalInput1521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1108 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1521 hH))).trans (oldProjectionSound1108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1279 (1 : Fin 4)) = canonicalInput1872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1148 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1872 hH))).trans (reductionSound1148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1279 (2 : Fin 4)) = canonicalInput1908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1210 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1908 hH))).trans (reductionSound1210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1279 (3 : Fin 4)) = canonicalInput1914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1279 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1914 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode835).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1279 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode835).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1279 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 3, 720] ![10, 160, 480, 2] reductionProjection1279 ![oldProjection1108, reductionProjection1148, reductionProjection1210, oldProjection1052]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

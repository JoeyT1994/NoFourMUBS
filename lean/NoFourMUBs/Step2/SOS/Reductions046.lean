import NoFourMUBs.Step2.SOS.Canonical014
import NoFourMUBs.Step2.SOS.Canonical015
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical030
import NoFourMUBs.Step2.SOS.Canonical031
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical154
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical429
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical163
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical164
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical74
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical82
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1472 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (55, -480), (79, -480), (93, 180), (94, 10), (690, -240), (691, -480), (696, -480), (698, 160), (1050, -480), (1052, -240), (1058, -480), (1226, 160), (1250, 120), (1251, 45)]

def reductionPivot1472 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]

theorem reductionSound1472 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode768).moment H =
      Integer.Sparse.eval reductionProjection1472 (momentVector H) := by
  have heq : reductionPivot1472 = (fun u v => (normalNode768).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode768).moment H = injectiveMoment H reductionPivot1472 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode768).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1472 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1472 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1472 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection544, oldProjection1956, oldProjection1052, oldProjection1052, reductionProjection1298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1472 (0 : Fin 5)) = (normalNode279).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection544 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1472 (1 : Fin 5)) = canonicalInput1856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1956 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1856 hH))).trans (oldProjectionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1472 (2 : Fin 5)) = canonicalInput1957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1957 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1472 (3 : Fin 5)) = canonicalInput1979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1979 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1472 (4 : Fin 5)) = canonicalInput1981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1298 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1472 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1981 hH))).trans (reductionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode768).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1472 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode768).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1472 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 1440] ![1, 1, 2, 2, 1] reductionProjection1472 ![reductionProjection544, oldProjection1956, oldProjection1052, oldProjection1052, reductionProjection1298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1473 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 240), (76, 240), (94, -10), (241, -80), (579, -720), (698, -240), (1050, 240), (1055, 240), (1058, 240), (1221, 240), (1226, -80), (1227, -80), (1251, 45)]

def reductionPivot1473 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -1, 1, -2]]

theorem reductionSound1473 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode881).moment H =
      Integer.Sparse.eval reductionProjection1473 (momentVector H) := by
  have heq : reductionPivot1473 = (fun u v => (normalNode881).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode881).moment H = injectiveMoment H reductionPivot1473 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode881).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1473 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1473 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1473 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection829, reductionProjection1376, oldProjection825, oldProjection828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1473 (0 : Fin 4)) = canonicalInput1673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection829 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1673 hH))).trans (oldProjectionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1473 (1 : Fin 4)) = canonicalInput2049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2049 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1473 (2 : Fin 4)) = canonicalInput2095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2095 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1473 (3 : Fin 4)) = canonicalInput2099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1473 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2099 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode881).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1473 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode881).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1473 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 3, 720] ![20, 1440, 480, 2] reductionProjection1473 ![oldProjection829, reductionProjection1376, oldProjection825, oldProjection828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1474 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -20), (72, -240), (76, -240), (94, 50), (241, 240), (455, 720), (579, 720), (690, -240), (691, -480), (694, -720), (698, 560), (1044, -240), (1047, -240), (1050, -960), (1055, -720), (1058, -720), (1059, 80), (1221, -240), (1226, 80), (1227, 160), (1250, 180), (1251, -15)]

def reductionPivot1474 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]

theorem reductionSound1474 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode769).moment H =
      Integer.Sparse.eval reductionProjection1474 (momentVector H) := by
  have heq : reductionPivot1474 = (fun u v => (normalNode769).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode769).moment H = injectiveMoment H reductionPivot1474 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode769).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1474 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1474 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1474 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection545, oldProjection2035, oldProjection1059, oldProjection1518, reductionProjection1473] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1474 (0 : Fin 5)) = (normalNode280).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection545 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1474 (1 : Fin 5)) = canonicalInput1857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2035 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1857 hH))).trans (oldProjectionSound2035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1474 (2 : Fin 5)) = canonicalInput1958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1958 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1474 (3 : Fin 5)) = canonicalInput1980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1980 hH))).trans (oldProjectionSound1518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1474 (4 : Fin 5)) = canonicalInput1983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1473 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1474 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1983 hH))).trans (reductionSound1473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode769).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1474 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode769).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1474 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 1440, 1440] ![5, 1, 10, 1, 1] reductionProjection1474 ![reductionProjection545, oldProjection2035, oldProjection1059, oldProjection1518, reductionProjection1473]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1475 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -30), (698, -40), (1143, -360), (1250, -90), (1251, 5), (1321, 120), (1323, 120), (1389, 120)]

def reductionPivot1475 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]

theorem reductionSound1475 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode886).moment H =
      Integer.Sparse.eval reductionProjection1475 (momentVector H) := by
  have heq : reductionPivot1475 = (fun u v => (normalNode886).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode886).moment H = injectiveMoment H reductionPivot1475 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode886).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1475 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1475 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1475 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1332, reductionProjection1381, oldProjection1253, oldProjection1331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1475 (0 : Fin 4)) = canonicalInput1678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1332 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1678 hH))).trans (oldProjectionSound1332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1475 (1 : Fin 4)) = canonicalInput2054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2054 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1475 (2 : Fin 4)) = canonicalInput2107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2107 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1475 (3 : Fin 4)) = canonicalInput2108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1475 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2108 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode886).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1475 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode886).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1475 (j : Fin 4)))
      2 720 720 2 ![360, 1, 720, 720] ![2, 720, 1, 1] reductionProjection1475 ![oldProjection1332, reductionProjection1381, oldProjection1253, oldProjection1331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1476 : Integer.Sparse (Fin 1613) := [(19, -32), (20, 1), (93, 48), (94, 34), (247, 16), (694, -96), (696, -48), (698, 48), (704, 16), (1055, -96), (1058, -48), (1143, 144), (1227, 16), (1250, 96), (1251, -15), (1319, -144), (1321, -48), (1323, -48), (1388, -96), (1389, -48)]

def reductionPivot1476 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound1476 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode770).moment H =
      Integer.Sparse.eval reductionProjection1476 (momentVector H) := by
  have heq : reductionPivot1476 = (fun u v => (normalNode770).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode770).moment H = injectiveMoment H reductionPivot1476 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode770).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1476 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1476 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1476 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection500, oldProjection2338, oldProjection1253, reductionProjection1475, oldProjection1520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1476 (0 : Fin 5)) = (normalNode283).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection500 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1476 (1 : Fin 5)) = canonicalInput1858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2338 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1858 hH))).trans (oldProjectionSound2338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1476 (2 : Fin 5)) = canonicalInput1959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1959 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1476 (3 : Fin 5)) = canonicalInput1984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1475 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1984 hH))).trans (reductionSound1475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1476 (4 : Fin 5)) = canonicalInput1988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1476 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1988 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode770).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1476 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode770).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1476 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 720, 720, 288] ![1, 1, 2, 2, 5] reductionProjection1476 ![reductionProjection500, oldProjection2338, oldProjection1253, reductionProjection1475, oldProjection1520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1477 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -120), (20, 15), (62, -480), (87, -480), (93, 180), (94, 15), (243, 160), (694, -240), (696, -240), (698, 480), (699, -240), (1047, -480), (1055, -480), (1058, -1440), (1219, -240), (1226, 320), (1227, 160), (1250, 240), (1251, -60), (1321, -480)]

def reductionPivot1477 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound1477 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode771).moment H =
      Integer.Sparse.eval reductionProjection1477 (momentVector H) := by
  have heq : reductionPivot1477 = (fun u v => (normalNode771).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode771).moment H = injectiveMoment H reductionPivot1477 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode771).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1477 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1477 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1477 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection552, oldProjection2336, oldProjection1052, reductionProjection1311, reductionProjection1300] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1477 (0 : Fin 5)) = (normalNode284).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection552 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1477 (1 : Fin 5)) = canonicalInput1859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2336 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1859 hH))).trans (oldProjectionSound2336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1477 (2 : Fin 5)) = canonicalInput1960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1960 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1477 (3 : Fin 5)) = canonicalInput1985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1985 hH))).trans (reductionSound1311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1477 (4 : Fin 5)) = canonicalInput1989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1300 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1477 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1989 hH))).trans (reductionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode771).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1477 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode771).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1477 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 72] ![1, 1, 2, 1, 20] reductionProjection1477 ![reductionProjection552, oldProjection2336, oldProjection1052, reductionProjection1311, reductionProjection1300]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1478 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -20), (94, 95), (247, 240), (488, 720), (616, 720), (694, -720), (697, -240), (698, 160), (1047, -240), (1055, -960), (1058, -480), (1227, 160), (1250, 300), (1251, -110), (1319, -960), (1388, -720)]

def reductionPivot1478 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound1478 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode772).moment H =
      Integer.Sparse.eval reductionProjection1478 (momentVector H) := by
  have heq : reductionPivot1478 = (fun u v => (normalNode772).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode772).moment H = injectiveMoment H reductionPivot1478 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode772).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1478 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1478 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 360, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1478 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection554, oldProjection2337, oldProjection1084, reductionProjection1290, oldProjection1520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1478 (0 : Fin 5)) = (normalNode285).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection554 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection554 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1478 (1 : Fin 5)) = canonicalInput1861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2337 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1861 hH))).trans (oldProjectionSound2337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1478 (2 : Fin 5)) = canonicalInput1961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1084 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1961 hH))).trans (oldProjectionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1478 (3 : Fin 5)) = canonicalInput1987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1290 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1987 hH))).trans (reductionSound1290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1478 (4 : Fin 5)) = canonicalInput1990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1478 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1990 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode772).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1478 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode772).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1478 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 360, 288, 288] ![2, 2, 4, 5, 5] reductionProjection1478 ![reductionProjection554, oldProjection2337, oldProjection1084, reductionProjection1290, oldProjection1520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1479 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -22), (20, 2), (93, 24), (94, 3), (241, 8), (243, 16), (691, -48), (698, 56), (699, -24), (700, 8), (704, 8), (1047, -72), (1050, -48), (1055, -48), (1058, -192), (1059, 8), (1116, 72), (1226, 24), (1250, 42), (1251, -2), (1321, -72), (1323, -24)]

def reductionPivot1479 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1479 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode773).moment H =
      Integer.Sparse.eval reductionProjection1479 (momentVector H) := by
  have heq : reductionPivot1479 = (fun u v => (normalNode773).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode773).moment H = injectiveMoment H reductionPivot1479 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode773).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1479 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1479 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1479 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection466, oldProjection2336, oldProjection1518, reductionProjection1304, reductionProjection1311] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1479 (0 : Fin 5)) = (normalNode288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection466 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1479 (1 : Fin 5)) = canonicalInput1864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2336 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1864 hH))).trans (oldProjectionSound2336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1479 (2 : Fin 5)) = canonicalInput1997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1997 hH))).trans (oldProjectionSound1518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1479 (3 : Fin 5)) = canonicalInput2006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1304 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2006 hH))).trans (reductionSound1304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1479 (4 : Fin 5)) = canonicalInput2008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1479 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2008 hH))).trans (reductionSound1311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode773).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1479 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode773).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1479 (j : Fin 5)))
      1 144 1440 10 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection1479 ![reductionProjection466, oldProjection2336, oldProjection1518, reductionProjection1304, reductionProjection1311]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1480 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (72, 240), (76, 240), (94, -5), (698, -160), (1058, 480), (1250, -60), (1251, -20), (1321, 480), (1323, 240)]

def reductionPivot1480 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound1480 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode904).moment H =
      Integer.Sparse.eval reductionProjection1480 (momentVector H) := by
  have heq : reductionPivot1480 = (fun u v => (normalNode904).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode904).moment H = injectiveMoment H reductionPivot1480 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode904).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1480 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1480 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1480 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection948, oldProjection1012, oldProjection1052, oldProjection1073] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1480 (0 : Fin 4)) = canonicalInput1751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1751 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1480 (1 : Fin 4)) = canonicalInput2184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2184 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1480 (2 : Fin 4)) = canonicalInput2186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2186 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1480 (3 : Fin 4)) = canonicalInput2187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1480 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2187 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode904).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1480 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode904).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1480 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 720, 720] ![2, 10, 2, 2] reductionProjection1480 ![oldProjection948, oldProjection1012, oldProjection1052, oldProjection1073]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1481 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -220), (20, 20), (72, -480), (76, -480), (93, 300), (94, 95), (241, 80), (691, -480), (698, 400), (1044, -240), (1047, -480), (1050, -480), (1055, -480), (1058, -1440), (1250, 480), (1321, -960), (1323, -480)]

def reductionPivot1481 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound1481 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode774).moment H =
      Integer.Sparse.eval reductionProjection1481 (momentVector H) := by
  have heq : reductionPivot1481 = (fun u v => (normalNode774).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode774).moment H = injectiveMoment H reductionPivot1481 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode774).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1481 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1481 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1481 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection507, oldProjection1956, oldProjection1521, reductionProjection1480, reductionProjection1480] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1481 (0 : Fin 5)) = (normalNode290).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection507 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1481 (1 : Fin 5)) = canonicalInput1865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1956 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1865 hH))).trans (oldProjectionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1481 (2 : Fin 5)) = canonicalInput2001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2001 hH))).trans (oldProjectionSound1521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1481 (3 : Fin 5)) = canonicalInput2009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1480 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2009 hH))).trans (reductionSound1480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1481 (4 : Fin 5)) = canonicalInput2011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1480 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1481 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2011 hH))).trans (reductionSound1480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode774).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1481 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode774).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1481 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection1481 ![reductionProjection507, oldProjection1956, oldProjection1521, reductionProjection1480, reductionProjection1480]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1482 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 120), (20, -5), (93, -240), (94, -70), (1250, -300), (1251, -25), (1321, 240), (1323, 240)]

def reductionPivot1482 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]

theorem reductionSound1482 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode775).moment H =
      Integer.Sparse.eval reductionProjection1482 (momentVector H) := by
  have heq : reductionPivot1482 = (fun u v => (normalNode775).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode775).moment H = injectiveMoment H reductionPivot1482 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode775).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1482 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1482 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1482 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection473, oldProjection1219, reductionProjection1215, oldProjection1253] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1482 (0 : Fin 4)) = canonicalInput939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection473 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound939 hH))).trans (reductionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1482 (1 : Fin 4)) = canonicalInput1867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1219 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1867 hH))).trans (oldProjectionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1482 (2 : Fin 4)) = canonicalInput2014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1215 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2014 hH))).trans (reductionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1482 (3 : Fin 4)) = canonicalInput2017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1482 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2017 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode775).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1482 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode775).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1482 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 72, 720] ![10, 2, 20, 2] reductionProjection1482 ![reductionProjection473, oldProjection1219, reductionProjection1215, oldProjection1253]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1483 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (20, -15), (93, -180), (94, -5), (699, 240), (1058, 240), (1250, -180), (1251, -20), (1321, 480)]

def reductionPivot1483 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]

theorem reductionSound1483 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode776).moment H =
      Integer.Sparse.eval reductionProjection1483 (momentVector H) := by
  have heq : reductionPivot1483 = (fun u v => (normalNode776).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode776).moment H = injectiveMoment H reductionPivot1483 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode776).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1483 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1483 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1483 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection573, oldProjection1205, reductionProjection1218, oldProjection1052] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1483 (0 : Fin 4)) = canonicalInput940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection573 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection573 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound940 hH))).trans (reductionSound573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1483 (1 : Fin 4)) = canonicalInput1868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1205 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1868 hH))).trans (oldProjectionSound1205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1483 (2 : Fin 4)) = canonicalInput2015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2015 hH))).trans (reductionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1483 (3 : Fin 4)) = canonicalInput2018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1483 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2018 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode776).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1483 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode776).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1483 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 720] ![10, 2, 10, 2] reductionProjection1483 ![reductionProjection573, oldProjection1205, reductionProjection1218, oldProjection1052]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1484 : Integer.Sparse (Fin 1613) := [(72, -1), (79, -1), (81, -1)]

def reductionPivot1484 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 3, -1], ![1, -2, -1, 2], ![2, 2, -2, -2]]

theorem reductionSound1484 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6981).moment H =
      Integer.Sparse.eval reductionProjection1484 (momentVector H) := by
  have heq : reductionPivot1484 = (fun u v => (normalNode6981).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6981).moment H = injectiveMoment H reductionPivot1484 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6981).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6981).entries)).symm
  have hshape : reductionPivot1484 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1484 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1484 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection101, oldProjection110, oldProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1484 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw586 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1484 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1484 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical586 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1484 (1 : Fin 3)) = canonicalInput9528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1484 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1484 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9528 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1484 (2 : Fin 3)) = canonicalInput9613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1484 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1484 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9613 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6981).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1484 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6981).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1484 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1484 ![oldProjection101, oldProjection110, oldProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1485 : Integer.Sparse (Fin 1613) := [(0, 2), (72, 240), (79, 240), (81, 240), (94, -5), (579, -720), (698, -240), (1050, 240), (1058, 240), (1059, -80), (1221, 240), (1226, -80), (1227, -80), (1251, 45)]

def reductionPivot1485 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound1485 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode923).moment H =
      Integer.Sparse.eval reductionProjection1485 (momentVector H) := by
  have heq : reductionPivot1485 = (fun u v => (normalNode923).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode923).moment H = injectiveMoment H reductionPivot1485 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode923).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1485 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1485 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 3, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1485 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1111, reductionProjection1484, reductionProjection1376, oldProjection831] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1485 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2397 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2397 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1485 (1 : Fin 4)) = canonicalInput2156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1484 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2156 hH))).trans (reductionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1485 (2 : Fin 4)) = canonicalInput2049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2049 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1485 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1304 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1485 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1304 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode923).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1485 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode923).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1485 (j : Fin 4)))
      2 1440 1440 2 ![720, 3, 1, 720] ![2, 480, 1440, 2] reductionProjection1485 ![oldProjection1111, reductionProjection1484, reductionProjection1376, oldProjection831]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1486 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -20), (55, -240), (72, -240), (79, -480), (81, -240), (94, 45), (241, 80), (455, 720), (579, 720), (690, -240), (696, -240), (697, -480), (698, 560), (1044, -240), (1050, -960), (1052, -480), (1055, -240), (1058, -720), (1059, 240), (1221, -240), (1226, 160), (1227, 80), (1250, 180), (1251, -15)]

def reductionPivot1486 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -2, 0]]

theorem reductionSound1486 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode777).moment H =
      Integer.Sparse.eval reductionProjection1486 (momentVector H) := by
  have heq : reductionPivot1486 = (fun u v => (normalNode777).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode777).moment H = injectiveMoment H reductionPivot1486 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode777).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1486 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1486 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1486 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection559, oldProjection1522, oldProjection831, oldProjection1518, reductionProjection1485] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1486 (0 : Fin 5)) = (normalNode296).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection559 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1486 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1522⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1522 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1486 (2 : Fin 5)) = canonicalInput2064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2064 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1486 (3 : Fin 5)) = canonicalInput2078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2078 hH))).trans (oldProjectionSound1518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1486 (4 : Fin 5)) = canonicalInput2080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1485 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1486 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2080 hH))).trans (reductionSound1485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode777).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1486 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode777).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1486 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection1486 ![reductionProjection559, oldProjection1522, oldProjection831, oldProjection1518, reductionProjection1485]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1487 : Integer.Sparse (Fin 1613) := [(0, -1), (62, -240), (87, -480), (94, 35), (412, 720), (546, 720), (638, 720), (694, -240), (697, -480), (698, 640), (699, -240), (1047, -240), (1055, -720), (1058, -960), (1219, -480), (1226, 240), (1227, 400), (1250, 120), (1251, -120), (1321, -240), (1389, -240)]

def reductionPivot1487 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound1487 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode778).moment H =
      Integer.Sparse.eval reductionProjection1487 (momentVector H) := by
  have heq : reductionPivot1487 = (fun u v => (normalNode778).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode778).moment H = injectiveMoment H reductionPivot1487 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode778).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1487 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1487 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1487 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection560, reductionProjection1386, oldProjection828, reductionProjection1326, reductionProjection896] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1487 (0 : Fin 5)) = (normalNode298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection560 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1487 (1 : Fin 5)) = (normalNode893).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1487 (2 : Fin 5)) = canonicalInput2065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2065 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1487 (3 : Fin 5)) = canonicalInput2083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2083 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1487 (4 : Fin 5)) = canonicalInput2085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1487 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2085 hH))).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode778).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1487 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode778).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1487 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 720] ![1, 1, 2, 1, 2] reductionProjection1487 ![reductionProjection560, reductionProjection1386, oldProjection828, reductionProjection1326, reductionProjection896]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1488 : Integer.Sparse (Fin 1613) := [(0, -4), (53, -120), (72, -240), (79, -240), (94, -5), (241, 80), (243, 80), (408, 360), (541, 360), (616, 360), (691, -120), (694, -120), (697, -240), (698, 520), (699, -120), (700, 80), (1050, -600), (1052, -240), (1055, -240), (1058, -720), (1059, 200), (1221, -240), (1226, 120), (1227, 160), (1250, 60), (1251, -85), (1321, -120), (1389, -120)]

def reductionPivot1488 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound1488 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode779).moment H =
      Integer.Sparse.eval reductionProjection1488 (momentVector H) := by
  have heq : reductionPivot1488 = (fun u v => (normalNode779).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode779).moment H = injectiveMoment H reductionPivot1488 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode779).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1488 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1488 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 144, 1440, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1488 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection562, oldProjection1522, reductionProjection1412, oldProjection2289, oldProjection2347] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1488 (0 : Fin 5)) = (normalNode300).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection562 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1488 (1 : Fin 5)) = canonicalInput1922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1522 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1922 hH))).trans (oldProjectionSound1522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1488 (2 : Fin 5)) = canonicalInput2069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2069 hH))).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1488 (3 : Fin 5)) = canonicalInput2092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2289 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2092 hH))).trans (oldProjectionSound2289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1488 (4 : Fin 5)) = canonicalInput2093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2347 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1488 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2093 hH))).trans (oldProjectionSound2347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode779).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1488 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode779).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1488 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 144, 1440, 96] ![1, 1, 10, 1, 15] reductionProjection1488 ![reductionProjection562, oldProjection1522, reductionProjection1412, oldProjection2289, oldProjection2347]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1489 : Integer.Sparse (Fin 1613) := [(53, 48), (72, 48), (79, 96), (94, -1), (691, 48), (698, -16), (1050, 96), (1052, 96), (1058, 48), (1221, 48), (1226, -16), (1251, 3)]

def reductionPivot1489 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, 0, 1, -3]]

theorem reductionSound1489 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode780).moment H =
      Integer.Sparse.eval reductionProjection1489 (momentVector H) := by
  have heq : reductionPivot1489 = (fun u v => (normalNode780).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode780).moment H = injectiveMoment H reductionPivot1489 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode780).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1489 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1489 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 144, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1489 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection546, reductionProjection886, oldProjection841, oldProjection825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1489 (0 : Fin 4)) = canonicalInput954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection546 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound954 hH))).trans (reductionSound546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1489 (1 : Fin 4)) = canonicalInput1923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection886 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1923 hH))).trans (reductionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1489 (2 : Fin 4)) = canonicalInput2070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2070 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1489 (3 : Fin 4)) = canonicalInput2095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1489 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2095 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode780).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1489 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode780).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1489 (j : Fin 4)))
      2 288 288 2 ![3, 3, 144, 3] ![96, 96, 2, 96] reductionProjection1489 ![reductionProjection546, reductionProjection886, oldProjection841, oldProjection825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1490 : Integer.Sparse (Fin 1613) := [(0, 3), (72, 240), (79, 240), (81, 240), (94, -10), (597, -720), (698, -160), (1058, 240), (1226, -80), (1251, -5), (1321, 240)]

def reductionPivot1490 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound1490 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode943).moment H =
      Integer.Sparse.eval reductionProjection1490 (momentVector H) := by
  have heq : reductionPivot1490 = (fun u v => (normalNode943).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode943).moment H = injectiveMoment H reductionPivot1490 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode943).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1490 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1490 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1490 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1013, oldProjection1012, oldProjection841, reductionProjection1380] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1490 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2499 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2499 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1490 (1 : Fin 4)) = canonicalInput2192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2192 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1490 (2 : Fin 4)) = canonicalInput2181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2181 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1490 (3 : Fin 4)) = canonicalInput2179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1490 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2179 hH))).trans (reductionSound1380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode943).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1490 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode943).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1490 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 1] ![2, 10, 10, 1440] reductionProjection1490 ![oldProjection1013, oldProjection1012, oldProjection841, reductionProjection1380]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1491 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (20, 2), (55, -96), (72, -96), (79, -192), (81, -96), (93, 12), (94, -1), (243, 32), (597, 288), (698, 144), (1044, -48), (1047, -96), (1050, -96), (1052, -96), (1055, -96), (1058, -288), (1059, 16), (1226, 96), (1227, 32), (1250, 24), (1251, -18), (1321, -96)]

def reductionPivot1491 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound1491 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode781).moment H =
      Integer.Sparse.eval reductionProjection1491 (momentVector H) := by
  have heq : reductionPivot1491 = (fun u v => (normalNode781).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode781).moment H = injectiveMoment H reductionPivot1491 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode781).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1491 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1491 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1491 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection563, reductionProjection1298, oldProjection1523, reductionProjection1490, reductionProjection1490] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1491 (0 : Fin 5)) = (normalNode303).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection563 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1491 (1 : Fin 5)) = canonicalInput1925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1298 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1925 hH))).trans (reductionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1491 (2 : Fin 5)) = canonicalInput2088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2088 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1491 (3 : Fin 5)) = (normalNode943).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1490 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1491 (4 : Fin 5)) = canonicalInput2103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1490 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1491 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2103 hH))).trans (reductionSound1490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode781).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1491 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode781).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1491 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection1491 ![reductionProjection563, reductionProjection1298, oldProjection1523, reductionProjection1490, reductionProjection1490]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1492 : Integer.Sparse (Fin 1613) := [(0, 1), (62, 240), (87, 480), (698, -160), (1047, 240), (1055, 480), (1058, 480), (1219, 480), (1226, -80), (1227, -160), (1251, 15)]

def reductionPivot1492 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound1492 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode782).moment H =
      Integer.Sparse.eval reductionProjection1492 (momentVector H) := by
  have heq : reductionPivot1492 = (fun u v => (normalNode782).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode782).moment H = injectiveMoment H reductionPivot1492 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode782).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1492 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1492 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1492 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection83, reductionProjection795, reductionProjection513, oldProjection828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1492 (0 : Fin 4)) = canonicalInput961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound961 hH))).trans (reductionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1492 (1 : Fin 4)) = canonicalInput1934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection795 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1934 hH))).trans (reductionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1492 (2 : Fin 4)) = canonicalInput2109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2109 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1492 (3 : Fin 4)) = canonicalInput2112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1492 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2112 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode782).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1492 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode782).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1492 (j : Fin 4)))
      2 1440 1440 2 ![3, 3, 9, 720] ![480, 480, 160, 2] reductionProjection1492 ![reductionProjection83, reductionProjection795, reductionProjection513, oldProjection828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1493 : Integer.Sparse (Fin 1613) := [(0, -3), (62, -480), (82, -240), (85, -240), (87, -240), (90, 160), (94, 35), (164, 720), (206, 720), (593, 720), (698, 240), (699, -240), (1058, -240), (1226, 240), (1227, 80), (1251, 10), (1321, -240)]

def reductionPivot1493 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound1493 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode783).moment H =
      Integer.Sparse.eval reductionProjection1493 (momentVector H) := by
  have heq : reductionPivot1493 = (fun u v => (normalNode783).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode783).moment H = injectiveMoment H reductionPivot1493 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode783).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1493 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1493 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 9, 9, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1493 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection565, reductionProjection513, reductionProjection513, reductionProjection1323, reductionProjection1315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1493 (0 : Fin 5)) = (normalNode305).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection565 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection565 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1493 (1 : Fin 5)) = canonicalInput1945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1945 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1493 (2 : Fin 5)) = canonicalInput2113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2113 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1493 (3 : Fin 5)) = canonicalInput2115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1323 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2115 hH))).trans (reductionSound1323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1493 (4 : Fin 5)) = canonicalInput2117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1315 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1493 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2117 hH))).trans (reductionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode783).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1493 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode783).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1493 (j : Fin 5)))
      1 1440 1440 1 ![18, 9, 9, 1440, 18] ![80, 160, 160, 1, 80] reductionProjection1493 ![reductionProjection565, reductionProjection513, reductionProjection513, reductionProjection1323, reductionProjection1315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1494 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -4), (55, -48), (79, -48), (94, 7), (243, 16), (247, 16), (488, 144), (597, 144), (610, 144), (616, 144), (694, -48), (696, -48), (698, 96), (704, 16), (1047, -48), (1055, -144), (1058, -144), (1143, 144), (1226, 48), (1227, 64), (1250, 24), (1251, -26), (1388, -48)]

def reductionPivot1494 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound1494 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode784).moment H =
      Integer.Sparse.eval reductionProjection1494 (momentVector H) := by
  have heq : reductionPivot1494 = (fun u v => (normalNode784).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode784).moment H = injectiveMoment H reductionPivot1494 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode784).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1494 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1494 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 288, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1494 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection568, oldProjection828, oldProjection1520, reductionProjection1382, reductionProjection1412] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1494 (0 : Fin 5)) = (normalNode307).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection568 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection568 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1494 (1 : Fin 5)) = canonicalInput1946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1946 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1494 (2 : Fin 5)) = canonicalInput2114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2114 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1494 (3 : Fin 5)) = canonicalInput2118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2118 hH))).trans (reductionSound1382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1494 (4 : Fin 5)) = canonicalInput2121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1494 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2121 hH))).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode784).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1494 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode784).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1494 (j : Fin 5)))
      1 288 1440 5 ![1440, 720, 288, 1440, 144] ![1, 2, 5, 1, 10] reductionProjection1494 ![reductionProjection568, oldProjection828, oldProjection1520, reductionProjection1382, reductionProjection1412]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1495 : Integer.Sparse (Fin 1613) := [(0, 1), (11, 240), (19, 20), (76, 240), (79, 240), (81, 240), (94, -25), (220, -720), (229, 240), (243, -80), (698, -160), (704, -80), (1058, 240), (1226, -80), (1251, -10)]

def reductionPivot1495 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, -1, -2, 2], ![1, 0, -1, 0]]

theorem reductionSound1495 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode946).moment H =
      Integer.Sparse.eval reductionProjection1495 (momentVector H) := by
  have heq : reductionPivot1495 = (fun u v => (normalNode946).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode946).moment H = injectiveMoment H reductionPivot1495 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode946).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1495 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1495 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1495 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection823, reductionProjection1453, oldProjection841, reductionProjection1456] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1495 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2633 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2633 hH))).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1495 (1 : Fin 4)) = canonicalInput2194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1453 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2194 hH))).trans (reductionSound1453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1495 (2 : Fin 4)) = canonicalInput2181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2181 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1495 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code220).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1495 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode946).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1495 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode946).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1495 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 1] ![2, 10, 10, 1440] reductionProjection1495 ![oldProjection823, reductionProjection1453, oldProjection841, reductionProjection1456]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1496 : Integer.Sparse (Fin 1613) := [(79, 48), (94, -1), (565, -144), (570, -144), (597, -144), (698, -16), (1058, 48), (1226, -16), (1251, 3)]

def reductionPivot1496 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, -2, 1]]

theorem reductionSound1496 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode947).moment H =
      Integer.Sparse.eval reductionProjection1496 (momentVector H) := by
  have heq : reductionPivot1496 = (fun u v => (normalNode947).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode947).moment H = injectiveMoment H reductionPivot1496 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode947).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1496 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1496 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1496 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, reductionProjection1466, oldProjection841, reductionProjection1380] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1496 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2634 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2634 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1496 (1 : Fin 4)) = canonicalInput2195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2195 hH))).trans (reductionSound1466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1496 (2 : Fin 4)) = canonicalInput2182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2182 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1496 (3 : Fin 4)) = canonicalInput2179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1496 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2179 hH))).trans (reductionSound1380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode947).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1496 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode947).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1496 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection1496 ![oldProjection505, reductionProjection1466, oldProjection841, reductionProjection1380]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1497 : Integer.Sparse (Fin 1613) := [(0, -1), (11, -240), (19, -20), (20, 5), (55, -240), (76, -240), (79, -480), (81, -240), (83, -240), (94, 5), (220, 720), (229, -240), (243, 240), (565, 720), (570, 720), (597, 720), (616, 720), (621, 720), (698, 480), (704, 80), (1047, -240), (1055, -240), (1058, -720), (1060, -240), (1225, 80), (1226, 320), (1227, 240), (1251, -55)]

def reductionPivot1497 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound1497 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode785).moment H =
      Integer.Sparse.eval reductionProjection1497 (momentVector H) := by
  have heq : reductionPivot1497 = (fun u v => (normalNode785).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode785).moment H = injectiveMoment H reductionPivot1497 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode785).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1497 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1497 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 144, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1497 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection569, oldProjection841, reductionProjection1412, reductionProjection1495, reductionProjection1496] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1497 (0 : Fin 5)) = (normalNode308).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection569 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1497 (1 : Fin 5)) = canonicalInput1950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1950 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1497 (2 : Fin 5)) = canonicalInput2120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2120 hH))).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1497 (3 : Fin 5)) = (normalNode946).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1495 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1497 (4 : Fin 5)) = canonicalInput2127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1496 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1497 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2127 hH))).trans (reductionSound1496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode785).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1497 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode785).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1497 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 144, 1440, 288] ![5, 10, 10, 1, 5] reductionProjection1497 ![reductionProjection569, oldProjection841, reductionProjection1412, reductionProjection1495, reductionProjection1496]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1498 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -30), (94, 75), (241, 40), (455, 360), (546, 720), (579, 720), (694, -360), (696, -120), (698, 320), (704, 80), (1050, -240), (1055, -480), (1058, -240), (1059, 40), (1143, 720), (1227, 80), (1250, 120), (1251, -45), (1389, -240)]

def reductionPivot1498 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound1498 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode786).moment H =
      Integer.Sparse.eval reductionProjection1498 (momentVector H) := by
  have heq : reductionPivot1498 = (fun u v => (normalNode786).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode786).moment H = injectiveMoment H reductionPivot1498 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode786).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1498 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1498 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1498 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection570, oldProjection1521, oldProjection1523, reductionProjection1395, reductionProjection1395] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1498 (0 : Fin 5)) = (normalNode309).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection570 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection570 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1498 (1 : Fin 5)) = canonicalInput2001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2001 hH))).trans (oldProjectionSound1521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1498 (2 : Fin 5)) = canonicalInput2137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2137 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1498 (3 : Fin 5)) = canonicalInput2143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1395 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2143 hH))).trans (reductionSound1395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1498 (4 : Fin 5)) = canonicalInput2144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1395 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1498 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2144 hH))).trans (reductionSound1395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode786).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1498 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode786).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1498 (j : Fin 5)))
      1 720 1440 2 ![720, 1440, 1440, 1440, 1440] ![2, 1, 1, 1, 1] reductionProjection1498 ![reductionProjection570, oldProjection1521, oldProjection1523, reductionProjection1395, reductionProjection1395]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1499 : Integer.Sparse (Fin 1613) := [(0, 1), (62, 240), (87, 240), (243, -80), (593, -720), (691, 240), (698, -240), (700, -80), (1050, 240), (1058, 480), (1059, -80), (1226, -80), (1227, -80), (1251, 15)]

def reductionPivot1499 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound1499 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode787).moment H =
      Integer.Sparse.eval reductionProjection1499 (momentVector H) := by
  have heq : reductionPivot1499 = (fun u v => (normalNode787).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode787).moment H = injectiveMoment H reductionPivot1499 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode787).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1499 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1499 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1499 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection84, reductionProjection513, reductionProjection1322, oldProjection831] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1499 (0 : Fin 4)) = canonicalInput990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection84 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound990 hH))).trans (reductionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1499 (1 : Fin 4)) = canonicalInput2055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2055 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1499 (2 : Fin 4)) = canonicalInput2164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2164 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1499 (3 : Fin 4)) = canonicalInput2167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1499 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2167 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode787).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1499 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode787).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1499 (j : Fin 4)))
      2 1440 1440 2 ![9, 9, 1, 720] ![160, 160, 1440, 2] reductionProjection1499 ![reductionProjection84, reductionProjection513, reductionProjection1322, oldProjection831]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1500 : Integer.Sparse (Fin 1613) := [(0, 1), (55, 240), (79, 240), (94, 10), (243, -80), (597, -720), (698, -160), (1047, 240), (1055, 240), (1058, 480), (1226, -160), (1227, -80), (1251, 25)]

def reductionPivot1500 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound1500 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode788).moment H =
      Integer.Sparse.eval reductionProjection1500 (momentVector H) := by
  have heq : reductionPivot1500 = (fun u v => (normalNode788).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode788).moment H = injectiveMoment H reductionPivot1500 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode788).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1500 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1500 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1500 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection78, oldProjection828, reductionProjection1380, oldProjection841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1500 (0 : Fin 4)) = canonicalInput1006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection78 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1006 hH))).trans (reductionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1500 (1 : Fin 4)) = canonicalInput2151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2151 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1500 (2 : Fin 4)) = canonicalInput2179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2179 hH))).trans (reductionSound1380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1500 (3 : Fin 4)) = canonicalInput2182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1500 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2182 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode788).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1500 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode788).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1500 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 144] ![10, 2, 1440, 10] reductionProjection1500 ![reductionProjection78, oldProjection828, reductionProjection1380, oldProjection841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1501 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (59, 48), (82, 48), (94, -4), (229, 96), (238, 96), (239, 48), (240, 48), (241, -16), (243, -48), (244, -32), (698, -16), (700, -32), (1251, -3)]

def reductionPivot1501 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 3, 0, -4]]

theorem reductionSound1501 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode789).moment H =
      Integer.Sparse.eval reductionProjection1501 (momentVector H) := by
  have heq : reductionPivot1501 = (fun u v => (normalNode789).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode789).moment H = injectiveMoment H reductionPivot1501 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode789).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1501 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1501 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1501 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection571, oldProjection1014, oldProjection1192, reductionProjection1148] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1501 (0 : Fin 4)) = canonicalInput1021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection571 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection571 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1021 hH))).trans (reductionSound571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1501 (1 : Fin 4)) = canonicalInput1836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1836 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1501 (2 : Fin 4)) = canonicalInput1888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1192 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1888 hH))).trans (oldProjectionSound1192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1501 (3 : Fin 4)) = canonicalInput1889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1148 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1501 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1889 hH))).trans (reductionSound1148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode789).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1501 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode789).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1501 (j : Fin 4)))
      2 288 288 2 ![9, 144, 9, 9] ![32, 2, 32, 32] reductionProjection1501 ![reductionProjection571, oldProjection1014, oldProjection1192, reductionProjection1148]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1502 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 100), (20, -10), (93, -60), (94, -15), (229, 480), (240, 240), (704, -80), (1058, 240), (1060, 240), (1250, -60), (1251, -10), (1321, 240)]

def reductionPivot1502 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound1502 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5783).moment H =
      Integer.Sparse.eval reductionProjection1502 (momentVector H) := by
  have heq : reductionPivot1502 = (fun u v => (normalNode5783).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5783).moment H = injectiveMoment H reductionPivot1502 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5783).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1502 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1502 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1502 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1022, oldProjection1014, oldProjection895, oldProjection1205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1502 (0 : Fin 4)) = canonicalInput9869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1022 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9869 hH))).trans (reductionSound1022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1502 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5243 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5243 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1502 (2 : Fin 4)) = canonicalInput11913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection895 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11913 hH))).trans (oldProjectionSound895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1502 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5275 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1205 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1502 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5275 hH))).trans (oldProjectionSound1205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5783).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1502 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5783).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1502 (j : Fin 4)))
      2 1440 1440 2 ![36, 144, 3, 720] ![40, 10, 480, 2] reductionProjection1502 ![reductionProjection1022, oldProjection1014, oldProjection895, oldProjection1205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1503 : Integer.Sparse (Fin 1613) := [(19, 1), (704, 4), (1251, 1)]

def reductionPivot1503 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, 0, -3, 4], ![0, -1, 2, -1], ![0, 1, 2, -3]]

theorem reductionSound1503 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode9712).moment H =
      Integer.Sparse.eval reductionProjection1503 (momentVector H) := by
  have heq : reductionPivot1503 = (fun u v => (normalNode9712).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9712).moment H = injectiveMoment H reductionPivot1503 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9712).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1503 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1503 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1503 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection59, oldProjection243, oldProjection173] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1503 (0 : Fin 3)) = canonicalInput27504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1503 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection59 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1503 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection59 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27504 hH))).trans (oldProjectionSound59 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1503 (1 : Fin 3)) = canonicalInput19349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1503 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1503 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19349 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1503 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7001 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1503 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1503 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7001 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9712).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1503 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9712).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1503 (j : Fin 3)))
      3 36 144 12 ![16, 24, 48] ![9, 6, 3] reductionProjection1503 ![oldProjection59, oldProjection243, oldProjection173]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

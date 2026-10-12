import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical159
import NoFourMUBs.Step2.SOS.Canonical160
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions190
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions261
import NoFourMUBs.Step2.SOS.Reductions279
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions295
import NoFourMUBs.Step2.SOS.Reductions298
import NoFourMUBs.Step2.SOS.Reductions299
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical164
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical166
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical167
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical168
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical318
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9600 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (546, -720), (698, -80), (1058, 240), (1084, -720), (1251, -20), (1253, -720), (1321, 240)]

def reductionPivot9600 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]

theorem reductionSound9600 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5803).moment H =
      Integer.Sparse.eval reductionProjection9600 (momentVector H) := by
  have heq : reductionPivot9600 = (fun u v => (normalNode5803).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5803).moment H = injectiveMoment H reductionPivot9600 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5803).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9600 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9600 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9600 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6704, oldProjection1073, reductionProjection1427, oldProjection500] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9600 (0 : Fin 4)) = canonicalInput11814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6704 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11814 hH))).trans (reductionSound6704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9600 (1 : Fin 4)) = canonicalInput11871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11871 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9600 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1253).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9600 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5256 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9600 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5256 hH))).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5803).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9600 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5803).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9600 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection9600 ![reductionProjection6704, oldProjection1073, reductionProjection1427, oldProjection500]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9601 : Integer.Sparse (Fin 1613) := [(227, -1), (682, -1), (1321, -1)]

def reductionPivot9601 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![2, -1, 1, -2], ![-3, -1, 1, 3], ![2, 2, -2, -2]]

theorem reductionSound9601 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode11201).moment H =
      Integer.Sparse.eval reductionProjection9601 (momentVector H) := by
  have heq : reductionPivot9601 = (fun u v => (normalNode11201).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11201).moment H = injectiveMoment H reductionPivot9601 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11201).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11201).entries)).symm
  have hshape : reductionPivot9601 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9601 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9601 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection260, reductionProjection1693, oldProjection159] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9601 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10118 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9601 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9601 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10118 hH))).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9601 (1 : Fin 3)) = canonicalInput34247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9601 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9601 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34247 hH))).trans (reductionSound1693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9601 (2 : Fin 3)) = canonicalInput34254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9601 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9601 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34254 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11201).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9601 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11201).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9601 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9601 ![oldProjection260, reductionProjection1693, oldProjection159]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9602 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (93, -60), (94, 5), (227, 240), (682, 240), (1250, -60), (1251, 5), (1292, 240), (1389, 240)]

def reductionPivot9602 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound9602 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5818).moment H =
      Integer.Sparse.eval reductionProjection9602 (momentVector H) := by
  have heq : reductionPivot9602 = (fun u v => (normalNode5818).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5818).moment H = injectiveMoment H reductionPivot9602 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5818).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9602 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9602 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9602 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9542, oldProjection260, reductionProjection9601, oldProjection1331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9602 (0 : Fin 4)) = canonicalInput11835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9542 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11835 hH))).trans (reductionSound9542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9602 (1 : Fin 4)) = canonicalInput11919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11919 hH))).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9602 (2 : Fin 4)) = canonicalInput11933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9601 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11933 hH))).trans (reductionSound9601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9602 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5293 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9602 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5293 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5818).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9602 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5818).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9602 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 3, 720] ![10, 1440, 480, 2] reductionProjection9602 ![reductionProjection9542, oldProjection260, reductionProjection9601, oldProjection1331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9603 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -100), (20, 25), (81, -480), (93, 60), (94, 80), (227, -240), (229, -480), (243, 80), (546, 720), (682, -240), (698, 400), (704, 240), (1047, -240), (1055, -240), (1058, -720), (1060, -240), (1084, 720), (1226, 80), (1227, 160), (1250, 120), (1251, -15), (1253, 720), (1292, -240), (1321, -720), (1389, -480)]

def reductionPivot9603 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]

theorem reductionSound9603 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5799).moment H =
      Integer.Sparse.eval reductionProjection9603 (momentVector H) := by
  have heq : reductionPivot9603 = (fun u v => (normalNode5799).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5799).moment H = injectiveMoment H reductionPivot9603 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5799).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9603 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9603 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9603 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9599, reductionProjection9565, reductionProjection9600, oldProjection2280, reductionProjection9602] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9603 (0 : Fin 5)) = canonicalInput10220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9599 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10220 hH))).trans (reductionSound9599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9603 (1 : Fin 5)) = (normalNode5789).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9565 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9565 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9603 (2 : Fin 5)) = canonicalInput11893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9600 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11893 hH))).trans (reductionSound9600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9603 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5266 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2280 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5266 hH))).trans (oldProjectionSound2280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9603 (4 : Fin 5)) = (normalNode5818).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9602 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9603 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5799).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9603 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5799).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9603 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection9603 ![reductionProjection9599, reductionProjection9565, reductionProjection9600, oldProjection2280, reductionProjection9602]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9604 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 20), (94, -55), (243, -80), (697, 240), (698, -400), (704, -80), (1058, 240), (1226, -160), (1227, -240), (1250, -60), (1251, 55)]

def reductionPivot9604 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -2, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, -1, 2]]

theorem reductionSound9604 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11067).moment H =
      Integer.Sparse.eval reductionProjection9604 (momentVector H) := by
  have heq : reductionPivot9604 = (fun u v => (normalNode11067).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11067).moment H = injectiveMoment H reductionPivot9604 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11067).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9604 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9604 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9604 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection835, reductionProjection776, reductionProjection6098, oldProjection838] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9604 (0 : Fin 4)) = canonicalInput22775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22775 hH))).trans (oldProjectionSound835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9604 (1 : Fin 4)) = (normalNode11072).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9604 (2 : Fin 4)) = (normalNode11070).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9604 (3 : Fin 4)) = canonicalInput22665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9604 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22665 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11067).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9604 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11067).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9604 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection9604 ![oldProjection835, reductionProjection776, reductionProjection6098, oldProjection838]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9605 : Integer.Sparse (Fin 1613) := [(546, -1), (563, -1), (1253, -2)]

def reductionPivot9605 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]

theorem reductionSound9605 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5804).moment H =
      Integer.Sparse.eval reductionProjection9605 (momentVector H) := by
  have heq : reductionPivot9605 = (fun u v => (normalNode5804).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5804).moment H = injectiveMoment H reductionPivot9605 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5804).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9605 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9605 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9605 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, reductionProjection1427, oldProjection500, reductionProjection1427] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9605 (0 : Fin 4)) = canonicalInput12004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12004 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9605 (1 : Fin 4)) = canonicalInput11876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11876 hH))).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9605 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5256 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5256 hH))).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9605 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1253).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9605 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5804).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9605 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5804).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9605 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9605 ![reductionProjection1046, reductionProjection1427, oldProjection500, reductionProjection1427]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9606 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (227, 240), (682, 480), (1221, 240), (1250, -60), (1251, 10), (1257, -720), (1321, 480), (1389, 480)]

def reductionPivot9606 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, -1, 2, -2]]

theorem reductionSound9606 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5824).moment H =
      Integer.Sparse.eval reductionProjection9606 (momentVector H) := by
  have heq : reductionPivot9606 = (fun u v => (normalNode5824).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5824).moment H = injectiveMoment H reductionPivot9606 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5824).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9606 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9606 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9606 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection822, reductionProjection1423, oldProjection1331, reductionProjection9601] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9606 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5367 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection822 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5367 hH))).trans (oldProjectionSound822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9606 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1423 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9606 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5293 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5293 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9606 (3 : Fin 4)) = canonicalInput11933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9601 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9606 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11933 hH))).trans (reductionSound9601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5824).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9606 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5824).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9606 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 720, 3] ![480, 1440, 2, 480] reductionProjection9606 ![oldProjection822, reductionProjection1423, oldProjection1331, reductionProjection9601]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9607 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (81, -240), (94, 30), (197, 360), (227, -120), (229, -120), (243, 40), (546, 720), (563, 720), (682, -240), (697, -120), (698, 320), (704, 40), (1055, -120), (1058, -360), (1059, 40), (1221, -120), (1226, 80), (1227, 200), (1250, 60), (1251, -55), (1253, 1440), (1257, 360), (1321, -240), (1389, -240)]

def reductionPivot9607 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]

theorem reductionSound9607 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5800).moment H =
      Integer.Sparse.eval reductionProjection9607 (momentVector H) := by
  have heq : reductionPivot9607 = (fun u v => (normalNode5800).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5800).moment H = injectiveMoment H reductionPivot9607 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5800).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9607 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9607 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9607 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9604, reductionProjection9605, reductionProjection9605, oldProjection2233, reductionProjection9606] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9607 (0 : Fin 5)) = canonicalInput10263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9604 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10263 hH))).trans (reductionSound9604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9607 (1 : Fin 5)) = (normalNode5804).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9605 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9607 (2 : Fin 5)) = canonicalInput11921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9605 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11921 hH))).trans (reductionSound9605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9607 (3 : Fin 5)) = canonicalInput11927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2233 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11927 hH))).trans (oldProjectionSound2233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9607 (4 : Fin 5)) = (normalNode5824).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9606 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9607 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5800).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9607 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5800).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9607 (j : Fin 5)))
      1 720 1440 2 ![1440, 2, 2, 1440, 1440] ![1, 720, 720, 1, 1] reductionProjection9607 ![reductionProjection9604, reductionProjection9605, reductionProjection9605, oldProjection2233, reductionProjection9606]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9608 : Integer.Sparse (Fin 1613) := [(0, -1), (93, 60), (94, 5), (1250, -120), (1251, -10)]

def reductionPivot9608 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 0, -1], ![-2, -2, 2, 2], ![2, 2, -2, -2]]

theorem reductionSound9608 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode11047).moment H =
      Integer.Sparse.eval reductionProjection9608 (momentVector H) := by
  have heq : reductionPivot9608 = (fun u v => (normalNode11047).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11047).moment H = injectiveMoment H reductionPivot9608 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11047).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11047).entries)).symm
  have hshape : reductionPivot9608 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9608 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 4, 240] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9608 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection45, oldProjection264, oldProjection279] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9608 (0 : Fin 3)) = canonicalInput30128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9608 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection45 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9608 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection45 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30128 hH))).trans (oldProjectionSound45 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9608 (1 : Fin 3)) = canonicalInput33825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9608 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection264 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9608 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33825 hH))).trans (oldProjectionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9608 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10138 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9608 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection279 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9608 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10138 hH))).trans (oldProjectionSound279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11047).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9608 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11047).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9608 (j : Fin 3)))
      3 720 720 3 ![1, 4, 240] ![720, 180, 3] reductionProjection9608 ![oldProjection45, oldProjection264, oldProjection279]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9609 : Integer.Sparse (Fin 1613) := [(93, 1), (233, -4), (690, -4), (1250, 1)]

def reductionPivot9609 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![2, 0, 0, -2], ![2, -2, 2, -2], ![-3, 2, -2, 3]]

theorem reductionSound9609 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode11222).moment H =
      Integer.Sparse.eval reductionProjection9609 (momentVector H) := by
  have heq : reductionPivot9609 = (fun u v => (normalNode11222).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11222).moment H = injectiveMoment H reductionPivot9609 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11222).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11222).entries)).symm
  have hshape : reductionPivot9609 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9609 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![4, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9609 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection264, oldProjection162, reductionProjection1719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9609 (0 : Fin 3)) = canonicalInput33835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9609 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection264 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9609 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33835 hH))).trans (oldProjectionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9609 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10184 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9609 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection162 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9609 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10184 hH))).trans (oldProjectionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9609 (2 : Fin 3)) = canonicalInput34299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9609 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9609 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34299 hH))).trans (reductionSound1719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11222).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9609 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11222).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9609 (j : Fin 3)))
      3 12 12 3 ![4, 1, 1] ![3, 12, 12] reductionProjection9609 ![oldProjection264, oldProjection162, reductionProjection1719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9610 : Integer.Sparse (Fin 1613) := [(0, 1), (93, -60), (94, -5), (233, 120), (690, 240), (1050, 120), (1251, 10), (1254, -360)]

def reductionPivot9610 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, -2, 2], ![0, 0, 1, -1], ![2, -2, 2, -2]]

theorem reductionSound9610 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5805).moment H =
      Integer.Sparse.eval reductionProjection9610 (momentVector H) := by
  have heq : reductionPivot9610 = (fun u v => (normalNode5805).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5805).moment H = injectiveMoment H reductionPivot9610 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5805).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9610 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9610 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 12] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9610 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1377, reductionProjection9608, reductionProjection8942, reductionProjection9609] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9610 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5320 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1377 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5320 hH))).trans (oldProjectionSound1377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9610 (1 : Fin 4)) = canonicalInput11907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9608 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11907 hH))).trans (reductionSound9608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9610 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1254).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8942 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9610 (3 : Fin 4)) = canonicalInput11881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9609 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9610 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11881 hH))).trans (reductionSound9609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5805).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9610 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5805).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9610 (j : Fin 4)))
      2 720 720 2 ![720, 720, 1, 12] ![1, 1, 720, 60] reductionProjection9610 ![oldProjection1377, reductionProjection9608, reductionProjection8942, reductionProjection9609]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9611 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (690, 240), (1050, 240), (1250, -60), (1251, 10), (1254, -720), (1255, -720), (1266, -720)]

def reductionPivot9611 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, -2, 2], ![0, 0, 2, -2], ![2, -2, 1, -1]]

theorem reductionSound9611 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5806).moment H =
      Integer.Sparse.eval reductionProjection9611 (momentVector H) := by
  have heq : reductionPivot9611 = (fun u v => (normalNode5806).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5806).moment H = injectiveMoment H reductionPivot9611 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5806).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9611 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9611 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9611 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection719, oldProjection1377, reductionProjection8944, reductionProjection8942] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9611 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node719⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9611 (1 : Fin 4)) = canonicalInput11908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1377 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11908 hH))).trans (oldProjectionSound1377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9611 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1255).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8944 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9611 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1254).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8942 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9611 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5806).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9611 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5806).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9611 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection9611 ![oldProjection719, oldProjection1377, reductionProjection8944, reductionProjection8942]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9612 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (1085, -720), (1114, -720), (1250, -60), (1251, 10), (1256, -720), (1319, 240), (1388, 240)]

def reductionPivot9612 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound9612 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5807).moment H =
      Integer.Sparse.eval reductionProjection9612 (momentVector H) := by
  have heq : reductionPivot9612 = (fun u v => (normalNode5807).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5807).moment H = injectiveMoment H reductionPivot9612 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5807).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9612 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9612 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9612 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection678, oldProjection1368, reductionProjection9460, reductionProjection6854] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9612 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5331 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection678 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5331 hH))).trans (oldProjectionSound678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9612 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5276 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1368 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5276 hH))).trans (oldProjectionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9612 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1256).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9612 (3 : Fin 4)) = canonicalInput11886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6854 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9612 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11886 hH))).trans (reductionSound6854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5807).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9612 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5807).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9612 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection9612 ![oldProjection678, oldProjection1368, reductionProjection9460, reductionProjection6854]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9613 : Integer.Sparse (Fin 1613) := [(0, 1), (17, 15), (93, -60), (94, -5), (233, -120), (690, -240), (1050, -120), (1250, 30), (1251, 25), (1254, 180)]

def reductionPivot9613 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 2, -2]]

theorem reductionSound9613 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5809).moment H =
      Integer.Sparse.eval reductionProjection9613 (momentVector H) := by
  have heq : reductionPivot9613 = (fun u v => (normalNode5809).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5809).moment H = injectiveMoment H reductionPivot9613 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5809).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9613 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9613 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 720, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9613 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9547, reductionProjection9610, reductionProjection9608, reductionProjection9608, oldProjection2340] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9613 (0 : Fin 5)) = (normalNode5755).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9547 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9613 (1 : Fin 5)) = (normalNode5805).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9610 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9613 (2 : Fin 5)) = canonicalInput11901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9608 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11901 hH))).trans (reductionSound9608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9613 (3 : Fin 5)) = canonicalInput11904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9608 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11904 hH))).trans (reductionSound9608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9613 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2340⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2340 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9613 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5809).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9613 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5809).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9613 (j : Fin 5)))
      1 360 1440 4 ![1440, 720, 720, 720, 480] ![1, 2, 2, 2, 3] reductionProjection9613 ![reductionProjection9547, reductionProjection9610, reductionProjection9608, reductionProjection9608, oldProjection2340]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9614 : Integer.Sparse (Fin 1613) := [(0, 1), (32, -240), (72, -240), (93, 120), (94, -5), (233, -240), (690, -240), (1044, -480), (1050, -240), (1221, -240), (1250, -60), (1251, 130), (1254, 720), (1255, 720), (1266, 720)]

def reductionPivot9614 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, 1, -1]]

theorem reductionSound9614 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5810).moment H =
      Integer.Sparse.eval reductionProjection9614 (momentVector H) := by
  have heq : reductionPivot9614 = (fun u v => (normalNode5810).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5810).moment H = injectiveMoment H reductionPivot9614 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5810).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9614 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9614 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 480, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9614 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9549, reductionProjection9611, oldProjection1377, oldProjection2340, oldProjection2341] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9614 (0 : Fin 5)) = (normalNode5756).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9549 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9614 (1 : Fin 5)) = (normalNode5806).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9611 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9611 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9614 (2 : Fin 5)) = canonicalInput11902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1377 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11902 hH))).trans (oldProjectionSound1377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9614 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2340⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2340 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9614 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2341⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9614 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5810).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9614 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5810).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9614 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 480, 720] ![1, 1, 2, 3, 2] reductionProjection9614 ![reductionProjection9549, reductionProjection9611, oldProjection1377, oldProjection2340, oldProjection2341]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9615 : Integer.Sparse (Fin 1613) := [(0, 16), (20, 10), (93, 120), (94, 5), (225, -240), (1085, 720), (1114, 720), (1250, 120), (1251, -25), (1256, 720), (1290, -240), (1319, -720), (1321, -240), (1388, -240), (1389, -240)]

def reductionPivot9615 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound9615 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5811).moment H =
      Integer.Sparse.eval reductionProjection9615 (momentVector H) := by
  have heq : reductionPivot9615 = (fun u v => (normalNode5811).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5811).moment H = injectiveMoment H reductionPivot9615 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5811).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9615 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9615 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9615 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9551, reductionProjection9612, oldProjection1368, oldProjection2342, oldProjection2343] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9615 (0 : Fin 5)) = (normalNode5758).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9551 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9615 (1 : Fin 5)) = (normalNode5807).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9612 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9615 (2 : Fin 5)) = canonicalInput11903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1368 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11903 hH))).trans (oldProjectionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9615 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2342⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2342 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9615 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2343⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2343 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9615 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5811).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9615 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5811).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9615 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 144] ![1, 1, 2, 1, 10] reductionProjection9615 ![reductionProjection9551, reductionProjection9612, oldProjection1368, oldProjection2342, oldProjection2343]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9616 : Integer.Sparse (Fin 1613) := [(0, 1), (72, -96), (93, 12), (94, -5), (690, -144), (1044, -96), (1221, -144), (1250, -24), (1251, -14)]

def reductionPivot9616 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 0, 0]]

theorem reductionSound9616 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5815).moment H =
      Integer.Sparse.eval reductionProjection9616 (momentVector H) := by
  have heq : reductionPivot9616 = (fun u v => (normalNode5815).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5815).moment H = injectiveMoment H reductionPivot9616 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5815).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9616 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9616 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 360, 360, 360, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9616 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9552, oldProjection1027, oldProjection1027, oldProjection1027, oldProjection2345] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9616 (0 : Fin 5)) = (normalNode5759).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9552 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9616 (1 : Fin 5)) = canonicalInput11916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1027 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1027 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11916 hH))).trans (oldProjectionSound1027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9616 (2 : Fin 5)) = canonicalInput11923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1027 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1027 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11923 hH))).trans (oldProjectionSound1027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9616 (3 : Fin 5)) = canonicalInput11926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1027 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1027 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11926 hH))).trans (oldProjectionSound1027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9616 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2345⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2345 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9616 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5815).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9616 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5815).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9616 (j : Fin 5)))
      1 288 1440 5 ![480, 360, 360, 360, 360] ![3, 4, 4, 4, 4] reductionProjection9616 ![reductionProjection9552, oldProjection1027, oldProjection1027, oldProjection1027, oldProjection2345]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9617 : Integer.Sparse (Fin 1613) := [(10, -1), (72, -2)]

def reductionPivot9617 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 0, 0, 3], ![2, -2, 2, -2], ![2, 2, -2, -2]]

theorem reductionSound9617 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6214).moment H =
      Integer.Sparse.eval reductionProjection9617 (momentVector H) := by
  have heq : reductionPivot9617 = (fun u v => (normalNode6214).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6214).moment H = injectiveMoment H reductionPivot9617 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6214).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6214).entries)).symm
  have hshape : reductionPivot9617 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9617 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9617 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection24, oldProjection101, oldProjection101] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9617 (0 : Fin 3)) = canonicalInput8.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9617 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection24 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9617 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection24 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8 hH))).trans (reductionSound24 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9617 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw338 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9617 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9617 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical338 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9617 (2 : Fin 3)) = canonicalInput433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9617 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9617 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound433 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6214).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9617 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6214).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9617 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9617 ![reductionProjection24, oldProjection101, oldProjection101]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9618 : Integer.Sparse (Fin 1613) := [(10, 1), (72, 4), (193, -3), (1050, 2), (1221, 2)]

def reductionPivot9618 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, -2, 2]]

theorem reductionSound9618 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5823).moment H =
      Integer.Sparse.eval reductionProjection9618 (momentVector H) := by
  have heq : reductionPivot9618 = (fun u v => (normalNode5823).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5823).moment H = injectiveMoment H reductionPivot9618 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5823).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9618 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9618 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9618 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection825, reductionProjection1509, reductionProjection9617, oldProjection825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9618 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5366 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5366 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9618 (1 : Fin 4)) = canonicalInput11937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11937 hH))).trans (reductionSound1509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9618 (2 : Fin 4)) = canonicalInput11929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9617 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11929 hH))).trans (reductionSound9617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9618 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5292 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9618 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5292 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5823).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9618 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5823).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9618 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection9618 ![oldProjection825, reductionProjection1509, reductionProjection9617, oldProjection825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9619 : Integer.Sparse (Fin 1613) := [(0, -1), (10, -60), (72, -240), (94, 5), (152, 180), (193, 180), (690, -60), (1039, -60), (1044, -120), (1050, -180), (1221, -120), (1250, 15), (1251, 35)]

def reductionPivot9619 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, -1, 1]]

theorem reductionSound9619 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5816).moment H =
      Integer.Sparse.eval reductionProjection9619 (momentVector H) := by
  have heq : reductionPivot9619 = (fun u v => (normalNode5816).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5816).moment H = injectiveMoment H reductionPivot9619 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5816).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9619 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9619 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 3, 3, 360, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9619 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9554, oldProjection825, oldProjection825, oldProjection2345, reductionProjection9618] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9619 (0 : Fin 5)) = (normalNode5760).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9554 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9554 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9619 (1 : Fin 5)) = canonicalInput11917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11917 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9619 (2 : Fin 5)) = canonicalInput11924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11924 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9619 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2345⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2345 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9619 (4 : Fin 5)) = (normalNode5823).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9618 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9619 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5816).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9619 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5816).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9619 (j : Fin 5)))
      1 360 360 1 ![6, 3, 3, 360, 6] ![60, 120, 120, 1, 60] reductionProjection9619 ![reductionProjection9554, oldProjection825, oldProjection825, oldProjection2345, reductionProjection9618]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9620 : Integer.Sparse (Fin 1613) := [(0, 13), (20, 10), (93, 120), (94, -5), (227, -240), (541, 720), (682, -480), (1079, 720), (1221, -240), (1250, 60), (1251, -60), (1257, 720), (1292, -240), (1319, -240), (1321, -240), (1388, -240), (1389, -240)]

def reductionPivot9620 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound9620 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5817).moment H =
      Integer.Sparse.eval reductionProjection9620 (momentVector H) := by
  have heq : reductionPivot9620 = (fun u v => (normalNode5817).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5817).moment H = injectiveMoment H reductionPivot9620 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5817).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9620 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9620 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 720, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9620 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9555, oldProjection1331, oldProjection1331, reductionProjection9606, oldProjection2346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9620 (0 : Fin 5)) = (normalNode5761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9555 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9620 (1 : Fin 5)) = canonicalInput11918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11918 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9620 (2 : Fin 5)) = canonicalInput11925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11925 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9620 (3 : Fin 5)) = (normalNode5824).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9606 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9620 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2346⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2346 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9620 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5817).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9620 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5817).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9620 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 720, 1440, 360] ![2, 2, 2, 1, 4] reductionProjection9620 ![reductionProjection9555, oldProjection1331, oldProjection1331, reductionProjection9606, oldProjection2346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9621 : Integer.Sparse (Fin 1613) := [(1258, 1)]

theorem reductionSound9621 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1258).moment H =
      Integer.Sparse.eval reductionProjection9621 (momentVector H) := by
  have hc : coordinates (1258 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1258) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9621, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9622 : Integer.Sparse (Fin 1613) := [(541, -1), (553, -1), (1257, -1), (1258, -1)]

def reductionPivot9622 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]

theorem reductionSound9622 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5825).moment H =
      Integer.Sparse.eval reductionProjection9622 (momentVector H) := by
  have heq : reductionPivot9622 = (fun u v => (normalNode5825).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5825).moment H = injectiveMoment H reductionPivot9622 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5825).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9622 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9622 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9622 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection503, reductionProjection9621, oldProjection497, reductionProjection1423] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9622 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5370 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5370 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9622 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1258).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9622 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5298 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5298 hH))).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9622 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1423 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9622 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5825).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9622 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5825).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9622 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9622 ![oldProjection503, reductionProjection9621, oldProjection497, reductionProjection1423]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9623 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 10), (227, -80), (541, 720), (553, 720), (682, -240), (1221, -240), (1250, 60), (1251, -65), (1257, 720), (1258, 480), (1321, -240), (1388, -80), (1389, -560)]

def reductionPivot9623 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, -1, 1, -1]]

theorem reductionSound9623 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5821).moment H =
      Integer.Sparse.eval reductionProjection9623 (momentVector H) := by
  have heq : reductionPivot9623 = (fun u v => (normalNode5821).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5821).moment H = injectiveMoment H reductionPivot9623 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5821).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9623 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9623 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 2, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9623 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2360, reductionProjection9622, reductionProjection9622, oldProjection2346, reductionProjection9606] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9623 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2360⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2360 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9623 (1 : Fin 5)) = canonicalInput11935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9622 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9622 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11935 hH))).trans (reductionSound9622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9623 (2 : Fin 5)) = (normalNode5825).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9622 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9622 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9623 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2346⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2346 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9623 (4 : Fin 5)) = (normalNode5824).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9606 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9623 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5821).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9623 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5821).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9623 (j : Fin 5)))
      1 480 1440 3 ![288, 2, 2, 360, 1440] ![5, 720, 720, 4, 1] reductionProjection9623 ![oldProjection2360, reductionProjection9622, reductionProjection9622, oldProjection2346, reductionProjection9606]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9624 : Integer.Sparse (Fin 1613) := [(0, 13), (72, -240), (94, 25), (541, 1080), (1050, -360), (1221, -360), (1250, 210), (1251, -50), (1321, -360), (1388, -360), (1389, -720)]

def reductionPivot9624 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound9624 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5822).moment H =
      Integer.Sparse.eval reductionProjection9624 (momentVector H) := by
  have heq : reductionPivot9624 = (fun u v => (normalNode5822).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5822).moment H = injectiveMoment H reductionPivot9624 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5822).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9624 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9624 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 96, 96, 360, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9624 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1823, oldProjection2347, oldProjection2347, oldProjection1524, oldProjection2346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9624 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5362 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5362 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9624 (1 : Fin 5)) = canonicalInput11936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2347 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11936 hH))).trans (oldProjectionSound2347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9624 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2347⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2347 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9624 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5288 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1524 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5288 hH))).trans (oldProjectionSound1524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9624 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2346⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2346 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9624 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5822).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9624 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5822).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9624 (j : Fin 5)))
      1 720 1440 2 ![720, 96, 96, 360, 360] ![2, 15, 15, 4, 4] reductionProjection9624 ![oldProjection1823, oldProjection2347, oldProjection2347, oldProjection1524, oldProjection2346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9625 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (243, -16), (703, 16), (704, 16), (1251, 1)]

def reductionPivot9625 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 1, -4, 3], ![0, 1, 2, -3], ![1, -2, 2, -1]]

theorem reductionSound9625 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10738).moment H =
      Integer.Sparse.eval reductionProjection9625 (momentVector H) := by
  have heq : reductionPivot9625 = (fun u v => (normalNode10738).entries (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10738).moment H = injectiveMoment H reductionPivot9625 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10738).entries OAI.MUB6.Certificate.PairSemantics.permutation9)).symm
  have hshape : reductionPivot9625 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9625 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9625 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection82, oldProjection132, oldProjection32] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9625 (0 : Fin 3)) = canonicalInput22510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9625 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection82 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9625 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection82 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22510 hH))).trans (oldProjectionSound82 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9625 (1 : Fin 3)) = canonicalInput31837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9625 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection132 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9625 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31837 hH))).trans (oldProjectionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9625 (2 : Fin 3)) = canonicalInput31839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9625 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection32 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9625 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection32 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31839 hH))).trans (oldProjectionSound32 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10738).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9625 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10738).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9625 (j : Fin 3)))
      3 144 144 3 ![48, 48, 1] ![3, 3, 144] reductionProjection9625 ![oldProjection82, oldProjection132, oldProjection32]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9626 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (37, 24), (94, 2), (243, -8), (682, 24), (703, -8), (704, -8), (992, -72), (1040, 24), (1209, 24), (1225, -8), (1226, -8), (1251, -1)]

def reductionPivot9626 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, -1, 4, -3], ![1, 0, 0, -1]]

theorem reductionSound9626 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5828).moment H =
      Integer.Sparse.eval reductionProjection9626 (momentVector H) := by
  have heq : reductionPivot9626 = (fun u v => (normalNode5828).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5828).moment H = injectiveMoment H reductionPivot9626 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5828).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9626 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9626 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9626 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9625, reductionProjection9236, reductionProjection5987, reductionProjection8205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9626 (0 : Fin 4)) = canonicalInput23465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9625 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23465 hH))).trans (reductionSound9625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9626 (1 : Fin 4)) = canonicalInput12071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9236 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12071 hH))).trans (reductionSound9236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9626 (2 : Fin 4)) = canonicalInput11965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5987 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11965 hH))).trans (reductionSound5987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9626 (3 : Fin 4)) = canonicalInput11961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8205 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9626 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11961 hH))).trans (reductionSound8205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5828).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9626 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5828).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9626 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 1] ![1, 1, 1, 144] reductionProjection9626 ![reductionProjection9625, reductionProjection9236, reductionProjection5987, reductionProjection8205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9627 : Integer.Sparse (Fin 1613) := [(433, -1), (669, -1), (1260, -1), (1261, -1)]

def reductionPivot9627 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, -1, -2, 3], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound9627 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5831).moment H =
      Integer.Sparse.eval reductionProjection9627 (momentVector H) := by
  have heq : reductionPivot9627 = (fun u v => (normalNode5831).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5831).moment H = injectiveMoment H reductionPivot9627 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5831).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9627 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9627 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9627 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection476, oldProjection522, reductionProjection1047, reductionProjection8366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9627 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5404 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5404 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9627 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5310 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection522 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5310 hH))).trans (oldProjectionSound522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9627 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1261).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9627 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1260).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9627 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5831).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9627 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5831).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9627 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9627 ![oldProjection476, oldProjection522, reductionProjection1047, reductionProjection8366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9628 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (20, -10), (37, 240), (81, 240), (94, 15), (697, 240), (1040, 240), (1052, 480), (1251, 15), (1260, -720)]

def reductionPivot9628 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound9628 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5830).moment H =
      Integer.Sparse.eval reductionProjection9628 (momentVector H) := by
  have heq : reductionPivot9628 = (fun u v => (normalNode5830).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5830).moment H = injectiveMoment H reductionPivot9628 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5830).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9628 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9628 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 720, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9628 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1374, oldProjection1007, reductionProjection8366, oldProjection1154] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9628 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5403 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1374 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5403 hH))).trans (oldProjectionSound1374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9628 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5309 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5309 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9628 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1260).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9628 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5305 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1154 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9628 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5305 hH))).trans (oldProjectionSound1154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5830).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9628 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5830).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9628 (j : Fin 4)))
      2 1440 1440 2 ![24, 720, 1, 72] ![60, 2, 1440, 20] reductionProjection9628 ![oldProjection1374, oldProjection1007, reductionProjection8366, oldProjection1154]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9629 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -60), (20, 10), (37, -240), (81, -720), (94, 10), (160, 720), (433, 1440), (669, 1440), (697, -720), (698, 400), (1040, -240), (1052, -960), (1059, 320), (1125, 720), (1227, 80), (1250, 60), (1251, -215), (1260, 1440), (1261, 1440)]

def reductionPivot9629 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound9629 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5829).moment H =
      Integer.Sparse.eval reductionProjection9629 (momentVector H) := by
  have heq : reductionPivot9629 = (fun u v => (normalNode5829).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5829).moment H = injectiveMoment H reductionPivot9629 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5829).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9629 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9629 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9629 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1642, oldProjection1836, reductionProjection8373, reductionProjection9627, reductionProjection9628] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9629 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5401 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5401 hH))).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9629 (1 : Fin 5)) = canonicalInput11972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11972 hH))).trans (oldProjectionSound1836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9629 (2 : Fin 5)) = (normalNode5832).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8373 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9629 (3 : Fin 5)) = (normalNode5831).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9627 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9629 (4 : Fin 5)) = (normalNode5830).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9628 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9629 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5829).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9629 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5829).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9629 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 1440] ![1, 1, 1, 720, 1] reductionProjection9629 ![oldProjection1642, oldProjection1836, reductionProjection8373, reductionProjection9627, reductionProjection9628]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9630 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (37, -48), (94, 1), (243, 16), (703, 16), (1209, -48)]

def reductionPivot9630 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 3, 0], ![-1, 2, 1, -2], ![4, -1, -4, 1]]

theorem reductionSound9630 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6451).moment H =
      Integer.Sparse.eval reductionProjection9630 (momentVector H) := by
  have heq : reductionPivot9630 = (fun u v => (normalNode6451).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6451).moment H = injectiveMoment H reductionPivot9630 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6451).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6451).entries)).symm
  have hshape : reductionPivot9630 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9630 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9630 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9149, oldProjection82, oldProjection84] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9630 (0 : Fin 3)) = canonicalInput353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9630 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9149 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9630 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound353 hH))).trans (reductionSound9149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9630 (1 : Fin 3)) = canonicalInput5852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9630 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection82 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9630 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection82 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5852 hH))).trans (oldProjectionSound82 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9630 (2 : Fin 3)) = canonicalInput5856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9630 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9630 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5856 hH))).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6451).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9630 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6451).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9630 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection9630 ![reductionProjection9149, oldProjection82, oldProjection84]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9631 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 5), (37, 48), (94, 3), (243, -16), (244, -16), (701, -16), (703, -16), (1039, 48), (1040, 48), (1199, -144), (1209, 48), (1251, -2)]

def reductionPivot9631 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, 0, 4, -4], ![1, 0, -1, 0]]

theorem reductionSound9631 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5834).moment H =
      Integer.Sparse.eval reductionProjection9631 (momentVector H) := by
  have heq : reductionPivot9631 = (fun u v => (normalNode5834).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5834).moment H = injectiveMoment H reductionPivot9631 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5834).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9631 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9631 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9631 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1228, reductionProjection6982, reductionProjection9630, reductionProjection9147] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9631 (0 : Fin 4)) = canonicalInput22742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22742 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9631 (1 : Fin 4)) = canonicalInput12067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6982 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12067 hH))).trans (reductionSound6982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9631 (2 : Fin 4)) = canonicalInput11966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11966 hH))).trans (reductionSound9630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9631 (3 : Fin 4)) = canonicalInput11964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9631 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11964 hH))).trans (reductionSound9147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5834).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9631 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5834).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9631 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection9631 ![oldProjection1228, reductionProjection6982, reductionProjection9630, reductionProjection9147]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

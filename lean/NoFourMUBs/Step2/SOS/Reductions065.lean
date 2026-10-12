import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical018
import NoFourMUBs.Step2.SOS.Canonical039
import NoFourMUBs.Step2.SOS.Canonical040
import NoFourMUBs.Step2.SOS.Canonical046
import NoFourMUBs.Step2.SOS.Canonical049
import NoFourMUBs.Step2.SOS.Canonical054
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical108
import NoFourMUBs.Step2.SOS.Canonical131
import NoFourMUBs.Step2.SOS.Canonical135
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical141
import NoFourMUBs.Step2.SOS.Canonical165
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical172
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical189
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical202
import NoFourMUBs.Step2.SOS.Canonical207
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical254
import NoFourMUBs.Step2.SOS.Canonical255
import NoFourMUBs.Step2.SOS.Canonical257
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical289
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical329
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions064
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical112
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical115
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical117
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical146
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical77
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2080 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (94, -50), (698, -320), (1221, 240), (1226, -80), (1227, -160), (1251, 45), (1389, 480)]

def reductionPivot2080 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 1, 2], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]

theorem reductionSound2080 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7032).moment H =
      Integer.Sparse.eval reductionProjection2080 (momentVector H) := by
  have heq : reductionPivot2080 = (fun u v => (normalNode7032).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7032).moment H = injectiveMoment H reductionPivot2080 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7032).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2080 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2080 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2080 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1333, oldProjection835, oldProjection1111, reductionProjection2079] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2080 (0 : Fin 4)) = canonicalInput14107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14107 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2080 (1 : Fin 4)) = canonicalInput13912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13912 hH))).trans (oldProjectionSound835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2080 (2 : Fin 4)) = canonicalInput13905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13905 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2080 (3 : Fin 4)) = (normalNode7073).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2079 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2080 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7032).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2080 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7032).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2080 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 3] ![2, 2, 2, 480] reductionProjection2080 ![oldProjection1333, oldProjection835, oldProjection1111, reductionProjection2079]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2081 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -10), (58, -120), (81, -720), (94, 45), (172, -720), (228, -240), (681, 240), (686, -120), (698, 360), (700, 40), (704, 40), (1052, -120), (1059, 80), (1210, 240), (1221, -120), (1223, -120), (1226, 80), (1227, 120), (1251, -15), (1389, -240)]

def reductionPivot2081 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![-2, 1, 2, -1, 0], ![1, -2, -1, 1, 1], ![3, 1, -1, -1, -2]]

theorem reductionSound2081 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7239).moment H =
      Integer.Sparse.eval reductionProjection2081 (momentVector H) := by
  have heq : reductionPivot2081 = (fun u v => (normalNode7239).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7239).moment H = injectiveMoment H reductionPivot2081 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7239).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7239).entries)).symm
  have hshape : reductionPivot2081 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2081 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2081 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1348, reductionProjection2051, reductionProjection2029, reductionProjection2080] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2081 (0 : Fin 4)) = canonicalInput6935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1348 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6935 hH))).trans (reductionSound1348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2081 (1 : Fin 4)) = canonicalInput21042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2051 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2051 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21042 hH))).trans (reductionSound2051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2081 (2 : Fin 4)) = canonicalInput21061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2029 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21061 hH))).trans (reductionSound2029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2081 (3 : Fin 4)) = canonicalInput21062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2080 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2081 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21062 hH))).trans (reductionSound2080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7239).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2081 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7239).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2081 (j : Fin 4)))
      2 1440 1440 2 ![1, 1440, 720, 1440] ![1440, 1, 2, 1] reductionProjection2081 ![reductionProjection1348, reductionProjection2051, reductionProjection2029, reductionProjection2080]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2082 : Integer.Sparse (Fin 1613) := [(958, 1)]

theorem reductionSound2082 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code958).moment H =
      Integer.Sparse.eval reductionProjection2082 (momentVector H) := by
  have hc : coordinates (958 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code958) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2082, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2083 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 240), (94, -5), (602, -720), (636, -720), (698, -320), (1059, -80), (1226, -240), (1227, -240), (1251, 40)]

def reductionPivot2083 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound2083 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4305).moment H =
      Integer.Sparse.eval reductionProjection2083 (momentVector H) := by
  have heq : reductionPivot2083 = (fun u v => (normalNode4305).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4305).moment H = injectiveMoment H reductionPivot2083 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4305).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2083 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2083 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2083 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection510, oldProjection845, oldProjection1016, reductionProjection1136] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2083 (0 : Fin 4)) = canonicalInput11046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11046 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2083 (1 : Fin 4)) = canonicalInput8666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection845 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8666 hH))).trans (oldProjectionSound845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2083 (2 : Fin 4)) = canonicalInput8391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1016 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8391 hH))).trans (oldProjectionSound1016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2083 (3 : Fin 4)) = canonicalInput8388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2083 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8388 hH))).trans (reductionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4305).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2083 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4305).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2083 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 144, 1] ![1440, 2, 10, 1440] reductionProjection2083 ![oldProjection510, oldProjection845, oldProjection1016, reductionProjection1136]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2084 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -480), (94, 15), (505, 720), (506, 720), (602, 720), (636, 720), (698, 560), (958, -1440), (983, -1440), (1052, -240), (1059, 80), (1223, -240), (1226, 480), (1227, 320), (1251, -70)]

def reductionPivot2084 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 0, -1, -2, 2], ![1, 2, -1, 1, -3]]

theorem reductionSound2084 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8471).moment H =
      Integer.Sparse.eval reductionProjection2084 (momentVector H) := by
  have heq : reductionPivot2084 = (fun u v => (normalNode8471).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8471).moment H = injectiveMoment H reductionPivot2084 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8471).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8471).entries)).symm
  have hshape : reductionPivot2084 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2084 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2084 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2077, reductionProjection2082, reductionProjection2061, reductionProjection2083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2084 (0 : Fin 4)) = canonicalInput3146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2077 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3146 hH))).trans (reductionSound2077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2084 (1 : Fin 4)) = canonicalInput16267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2082 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16267 hH))).trans (reductionSound2082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2084 (2 : Fin 4)) = canonicalInput16465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2061 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16465 hH))).trans (reductionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2084 (3 : Fin 4)) = canonicalInput16484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2083 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2084 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16484 hH))).trans (reductionSound2083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8471).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2084 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8471).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2084 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 144, 1440] ![2880, 2880, 20, 2] reductionProjection2084 ![reductionProjection2077, reductionProjection2082, reductionProjection2061, reductionProjection2083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2085 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 40), (58, 240), (76, 240), (81, 1920), (94, -155), (169, -720), (172, 1440), (174, -1440), (228, 480), (241, -80), (243, -320), (505, -720), (506, -720), (577, -720), (602, -1440), (636, -1440), (681, -480), (686, 240), (697, 720), (698, -3120), (700, -480), (704, -240), (849, 1440), (958, 1440), (978, 1440), (983, 2880), (1026, -720), (1050, 240), (1052, 1440), (1058, 240), (1059, -640), (1210, -480), (1219, 720), (1221, 720), (1223, 1200), (1225, -80), (1226, -1360), (1227, -1200), (1251, 315), (1389, 480)]

def reductionPivot2085 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound2085 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1143).moment H =
      Integer.Sparse.eval reductionProjection2085 (momentVector H) := by
  have heq : reductionPivot2085 = (fun u v => (normalNode1143).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1143).moment H = injectiveMoment H reductionPivot2085 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1143).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2085 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2085 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2085 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2076, reductionProjection2078, reductionProjection2066, reductionProjection2081, reductionProjection2084] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2085 (0 : Fin 5)) = canonicalInput1157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2076 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1157 hH))).trans (reductionSound2076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2085 (1 : Fin 5)) = canonicalInput2517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2078 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2517 hH))).trans (reductionSound2078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2085 (2 : Fin 5)) = canonicalInput2553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2066 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2553 hH))).trans (reductionSound2066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2085 (3 : Fin 5)) = canonicalInput2556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2081 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2081 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2556 hH))).trans (reductionSound2081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2085 (4 : Fin 5)) = canonicalInput2557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2084 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2085 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2557 hH))).trans (reductionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1143).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2085 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1143).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2085 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 1440, 2880] ![1, 1, 1, 2, 1] reductionProjection2085 ![reductionProjection2076, reductionProjection2078, reductionProjection2066, reductionProjection2081, reductionProjection2084]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2086 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -4), (81, -48), (94, 3), (160, 144), (169, 144), (174, 288), (175, 144), (247, 16), (486, 144), (697, -96), (698, 192), (1052, -48), (1055, -48), (1058, -48), (1059, 32), (1219, -192), (1223, -144), (1226, 80), (1227, 112), (1251, -28)]

def reductionPivot2086 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -2, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound2086 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6356).moment H =
      Integer.Sparse.eval reductionProjection2086 (momentVector H) := by
  have heq : reductionPivot2086 = (fun u v => (normalNode6356).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6356).moment H = injectiveMoment H reductionPivot2086 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6356).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2086 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2086 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2086 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1502, oldProjection1511, reductionProjection1096, oldProjection1510] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2086 (0 : Fin 4)) = canonicalInput14324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14324 hH))).trans (oldProjectionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2086 (1 : Fin 4)) = canonicalInput12925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1511 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12925 hH))).trans (oldProjectionSound1511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2086 (2 : Fin 4)) = canonicalInput12903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1096 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12903 hH))).trans (reductionSound1096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2086 (3 : Fin 4)) = canonicalInput12900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2086 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12900 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6356).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2086 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6356).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2086 (j : Fin 4)))
      2 576 2880 10 ![1440, 720, 720, 288] ![2, 4, 4, 10] reductionProjection2086 ![oldProjection1502, oldProjection1511, reductionProjection1096, oldProjection1510]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2087 : Integer.Sparse (Fin 1613) := [(0, 1), (602, -360), (618, -360), (698, -200), (1059, -80), (1226, -40), (1227, -160), (1251, 35)]

def reductionPivot2087 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound2087 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2826).moment H =
      Integer.Sparse.eval reductionProjection2087 (momentVector H) := by
  have heq : reductionPivot2087 = (fun u v => (normalNode2826).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2826).moment H = injectiveMoment H reductionPivot2087 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2826).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2087 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2087 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2087 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1058, oldProjection510, oldProjection845, oldProjection515] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2087 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3599 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3599 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2087 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2496 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2496 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2087 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2475 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection845 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2475 hH))).trans (oldProjectionSound845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2087 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection515 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2087 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2826).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2087 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2826).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2087 (j : Fin 4)))
      2 720 720 2 ![720, 1, 720, 1] ![1, 720, 1, 720] reductionProjection2087 ![oldProjection1058, oldProjection510, oldProjection845, oldProjection515]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2088 : Integer.Sparse (Fin 1613) := [(0, -3), (178, -720), (489, 360), (505, 360), (602, 360), (618, 360), (697, -120), (698, 360), (1059, 120), (1219, -120), (1226, 40), (1227, 280), (1251, -65), (1282, -720)]

def reductionPivot2088 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![1, 1, 1, -2, -1], ![3, -2, -1, 1, -1]]

theorem reductionSound2088 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6358).moment H =
      Integer.Sparse.eval reductionProjection2088 (momentVector H) := by
  have heq : reductionPivot2088 = (fun u v => (normalNode6358).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6358).moment H = injectiveMoment H reductionPivot2088 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6358).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6358).entries)).symm
  have hshape : reductionPivot2088 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2088 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2088 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2063, reductionProjection1360, reductionProjection1359, reductionProjection2087] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2088 (0 : Fin 4)) = canonicalInput438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2063 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound438 hH))).trans (reductionSound2063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2088 (1 : Fin 4)) = canonicalInput9012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1360 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9012 hH))).trans (reductionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2088 (2 : Fin 4)) = canonicalInput9044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1359 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9044 hH))).trans (reductionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2088 (3 : Fin 4)) = canonicalInput9047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2087 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2088 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9047 hH))).trans (reductionSound2087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6358).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2088 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6358).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2088 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 360, 720] ![1440, 1440, 4, 2] reductionProjection2088 ![reductionProjection2063, reductionProjection1360, reductionProjection1359, reductionProjection2087]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2089 : Integer.Sparse (Fin 1613) := [(0, 14), (19, 20), (81, 1200), (94, -85), (160, -720), (169, -720), (174, -2880), (175, -720), (178, 1440), (243, -320), (247, -80), (486, -720), (489, -1440), (505, -2880), (506, -1440), (602, -1440), (618, -720), (636, -720), (697, 1680), (698, -4800), (700, -400), (704, -160), (958, 1440), (983, 1440), (1052, 1440), (1055, 240), (1058, 240), (1059, -1040), (1219, 2160), (1223, 1920), (1225, -80), (1226, -2000), (1227, -2720), (1251, 725), (1282, 1440)]

def reductionPivot2089 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]

theorem reductionSound2089 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1144).moment H =
      Integer.Sparse.eval reductionProjection2089 (momentVector H) := by
  have heq : reductionPivot2089 = (fun u v => (normalNode1144).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1144).moment H = injectiveMoment H reductionPivot2089 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1144).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2089 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2089 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 2880, 576, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2089 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2086, reductionProjection2084, reductionProjection2062, reductionProjection2088, reductionProjection2066] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2089 (0 : Fin 5)) = canonicalInput1158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2086 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2086 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1158 hH))).trans (reductionSound2086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2089 (1 : Fin 5)) = canonicalInput2518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2084 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2518 hH))).trans (reductionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2089 (2 : Fin 5)) = canonicalInput2559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2062 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2559 hH))).trans (reductionSound2062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2089 (3 : Fin 5)) = canonicalInput2560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2088 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2088 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2560 hH))).trans (reductionSound2088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2089 (4 : Fin 5)) = canonicalInput2561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2066 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2089 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2561 hH))).trans (reductionSound2066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1144).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2089 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1144).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2089 (j : Fin 5)))
      1 2880 2880 1 ![576, 2880, 576, 1440, 2880] ![5, 1, 5, 2, 1] reductionProjection2089 ![reductionProjection2086, reductionProjection2084, reductionProjection2062, reductionProjection2088, reductionProjection2066]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2090 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (81, -240), (94, 15), (160, 720), (169, 1440), (170, 720), (174, 720), (241, 80), (462, 720), (508, 720), (602, 720), (697, -240), (698, 640), (924, 720), (1050, -240), (1052, -480), (1058, -240), (1059, 240), (1219, -240), (1221, -240), (1223, -480), (1226, 240), (1227, 240), (1251, -70)]

def reductionPivot2090 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -2, -1, 1, 3], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound2090 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6363).moment H =
      Integer.Sparse.eval reductionProjection2090 (momentVector H) := by
  have heq : reductionPivot2090 = (fun u v => (normalNode6363).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6363).moment H = injectiveMoment H reductionPivot2090 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6363).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2090 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2090 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 288, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2090 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1501, oldProjection1510, reductionProjection1138, reductionProjection2043] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2090 (0 : Fin 4)) = canonicalInput14332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1501 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14332 hH))).trans (oldProjectionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2090 (1 : Fin 4)) = canonicalInput12930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12930 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2090 (2 : Fin 4)) = canonicalInput12913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1138 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12913 hH))).trans (reductionSound1138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2090 (3 : Fin 4)) = canonicalInput12912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2043 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2090 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12912 hH))).trans (reductionSound2043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6363).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2090 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6363).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2090 (j : Fin 4)))
      2 2880 2880 2 ![720, 288, 1440, 2] ![4, 10, 2, 1440] reductionProjection2090 ![oldProjection1501, oldProjection1510, reductionProjection1138, reductionProjection2043]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2091 : Integer.Sparse (Fin 1613) := [(460, 1)]

theorem reductionSound2091 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code460).moment H =
      Integer.Sparse.eval reductionProjection2091 (momentVector H) := by
  have hc : coordinates (460 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code460) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2091, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2092 : Integer.Sparse (Fin 1613) := [(0, -1), (602, -720), (635, -720), (636, -720), (698, -80), (1227, -160), (1251, 25), (1389, 240)]

def reductionPivot2092 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound2092 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2761).moment H =
      Integer.Sparse.eval reductionProjection2092 (momentVector H) := by
  have heq : reductionPivot2092 = (fun u v => (normalNode2761).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2761).moment H = injectiveMoment H reductionPivot2092 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2761).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2092 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2092 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2092 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection517, oldProjection510, reductionProjection1136, oldProjection1078] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2092 (0 : Fin 4)) = canonicalInput5724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5724 hH))).trans (oldProjectionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2092 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2496 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2496 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2092 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code636).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2092 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2491 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2092 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2491 hH))).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2761).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2092 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2761).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2092 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 1, 720] ![1440, 1440, 1440, 2] reductionProjection2092 ![oldProjection517, oldProjection510, reductionProjection1136, oldProjection1078]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2093 : Integer.Sparse (Fin 1613) := [(0, 1), (178, -1440), (460, -1440), (602, 720), (635, 720), (636, 720), (698, 80), (962, -1440), (1227, 160), (1251, -25), (1389, -240)]

def reductionPivot2093 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![-1, 2, -1, 0, 0], ![1, -1, 1, -2, 1], ![3, -1, -1, 1, -2]]

theorem reductionSound2093 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6361).moment H =
      Integer.Sparse.eval reductionProjection2093 (momentVector H) := by
  have heq : reductionPivot2093 = (fun u v => (normalNode6361).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6361).moment H = injectiveMoment H reductionPivot2093 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6361).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6361).entries)).symm
  have hshape : reductionPivot2093 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2093 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2093 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2070, reductionProjection1360, reductionProjection2091, reductionProjection2092] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2093 (0 : Fin 4)) = canonicalInput445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2070 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound445 hH))).trans (reductionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2093 (1 : Fin 4)) = canonicalInput9019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1360 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9019 hH))).trans (reductionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2093 (2 : Fin 4)) = canonicalInput9062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2091 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9062 hH))).trans (reductionSound2091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2093 (3 : Fin 4)) = canonicalInput9063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2092 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2093 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9063 hH))).trans (reductionSound2092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6361).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2093 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6361).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2093 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1, 1440] ![2880, 2880, 2880, 2] reductionProjection2093 ![reductionProjection2070, reductionProjection1360, reductionProjection2091, reductionProjection2092]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2094 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (81, 120), (94, -25), (160, -360), (169, -720), (170, -360), (174, -720), (178, 720), (241, -40), (243, -160), (268, -1440), (460, 720), (462, -360), (508, -360), (602, -1080), (635, -360), (636, -720), (697, 360), (698, -960), (700, -200), (704, -80), (849, 720), (924, -360), (962, 720), (978, 720), (983, 720), (1026, -360), (1050, 120), (1052, 480), (1058, 120), (1059, -240), (1219, 360), (1221, 120), (1223, 480), (1225, -40), (1226, -360), (1227, -360), (1251, 120), (1389, 120)]

def reductionPivot2094 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound2094 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1145).moment H =
      Integer.Sparse.eval reductionProjection2094 (momentVector H) := by
  have heq : reductionPivot2094 = (fun u v => (normalNode1145).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1145).moment H = injectiveMoment H reductionPivot2094 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1145).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2094 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2094 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2094 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2090, reductionProjection2078, reductionProjection2066, reductionProjection2093, reductionProjection2059] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2094 (0 : Fin 5)) = canonicalInput1159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2090 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2090 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1159 hH))).trans (reductionSound2090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2094 (1 : Fin 5)) = canonicalInput2519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2078 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2519 hH))).trans (reductionSound2078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2094 (2 : Fin 5)) = canonicalInput2561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2066 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2561 hH))).trans (reductionSound2066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2094 (3 : Fin 5)) = canonicalInput2562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2093 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2093 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2562 hH))).trans (reductionSound2093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2094 (4 : Fin 5)) = canonicalInput2563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2059 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2094 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2563 hH))).trans (reductionSound2059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1145).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2094 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1145).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2094 (j : Fin 5)))
      1 1440 2880 2 ![2880, 2880, 2880, 2880, 1] ![1, 1, 1, 1, 2880] reductionProjection2094 ![reductionProjection2090, reductionProjection2078, reductionProjection2066, reductionProjection2093, reductionProjection2059]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2095 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -5), (94, 5), (169, 180), (174, 360), (247, 20), (478, 180), (577, 180), (697, -120), (698, 240), (1022, 180), (1052, -60), (1055, -60), (1058, -60), (1059, 20), (1219, -240), (1221, -60), (1223, -180), (1226, 120), (1227, 140), (1251, -35)]

def reductionPivot2095 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, 0, -2]]

theorem reductionSound2095 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6347).moment H =
      Integer.Sparse.eval reductionProjection2095 (momentVector H) := by
  have heq : reductionPivot2095 = (fun u v => (normalNode6347).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6347).moment H = injectiveMoment H reductionPivot2095 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6347).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2095 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2095 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2095 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1510, oldProjection1511, reductionProjection1973, oldProjection1502] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2095 (0 : Fin 4)) = canonicalInput14311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14311 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2095 (1 : Fin 4)) = canonicalInput12923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1511 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12923 hH))).trans (oldProjectionSound1511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2095 (2 : Fin 4)) = canonicalInput12892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1973 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12892 hH))).trans (reductionSound1973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2095 (3 : Fin 4)) = canonicalInput12888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2095 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12888 hH))).trans (oldProjectionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6347).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2095 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6347).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2095 (j : Fin 4)))
      2 720 1440 4 ![288, 720, 1440, 1440] ![5, 2, 1, 1] reductionProjection2095 ![oldProjection1510, oldProjection1511, reductionProjection1973, oldProjection1502]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2096 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 25), (172, -1440), (247, 80), (433, 720), (483, 720), (565, 720), (610, 720), (698, 320), (1055, -720), (1219, -240), (1226, 80), (1227, 320), (1251, -100), (1283, -1440)]

def reductionPivot2096 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![-1, 1, -1, 0, 1], ![1, -2, 1, 1, -1], ![3, 1, -1, -2, -1]]

theorem reductionSound2096 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6350).moment H =
      Integer.Sparse.eval reductionProjection2096 (momentVector H) := by
  have heq : reductionPivot2096 = (fun u v => (normalNode6350).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6350).moment H = injectiveMoment H reductionPivot2096 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6350).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6350).entries)).symm
  have hshape : reductionPivot2096 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2096 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2096 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2036, reductionProjection1348, oldProjection1709, reductionProjection1667] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2096 (0 : Fin 4)) = canonicalInput437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2036 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound437 hH))).trans (reductionSound2036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2096 (1 : Fin 4)) = canonicalInput9011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1348 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9011 hH))).trans (reductionSound1348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2096 (2 : Fin 4)) = canonicalInput9043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1709 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9043 hH))).trans (oldProjectionSound1709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2096 (3 : Fin 4)) = canonicalInput9046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1667 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2096 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9046 hH))).trans (reductionSound1667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6350).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2096 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6350).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2096 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1440, 720] ![2880, 2880, 2, 4] reductionProjection2096 ![reductionProjection2036, reductionProjection1348, oldProjection1709, reductionProjection1667]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2097 : Integer.Sparse (Fin 1613) := [(1151, 1)]

theorem reductionSound2097 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1151).moment H =
      Integer.Sparse.eval reductionProjection2097 (momentVector H) := by
  have hc : coordinates (1151 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1151) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2097, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2098 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -10), (430, -720), (698, -160), (809, -720), (1058, 480), (1223, 240), (1226, -80), (1227, -80), (1251, -15)]

def reductionPivot2098 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]

theorem reductionSound2098 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5433).moment H =
      Integer.Sparse.eval reductionProjection2098 (momentVector H) := by
  have heq : reductionPivot2098 = (fun u v => (normalNode5433).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5433).moment H = injectiveMoment H reductionPivot2098 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5433).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2098 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2098 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2098 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection475, oldProjection1329, oldProjection1277, oldProjection604] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2098 (0 : Fin 4)) = canonicalInput12148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12148 hH))).trans (oldProjectionSound475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2098 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4819 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4819 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2098 (2 : Fin 4)) = canonicalInput10567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10567 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2098 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection604 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2098 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4689 hH))).trans (oldProjectionSound604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5433).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2098 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5433).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2098 (j : Fin 4)))
      2 1440 1440 2 ![1, 144, 720, 1] ![1440, 10, 2, 1440] reductionProjection2098 ![oldProjection475, oldProjection1329, oldProjection1277, oldProjection604]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2099 : Integer.Sparse (Fin 1613) := [(94, -1), (563, -36), (602, -36), (698, -16), (1058, 12), (1226, -8), (1227, -12), (1251, 1)]

def reductionPivot2099 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]

theorem reductionSound2099 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode5432).moment H =
      Integer.Sparse.eval reductionProjection2099 (momentVector H) := by
  have heq : reductionPivot2099 = (fun u v => (normalNode5432).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5432).moment H = injectiveMoment H reductionPivot2099 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5432).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2099 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2099 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2099 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, oldProjection838, oldProjection1277, oldProjection510] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2099 (0 : Fin 4)) = canonicalInput12004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12004 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2099 (1 : Fin 4)) = canonicalInput10716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10716 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2099 (2 : Fin 4)) = canonicalInput10567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10567 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2099 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4690 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2099 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4690 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5432).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2099 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5432).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2099 (j : Fin 4)))
      2 72 720 20 ![1, 720, 720, 1] ![720, 1, 1, 720] reductionProjection2099 ![reductionProjection1046, oldProjection838, oldProjection1277, oldProjection510]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2100 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 30), (430, 720), (563, 720), (602, 720), (698, 480), (809, 720), (983, -1440), (1058, -720), (1151, -1440), (1223, -240), (1226, 240), (1227, 320), (1251, -5)]

def reductionPivot2100 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, -1, 2, 1, -3]]

theorem reductionSound2100 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8565).moment H =
      Integer.Sparse.eval reductionProjection2100 (momentVector H) := by
  have heq : reductionPivot2100 = (fun u v => (normalNode8565).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8565).moment H = injectiveMoment H reductionPivot2100 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8565).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8565).entries)).symm
  have hshape : reductionPivot2100 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2100 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2100 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2077, reductionProjection2097, reductionProjection2098, reductionProjection2099] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2100 (0 : Fin 4)) = canonicalInput3512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2077 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3512 hH))).trans (reductionSound2077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2100 (1 : Fin 4)) = canonicalInput16330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2097 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16330 hH))).trans (reductionSound2097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2100 (2 : Fin 4)) = canonicalInput16815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2098 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16815 hH))).trans (reductionSound2098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2100 (3 : Fin 4)) = canonicalInput16816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2099 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2100 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16816 hH))).trans (reductionSound2099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8565).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2100 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8565).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2100 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1440, 72] ![2880, 2880, 2, 40] reductionProjection2100 ![reductionProjection2077, reductionProjection2097, reductionProjection2098, reductionProjection2099]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2101 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 100), (20, -5), (94, -105), (169, -720), (172, 1440), (174, -2880), (241, -80), (243, -320), (247, -320), (430, -1440), (433, -1440), (478, -720), (483, -1440), (563, -720), (565, -720), (577, -720), (602, -720), (610, -720), (697, 960), (698, -3680), (700, -80), (704, -80), (809, -1440), (983, 1440), (1022, -720), (1052, 720), (1055, 1680), (1058, 1680), (1059, -320), (1151, 1440), (1219, 2160), (1221, 480), (1223, 1920), (1225, -80), (1226, -1760), (1227, -2240), (1251, 510), (1283, 1440)]

def reductionPivot2101 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, -1, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound2101 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1146).moment H =
      Integer.Sparse.eval reductionProjection2101 (momentVector H) := by
  have heq : reductionPivot2101 = (fun u v => (normalNode1146).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1146).moment H = injectiveMoment H reductionPivot2101 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1146).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2101 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2101 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 576, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2101 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2095, reductionProjection2005, reductionProjection2011, reductionProjection2096, reductionProjection2100] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2101 (0 : Fin 5)) = canonicalInput1163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2095 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1163 hH))).trans (reductionSound2095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2101 (1 : Fin 5)) = canonicalInput2522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2005 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2005 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2522 hH))).trans (reductionSound2005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2101 (2 : Fin 5)) = canonicalInput2573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2011 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2573 hH))).trans (reductionSound2011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2101 (3 : Fin 5)) = canonicalInput2574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2096 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2574 hH))).trans (reductionSound2096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2101 (4 : Fin 5)) = canonicalInput2575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2100 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2101 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2575 hH))).trans (reductionSound2100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1146).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2101 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1146).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2101 (j : Fin 5)))
      1 2880 2880 1 ![720, 576, 1440, 2880, 2880] ![4, 5, 2, 1, 1] reductionProjection2101 ![reductionProjection2095, reductionProjection2005, reductionProjection2011, reductionProjection2096, reductionProjection2100]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2102 : Integer.Sparse (Fin 1613) := [(602, -1), (635, -1), (1027, -1), (1175, -1)]

def reductionPivot2102 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 1, -1, -1]]

theorem reductionSound2102 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5428).moment H =
      Integer.Sparse.eval reductionProjection2102 (momentVector H) := by
  have heq : reductionPivot2102 = (fun u v => (normalNode5428).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5428).moment H = injectiveMoment H reductionPivot2102 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5428).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2102 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2102 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2102 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection517, oldProjection690, oldProjection621, oldProjection510] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2102 (0 : Fin 4)) = canonicalInput11066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11066 hH))).trans (oldProjectionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2102 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node690⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection690 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2102 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4691 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4691 hH))).trans (oldProjectionSound621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2102 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4690 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2102 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4690 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5428).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2102 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5428).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2102 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2102 ![oldProjection517, oldProjection690, oldProjection621, oldProjection510]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2103 : Integer.Sparse (Fin 1613) := [(0, 24), (94, 35), (602, 1440), (610, 720), (635, 720), (698, 1120), (1027, 720), (1059, 160), (1175, 720), (1221, -240), (1226, 480), (1227, 880), (1251, -305), (1389, -240)]

def reductionPivot2103 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, -1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound2103 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7567).moment H =
      Integer.Sparse.eval reductionProjection2103 (momentVector H) := by
  have heq : reductionPivot2103 = (fun u v => (normalNode7567).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7567).moment H = injectiveMoment H reductionPivot2103 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7567).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2103 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2103 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2103 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1820, oldProjection2450, oldProjection1819, reductionProjection2102] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2103 (0 : Fin 4)) = canonicalInput13282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1820 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13282 hH))).trans (oldProjectionSound1820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2103 (1 : Fin 4)) = canonicalInput14886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14886 hH))).trans (oldProjectionSound2450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2103 (2 : Fin 4)) = canonicalInput14989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1819 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14989 hH))).trans (oldProjectionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2103 (3 : Fin 4)) = canonicalInput14991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2102 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2103 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14991 hH))).trans (reductionSound2102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7567).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2103 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7567).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2103 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 2] ![2, 2, 2, 1440] reductionProjection2103 ![oldProjection1820, oldProjection2450, oldProjection1819, reductionProjection2102]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2104 : Integer.Sparse (Fin 1613) := [(1153, 1)]

theorem reductionSound2104 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1153).moment H =
      Integer.Sparse.eval reductionProjection2104 (momentVector H) := by
  have hc : coordinates (1153 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1153) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2104, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2105 : Integer.Sparse (Fin 1613) := [(1355, 1)]

theorem reductionSound2105 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1355).moment H =
      Integer.Sparse.eval reductionProjection2105 (momentVector H) := by
  have hc : coordinates (1355 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1355) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2105, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2106 : Integer.Sparse (Fin 1613) := [(0, -3), (635, -144), (698, -16), (1027, -144), (1227, -48), (1251, 19), (1389, 48)]

def reductionPivot2106 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound2106 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4304).moment H =
      Integer.Sparse.eval reductionProjection2106 (momentVector H) := by
  have heq : reductionPivot2106 = (fun u v => (normalNode4304).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4304).moment H = injectiveMoment H reductionPivot2106 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4304).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2106 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2106 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 360, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2106 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection621, oldProjection1119, oldProjection1078, oldProjection517] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2106 (0 : Fin 4)) = canonicalInput11045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11045 hH))).trans (oldProjectionSound621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2106 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3760 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1119 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3760 hH))).trans (oldProjectionSound1119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2106 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3696 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3696 hH))).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2106 (3 : Fin 4)) = canonicalInput8386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2106 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8386 hH))).trans (oldProjectionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4304).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2106 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4304).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2106 (j : Fin 4)))
      2 288 1440 10 ![1, 360, 720, 1] ![1440, 4, 2, 1440] reductionProjection2106 ![oldProjection621, oldProjection1119, oldProjection1078, oldProjection517]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2107 : Integer.Sparse (Fin 1613) := [(0, 3), (635, 144), (698, 16), (960, -288), (1027, 144), (1153, -288), (1227, 48), (1251, -19), (1355, -288), (1389, -48)]

def reductionPivot2107 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![-1, 1, 1, -1, 0], ![0, 1, -2, 1, 0], ![3, -1, 1, -1, -2]]

theorem reductionSound2107 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode7509).moment H =
      Integer.Sparse.eval reductionProjection2107 (momentVector H) := by
  have heq : reductionPivot2107 = (fun u v => (normalNode7509).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7509).moment H = injectiveMoment H reductionPivot2107 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7509).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7509).entries)).symm
  have hshape : reductionPivot2107 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2107 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2107 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2104, reductionProjection1961, reductionProjection2105, reductionProjection2106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2107 (0 : Fin 4)) = canonicalInput3007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3007 hH))).trans (reductionSound2104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2107 (1 : Fin 4)) = canonicalInput16221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1961 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1961 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16221 hH))).trans (reductionSound1961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2107 (2 : Fin 4)) = canonicalInput16316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2105 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16316 hH))).trans (reductionSound2105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2107 (3 : Fin 4)) = canonicalInput16317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2106 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2107 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16317 hH))).trans (reductionSound2106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7509).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2107 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7509).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2107 (j : Fin 4)))
      2 576 576 2 ![1, 1, 1, 288] ![576, 576, 576, 2] reductionProjection2107 ![reductionProjection2104, reductionProjection1961, reductionProjection2105, reductionProjection2106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2108 : Integer.Sparse (Fin 1613) := [(265, 1)]

theorem reductionSound2108 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code265).moment H =
      Integer.Sparse.eval reductionProjection2108 (momentVector H) := by
  have hc : coordinates (265 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code265) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2108, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2109 : Integer.Sparse (Fin 1613) := [(1169, 1)]

theorem reductionSound2109 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1169).moment H =
      Integer.Sparse.eval reductionProjection2109 (momentVector H) := by
  have hc : coordinates (1169 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1169) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2109, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2110 : Integer.Sparse (Fin 1613) := [(602, 1), (635, 1), (1017, -2), (1027, 1), (1151, -2), (1169, -2), (1175, 1)]

def reductionPivot2110 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![1, 0, -2, 1, 0], ![-2, 2, 0, -1, 1], ![3, -1, 1, -1, -2]]

theorem reductionSound2110 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * (normalNode9157).moment H =
      Integer.Sparse.eval reductionProjection2110 (momentVector H) := by
  have heq : reductionPivot2110 = (fun u v => (normalNode9157).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9157).moment H = injectiveMoment H reductionPivot2110 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9157).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9157).entries)).symm
  have hshape : reductionPivot2110 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2110 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2110 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1960, reductionProjection2097, reductionProjection2109, reductionProjection2102] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2110 (0 : Fin 4)) = canonicalInput4629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1960 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4629 hH))).trans (reductionSound1960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2110 (1 : Fin 4)) = canonicalInput18436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2097 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18436 hH))).trans (reductionSound2097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2110 (2 : Fin 4)) = canonicalInput18523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18523 hH))).trans (reductionSound2109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2110 (3 : Fin 4)) = canonicalInput18524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2102 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2110 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18524 hH))).trans (reductionSound2102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9157).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2110 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9157).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2110 (j : Fin 4)))
      2 4 4 2 ![1, 1, 1, 2] ![4, 4, 4, 2] reductionProjection2110 ![reductionProjection1960, reductionProjection2097, reductionProjection2109, reductionProjection2102]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2111 : Integer.Sparse (Fin 1613) := [(0, -39), (94, -40), (169, -720), (265, -2880), (478, -720), (483, -720), (489, -720), (505, -720), (602, -3600), (610, -720), (635, -2160), (697, 240), (698, -2080), (809, -720), (960, 1440), (1017, 1440), (1027, -2160), (1059, -240), (1095, -720), (1151, 1440), (1153, 1440), (1169, 1440), (1175, -1440), (1219, 480), (1221, 240), (1223, 240), (1226, -880), (1227, -1600), (1251, 535), (1355, 1440), (1389, 720)]

def reductionPivot2111 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound2111 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1147).moment H =
      Integer.Sparse.eval reductionProjection2111 (momentVector H) := by
  have heq : reductionPivot2111 = (fun u v => (normalNode1147).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1147).moment H = injectiveMoment H reductionPivot2111 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1147).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot2111 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2111 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 576, 1, 4] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2111 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2103, reductionProjection1971, reductionProjection2107, reductionProjection2108, reductionProjection2110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2111 (0 : Fin 5)) = canonicalInput6396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2103 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6396 hH))).trans (reductionSound2103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2111 (1 : Fin 5)) = canonicalInput2558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1971 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2558 hH))).trans (reductionSound1971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2111 (2 : Fin 5)) = canonicalInput2507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2107 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2507 hH))).trans (reductionSound2107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2111 (3 : Fin 5)) = canonicalInput2504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2108 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2504 hH))).trans (reductionSound2108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2111 (4 : Fin 5)) = canonicalInput2503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2110 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2111 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2503 hH))).trans (reductionSound2110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1147).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2111 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1147).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2111 (j : Fin 5)))
      1 2880 2880 1 ![2880, 576, 576, 1, 4] ![1, 5, 5, 2880, 720] reductionProjection2111 ![reductionProjection2103, reductionProjection1971, reductionProjection2107, reductionProjection2108, reductionProjection2110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

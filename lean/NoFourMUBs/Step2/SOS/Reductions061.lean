import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical016
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical039
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical047
import NoFourMUBs.Step2.SOS.Canonical052
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical108
import NoFourMUBs.Step2.SOS.Canonical136
import NoFourMUBs.Step2.SOS.Canonical137
import NoFourMUBs.Step2.SOS.Canonical138
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical141
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical202
import NoFourMUBs.Step2.SOS.Canonical207
import NoFourMUBs.Step2.SOS.Canonical229
import NoFourMUBs.Step2.SOS.Canonical230
import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical254
import NoFourMUBs.Step2.SOS.Canonical255
import NoFourMUBs.Step2.SOS.Canonical261
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical329
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions059
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1952 : Integer.Sparse (Fin 1613) := [(3, 20), (4, -1), (19, 8), (20, -3), (94, -3), (101, 96), (102, 48), (105, -16), (106, -16), (243, -48), (703, -32), (1251, -5)]

def reductionPivot1952 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound1952 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1127).moment H =
      Integer.Sparse.eval reductionProjection1952 (momentVector H) := by
  have heq : reductionPivot1952 = (fun u v => (normalNode1127).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1127).moment H = injectiveMoment H reductionPivot1952 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1127).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1952 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1952 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1952 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1174, reductionProjection1915, reductionProjection686, reductionProjection1801] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1952 (0 : Fin 4)) = canonicalInput6342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6342 hH))).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1952 (1 : Fin 4)) = canonicalInput2482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1915 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2482 hH))).trans (reductionSound1915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1952 (2 : Fin 4)) = canonicalInput2454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection686 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2454 hH))).trans (reductionSound686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1952 (3 : Fin 4)) = canonicalInput2451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1801 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1952 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2451 hH))).trans (reductionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1127).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1952 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1127).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1952 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 144] ![2, 32, 2, 2] reductionProjection1952 ![oldProjection1174, reductionProjection1915, reductionProjection686, reductionProjection1801]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1953 : Integer.Sparse (Fin 1613) := [(917, 1)]

theorem reductionSound1953 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code917).moment H =
      Integer.Sparse.eval reductionProjection1953 (momentVector H) := by
  have hc : coordinates (917 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code917) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1953, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1954 : Integer.Sparse (Fin 1613) := [(904, 1)]

theorem reductionSound1954 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code904).moment H =
      Integer.Sparse.eval reductionProjection1954 (momentVector H) := by
  have hc : coordinates (904 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code904) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1954, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1955 : Integer.Sparse (Fin 1613) := [(452, 1)]

theorem reductionSound1955 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code452).moment H =
      Integer.Sparse.eval reductionProjection1955 (momentVector H) := by
  have hc : coordinates (452 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code452) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1955, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1956 : Integer.Sparse (Fin 1613) := [(0, -1), (452, -360), (465, 180), (610, 180), (698, 80), (904, -360), (917, -360), (1055, -60), (1058, -60), (1059, 20), (1227, 60), (1251, -15)]

def reductionPivot1956 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![-1, 0, -1, 1, 1], ![1, -2, 1, 0, 0], ![3, 2, -1, -2, -2]]

theorem reductionSound1956 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6340).moment H =
      Integer.Sparse.eval reductionProjection1956 (momentVector H) := by
  have heq : reductionPivot1956 = (fun u v => (normalNode6340).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6340).moment H = injectiveMoment H reductionPivot1956 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6340).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6340).entries)).symm
  have hshape : reductionPivot1956 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1956 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1956 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1953, reductionProjection1954, reductionProjection1955, oldProjection1759] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1956 (0 : Fin 4)) = canonicalInput436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1953 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound436 hH))).trans (reductionSound1953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1956 (1 : Fin 4)) = canonicalInput9010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1954 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1954 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9010 hH))).trans (reductionSound1954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1956 (2 : Fin 4)) = canonicalInput9035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1955 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9035 hH))).trans (reductionSound1955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1956 (3 : Fin 4)) = canonicalInput9036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1956 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9036 hH))).trans (oldProjectionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6340).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1956 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6340).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1956 (j : Fin 4)))
      2 720 720 2 ![1, 1, 1, 360] ![720, 720, 720, 2] reductionProjection1956 ![reductionProjection1953, reductionProjection1954, reductionProjection1955, oldProjection1759]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1957 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -44), (20, 1), (94, 38), (228, -48), (241, 32), (247, 96), (483, 144), (484, 144), (549, 144), (610, 144), (698, 64), (704, 32), (1251, 8), (1333, 144), (1389, -48)]

def reductionPivot1957 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -2, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]

theorem reductionSound1957 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6342).moment H =
      Integer.Sparse.eval reductionProjection1957 (momentVector H) := by
  have heq : reductionPivot1957 = (fun u v => (normalNode6342).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6342).moment H = injectiveMoment H reductionPivot1957 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6342).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1957 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1957 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1957 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1559, oldProjection2597, oldProjection2509, oldProjection1679] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1957 (0 : Fin 4)) = canonicalInput12884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12884 hH))).trans (oldProjectionSound1559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1957 (1 : Fin 4)) = canonicalInput12919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2597 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12919 hH))).trans (oldProjectionSound2597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1957 (2 : Fin 4)) = canonicalInput12921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2509 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12921 hH))).trans (oldProjectionSound2509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1957 (3 : Fin 4)) = canonicalInput12922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1957 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12922 hH))).trans (oldProjectionSound1679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6342).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1957 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6342).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1957 (j : Fin 4)))
      2 576 2880 10 ![288, 1440, 1440, 288] ![10, 2, 2, 10] reductionProjection1957 ![oldProjection1559, oldProjection2597, oldProjection2509, oldProjection1679]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1958 : Integer.Sparse (Fin 1613) := [(94, -1), (483, -144), (698, -64), (809, -144), (1219, 48), (1223, 48), (1226, -64), (1227, -48), (1251, 3)]

def reductionPivot1958 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, -1, 1, -1]]

theorem reductionSound1958 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4559).moment H =
      Integer.Sparse.eval reductionProjection1958 (momentVector H) := by
  have heq : reductionPivot1958 = (fun u v => (normalNode4559).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4559).moment H = injectiveMoment H reductionPivot1958 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4559).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1958 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1958 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1958 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection487, oldProjection604, oldProjection1249, oldProjection1239] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1958 (0 : Fin 4)) = canonicalInput11134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11134 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1958 (1 : Fin 4)) = canonicalInput8925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection604 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8925 hH))).trans (oldProjectionSound604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1958 (2 : Fin 4)) = canonicalInput8864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8864 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1958 (3 : Fin 4)) = canonicalInput8863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1958 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8863 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4559).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1958 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4559).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1958 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 9] ![288, 288, 2, 32] reductionProjection1958 ![oldProjection487, oldProjection604, oldProjection1249, oldProjection1239]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1959 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -40), (94, 45), (174, 720), (247, 80), (465, 720), (483, 720), (484, 720), (610, 1440), (698, 800), (704, 80), (809, 720), (1022, 720), (1055, -240), (1058, -240), (1059, 80), (1219, -240), (1223, -240), (1226, 320), (1227, 480), (1251, -85)]

def reductionPivot1959 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 1, -1, 0, -1]]

theorem reductionSound1959 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6343).moment H =
      Integer.Sparse.eval reductionProjection1959 (momentVector H) := by
  have heq : reductionPivot1959 = (fun u v => (normalNode6343).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6343).moment H = injectiveMoment H reductionPivot1959 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6343).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1959 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1959 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 288, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1959 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1759, oldProjection2621, reductionProjection1958, reductionProjection926] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1959 (0 : Fin 4)) = canonicalInput12935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12935 hH))).trans (oldProjectionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1959 (1 : Fin 4)) = canonicalInput12895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2621 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12895 hH))).trans (oldProjectionSound2621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1959 (2 : Fin 4)) = canonicalInput12890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1958 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12890 hH))).trans (reductionSound1958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1959 (3 : Fin 4)) = canonicalInput12889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection926 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1959 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection926 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12889 hH))).trans (reductionSound926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6343).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1959 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6343).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1959 (j : Fin 4)))
      2 2880 2880 2 ![360, 720, 288, 2] ![8, 4, 10, 1440] reductionProjection1959 ![oldProjection1759, oldProjection2621, reductionProjection1958, reductionProjection926]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1960 : Integer.Sparse (Fin 1613) := [(1017, 1)]

theorem reductionSound1960 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1017).moment H =
      Integer.Sparse.eval reductionProjection1960 (momentVector H) := by
  have hc : coordinates (1017 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1017) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1960, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1961 : Integer.Sparse (Fin 1613) := [(960, 1)]

theorem reductionSound1961 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code960).moment H =
      Integer.Sparse.eval reductionProjection1961 (momentVector H) := by
  have hc : coordinates (960 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code960) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1961, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1962 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (602, -720), (610, -720), (698, -400), (1226, -320), (1227, -320), (1251, 55)]

def reductionPivot1962 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound1962 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4536).moment H =
      Integer.Sparse.eval reductionProjection1962 (momentVector H) := by
  have heq : reductionPivot1962 = (fun u v => (normalNode4536).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4536).moment H = injectiveMoment H reductionPivot1962 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4536).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1962 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1962 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1962 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection513, oldProjection510, oldProjection838, oldProjection1249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1962 (0 : Fin 4)) = canonicalInput11128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11128 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1962 (1 : Fin 4)) = canonicalInput8907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8907 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1962 (2 : Fin 4)) = canonicalInput8785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8785 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1962 (3 : Fin 4)) = canonicalInput8781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1962 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8781 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4536).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1962 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4536).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1962 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 144] ![1440, 1440, 2, 10] reductionProjection1962 ![oldProjection513, oldProjection510, oldProjection838, oldProjection1249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1963 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 15), (483, 720), (602, 720), (610, 720), (698, 720), (809, 720), (960, -1440), (1017, -1440), (1219, -240), (1223, -240), (1226, 640), (1227, 560), (1251, -70)]

def reductionPivot1963 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 2, -1, -1], ![1, -1, -1, -1, 2], ![1, 2, -1, 1, -3]]

theorem reductionSound1963 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8508).moment H =
      Integer.Sparse.eval reductionProjection1963 (momentVector H) := by
  have heq : reductionPivot1963 = (fun u v => (normalNode8508).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8508).moment H = injectiveMoment H reductionPivot1963 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8508).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8508).entries)).symm
  have hshape : reductionPivot1963 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1963 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1963 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1960, reductionProjection1961, reductionProjection1958, reductionProjection1962] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1963 (0 : Fin 4)) = canonicalInput3386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1960 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3386 hH))).trans (reductionSound1960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1963 (1 : Fin 4)) = canonicalInput16294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1961 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1961 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16294 hH))).trans (reductionSound1961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1963 (2 : Fin 4)) = canonicalInput16736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1958 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16736 hH))).trans (reductionSound1958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1963 (3 : Fin 4)) = canonicalInput16745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1962 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1963 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16745 hH))).trans (reductionSound1962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8508).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1963 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8508).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1963 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 288, 1440] ![2880, 2880, 10, 2] reductionProjection1963 ![reductionProjection1960, reductionProjection1961, reductionProjection1958, reductionProjection1962]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1964 : Integer.Sparse (Fin 1613) := [(1206, 1)]

theorem reductionSound1964 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1206).moment H =
      Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
  have hc : coordinates (1206 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1206) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1964, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1965 : Integer.Sparse (Fin 1613) := [(483, -1), (610, -1), (1022, -1), (1206, -1)]

def reductionPivot1965 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, -1, 1, -1]]

theorem reductionSound1965 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5534).moment H =
      Integer.Sparse.eval reductionProjection1965 (momentVector H) := by
  have heq : reductionPivot1965 = (fun u v => (normalNode5534).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5534).moment H = injectiveMoment H reductionPivot1965 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5534).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1965 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1965 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1965 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection487, reductionProjection1964, oldProjection513, reductionProjection925] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1965 (0 : Fin 4)) = canonicalInput11134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11134 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1965 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1965 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4845 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4845 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1965 (3 : Fin 4)) = canonicalInput10801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1965 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10801 hH))).trans (reductionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5534).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1965 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5534).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1965 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1965 ![oldProjection487, reductionProjection1964, oldProjection513, reductionProjection925]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1966 : Integer.Sparse (Fin 1613) := [(94, 3), (174, 144), (483, 288), (484, 288), (610, 144), (698, 16), (1022, 288), (1206, 144), (1251, -1)]

def reductionPivot1966 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2]]

theorem reductionSound1966 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6352).moment H =
      Integer.Sparse.eval reductionProjection1966 (momentVector H) := by
  have heq : reductionPivot1966 = (fun u v => (normalNode6352).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6352).moment H = injectiveMoment H reductionPivot1966 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6352).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1966 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1966 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 2, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1966 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection513, oldProjection1679, reductionProjection926, reductionProjection1965] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1966 (0 : Fin 4)) = canonicalInput23962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound23962 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1966 (1 : Fin 4)) = canonicalInput12933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12933 hH))).trans (oldProjectionSound1679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1966 (2 : Fin 4)) = canonicalInput12894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection926 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection926 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12894 hH))).trans (reductionSound926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1966 (3 : Fin 4)) = canonicalInput12887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1965 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1966 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12887 hH))).trans (reductionSound1965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6352).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1966 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6352).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1966 (j : Fin 4)))
      2 576 576 2 ![1, 288, 2, 2] ![576, 2, 288, 288] reductionProjection1966 ![oldProjection513, oldProjection1679, reductionProjection926, reductionProjection1965]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1967 : Integer.Sparse (Fin 1613) := [(19, 52), (20, -1), (94, -53), (174, -288), (228, 48), (241, -32), (247, -112), (452, 288), (465, -288), (483, -720), (484, -576), (549, -144), (602, -144), (610, -864), (698, -448), (704, -48), (809, -288), (904, 288), (917, 288), (960, 288), (1017, 288), (1022, -432), (1055, 96), (1058, 96), (1059, -32), (1206, -144), (1219, 96), (1223, 96), (1226, -192), (1227, -256), (1251, 36), (1333, -144), (1389, 48)]

def reductionPivot1967 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2], ![1, 1, -1, 0, -1]]

theorem reductionSound1967 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode1132).moment H =
      Integer.Sparse.eval reductionProjection1967 (momentVector H) := by
  have heq : reductionPivot1967 = (fun u v => (normalNode1132).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1132).moment H = injectiveMoment H reductionPivot1967 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1132).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1967 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1967 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 576, 2880, 2880, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1967 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1956, reductionProjection1957, reductionProjection1959, reductionProjection1963, reductionProjection1966] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1967 (0 : Fin 5)) = canonicalInput1081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1956 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1081 hH))).trans (reductionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1967 (1 : Fin 5)) = canonicalInput2501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1957 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1957 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2501 hH))).trans (reductionSound1957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1967 (2 : Fin 5)) = canonicalInput2524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1959 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1959 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2524 hH))).trans (reductionSound1959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1967 (3 : Fin 5)) = canonicalInput2532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1963 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1963 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2532 hH))).trans (reductionSound1963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1967 (4 : Fin 5)) = canonicalInput2535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1966 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1967 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1966 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2535 hH))).trans (reductionSound1966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1132).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1967 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1132).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1967 (j : Fin 5)))
      1 576 2880 5 ![720, 576, 2880, 2880, 576] ![4, 5, 1, 1, 5] reductionProjection1967 ![reductionProjection1956, reductionProjection1957, reductionProjection1959, reductionProjection1963, reductionProjection1966]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1968 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 120), (20, -5), (94, -90), (241, -240), (243, -80), (247, -160), (326, -720), (698, -160), (704, -80), (1251, -15)]

def reductionPivot1968 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1968 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1279).moment H =
      Integer.Sparse.eval reductionProjection1968 (momentVector H) := by
  have heq : reductionPivot1968 = (fun u v => (normalNode1279).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1279).moment H = injectiveMoment H reductionPivot1968 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1279).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1968 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1968 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1968 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection786, oldProjection769, oldProjection464, oldProjection906] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1968 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1152 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1152 hH))).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1968 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1642 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1642 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1968 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1968 (3 : Fin 4)) = canonicalInput2825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection906 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1968 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2825 hH))).trans (oldProjectionSound906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1279).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1968 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1279).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1968 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 1, 720] ![4, 2, 1440, 2] reductionProjection1968 ![oldProjection786, oldProjection769, oldProjection464, oldProjection906]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1969 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 15), (94, -20), (241, -20), (247, -40), (698, -40), (1251, 10)]

def reductionPivot1969 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -1, 1]]

theorem reductionSound1969 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode9085).moment H =
      Integer.Sparse.eval reductionProjection1969 (momentVector H) := by
  have heq : reductionPivot1969 = (fun u v => (normalNode9085).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9085).moment H = injectiveMoment H reductionPivot1969 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9085).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1969 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1969 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1969 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection972, oldProjection1081, oldProjection1260, oldProjection1083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1969 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6321 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6321 hH))).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1969 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1081 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1081 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1969 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6542 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6542 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1969 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1969 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9085).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1969 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9085).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1969 (j : Fin 4)))
      2 360 720 4 ![720, 144, 720, 720] ![1, 5, 1, 1] reductionProjection1969 ![oldProjection972, oldProjection1081, oldProjection1260, oldProjection1083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1970 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -36), (20, 1), (94, 41), (241, 64), (243, 16), (247, 64), (326, 144), (478, 144), (483, 144), (489, 144), (549, 144), (698, 96), (704, 16), (1227, 32), (1251, -26), (1333, 144), (1389, -96)]

def reductionPivot1970 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -2, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound1970 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6341).moment H =
      Integer.Sparse.eval reductionProjection1970 (momentVector H) := by
  have heq : reductionPivot1970 = (fun u v => (normalNode6341).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6341).moment H = injectiveMoment H reductionPivot1970 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6341).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1970 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1970 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 360, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1970 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1968, reductionProjection1969, oldProjection1711, oldProjection2509] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1970 (0 : Fin 4)) = canonicalInput12883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1968 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12883 hH))).trans (reductionSound1968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1970 (1 : Fin 4)) = canonicalInput12918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1969 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12918 hH))).trans (reductionSound1969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1970 (2 : Fin 4)) = canonicalInput12920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1711 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12920 hH))).trans (oldProjectionSound1711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1970 (3 : Fin 4)) = canonicalInput12921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2509 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1970 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12921 hH))).trans (oldProjectionSound2509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6341).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1970 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6341).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1970 (j : Fin 4)))
      2 576 2880 10 ![1440, 360, 1440, 1440] ![2, 8, 2, 2] reductionProjection1970 ![reductionProjection1968, reductionProjection1969, oldProjection1711, oldProjection2509]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1971 : Integer.Sparse (Fin 1613) := [(94, 1), (169, 144), (478, 144), (483, 144), (489, 144), (505, 144), (602, 288), (697, -48), (698, 176), (809, 144), (1059, 16), (1095, 144), (1219, -96), (1223, -48), (1226, 80), (1227, 96), (1251, -27), (1389, -48)]

def reductionPivot1971 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 1, -1, 0, -1]]

theorem reductionSound1971 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6346).moment H =
      Integer.Sparse.eval reductionProjection1971 (momentVector H) := by
  have heq : reductionPivot1971 = (fun u v => (normalNode6346).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6346).moment H = injectiveMoment H reductionPivot1971 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6346).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1971 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1971 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 360, 288, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1971 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1829, reductionProjection1359, reductionProjection1958, oldProjection2188] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1971 (0 : Fin 4)) = canonicalInput14900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1829 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14900 hH))).trans (oldProjectionSound1829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1971 (1 : Fin 4)) = canonicalInput12927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1359 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12927 hH))).trans (reductionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1971 (2 : Fin 4)) = canonicalInput12890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1958 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12890 hH))).trans (reductionSound1958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1971 (3 : Fin 4)) = canonicalInput12886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2188 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1971 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12886 hH))).trans (oldProjectionSound2188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6346).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1971 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6346).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1971 (j : Fin 4)))
      2 576 2880 10 ![360, 360, 288, 2] ![8, 8, 10, 1440] reductionProjection1971 ![oldProjection1829, reductionProjection1359, reductionProjection1958, oldProjection2188]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1972 : Integer.Sparse (Fin 1613) := [(270, 1)]

theorem reductionSound1972 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code270).moment H =
      Integer.Sparse.eval reductionProjection1972 (momentVector H) := by
  have hc : coordinates (270 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code270) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1972, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1973 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (478, -720), (577, -720), (698, -160), (1022, -720), (1221, 240), (1226, -80), (1227, -80), (1251, 30)]

def reductionPivot1973 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 0, 2, -2], ![1, -2, -2, 3], ![1, 1, -1, -1]]

theorem reductionSound1973 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4509).moment H =
      Integer.Sparse.eval reductionProjection1973 (momentVector H) := by
  have heq : reductionPivot1973 = (fun u v => (normalNode4509).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4509).moment H = injectiveMoment H reductionPivot1973 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4509).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1973 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1973 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1973 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection484, reductionProjection925, oldProjection1111, reductionProjection1252] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1973 (0 : Fin 4)) = canonicalInput11112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11112 hH))).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1973 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1022).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1973 (2 : Fin 4)) = canonicalInput8721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8721 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1973 (3 : Fin 4)) = canonicalInput8719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1252 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1973 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8719 hH))).trans (reductionSound1252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4509).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1973 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4509).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1973 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection1973 ![oldProjection484, reductionProjection925, oldProjection1111, reductionProjection1252]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1974 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 5), (478, 720), (483, 720), (489, 360), (577, 360), (610, 720), (698, 240), (1022, 720), (1206, 360), (1221, -240), (1226, 80), (1227, 280), (1251, -90), (1389, -240)]

def reductionPivot1974 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -2, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound1974 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6349).moment H =
      Integer.Sparse.eval reductionProjection1974 (momentVector H) := by
  have heq : reductionPivot1974 = (fun u v => (normalNode6349).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6349).moment H = injectiveMoment H reductionPivot1974 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6349).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1974 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1974 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1974 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1819, oldProjection1711, reductionProjection1973, reductionProjection1965] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1974 (0 : Fin 4)) = canonicalInput14904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1819 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14904 hH))).trans (oldProjectionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1974 (1 : Fin 4)) = canonicalInput12928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1711 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12928 hH))).trans (oldProjectionSound1711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1974 (2 : Fin 4)) = canonicalInput12892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1973 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12892 hH))).trans (reductionSound1973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1974 (3 : Fin 4)) = canonicalInput12887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1965 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1974 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12887 hH))).trans (reductionSound1965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6349).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1974 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6349).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1974 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 2] ![1, 1, 1, 720] reductionProjection1974 ![oldProjection1819, oldProjection1711, reductionProjection1973, reductionProjection1965]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1975 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 36), (20, -1), (94, -44), (169, -144), (241, -64), (243, -16), (247, -64), (270, -576), (326, -144), (452, 288), (465, -144), (478, -576), (483, -576), (489, -432), (505, -144), (549, -144), (577, -144), (602, -288), (610, -432), (697, 48), (698, -432), (704, -16), (809, -144), (904, 288), (917, 288), (1022, -288), (1055, 48), (1058, 48), (1059, -32), (1095, -144), (1206, -144), (1219, 96), (1221, 96), (1223, 48), (1226, -112), (1227, -288), (1251, 101), (1333, -144), (1389, 240)]

def reductionPivot1975 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound1975 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode1133).moment H =
      Integer.Sparse.eval reductionProjection1975 (momentVector H) := by
  have heq : reductionPivot1975 = (fun u v => (normalNode1133).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1133).moment H = injectiveMoment H reductionPivot1975 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1133).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1975 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1975 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 576, 576, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1975 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1956, reductionProjection1970, reductionProjection1971, reductionProjection1972, reductionProjection1974] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1975 (0 : Fin 5)) = canonicalInput1082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1956 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound1082 hH))).trans (reductionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1975 (1 : Fin 5)) = canonicalInput2502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1970 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2502 hH))).trans (reductionSound1970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1975 (2 : Fin 5)) = canonicalInput2528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1971 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2528 hH))).trans (reductionSound1971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1975 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code270).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1972 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound1972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1975 (4 : Fin 5)) = canonicalInput2540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1974 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1975 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2540 hH))).trans (reductionSound1974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1133).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1975 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1133).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1975 (j : Fin 5)))
      1 576 2880 5 ![720, 576, 576, 1, 1440] ![4, 5, 5, 2880, 2] reductionProjection1975 ![reductionProjection1956, reductionProjection1970, reductionProjection1971, reductionProjection1972, reductionProjection1974]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1976 : Integer.Sparse (Fin 1613) := [(415, 1)]

theorem reductionSound1976 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code415).moment H =
      Integer.Sparse.eval reductionProjection1976 (momentVector H) := by
  have hc : coordinates (415 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code415) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1976, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1977 : Integer.Sparse (Fin 1613) := [(1043, 1)]

theorem reductionSound1977 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1043).moment H =
      Integer.Sparse.eval reductionProjection1977 (momentVector H) := by
  have hc : coordinates (1043 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1043) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1977, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1978 : Integer.Sparse (Fin 1613) := [(0, 1), (680, -480), (698, -80), (1043, -480), (1050, 240), (1052, 240), (1059, -80), (1221, 240), (1251, 15)]

def reductionPivot1978 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -2, 0, 2, 0], ![-2, 0, 2, -1, 1], ![3, 2, -2, -1, -2]]

theorem reductionSound1978 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9843).moment H =
      Integer.Sparse.eval reductionProjection1978 (momentVector H) := by
  have heq : reductionPivot1978 = (fun u v => (normalNode9843).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9843).moment H = injectiveMoment H reductionPivot1978 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9843).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9843).entries)).symm
  have hshape : reductionPivot1978 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1978 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 480] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1978 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection534, reductionProjection1977, oldProjection642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1978 (0 : Fin 3)) = canonicalInput13305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1978 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection534 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1978 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13305 hH))).trans (oldProjectionSound534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1978 (1 : Fin 3)) = canonicalInput24168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1978 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1977 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1978 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24168 hH))).trans (reductionSound1977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1978 (2 : Fin 3)) = canonicalInput24171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1978 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection642 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1978 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24171 hH))).trans (oldProjectionSound642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9843).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1978 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9843).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1978 (j : Fin 3)))
      3 1440 1440 3 ![1, 1, 480] ![1440, 1440, 3] reductionProjection1978 ![oldProjection534, reductionProjection1977, oldProjection642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1979 : Integer.Sparse (Fin 1613) := [(1320, 1)]

theorem reductionSound1979 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1320).moment H =
      Integer.Sparse.eval reductionProjection1979 (momentVector H) := by
  have hc : coordinates (1320 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1320) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1979, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1980 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (680, -160), (697, 80), (1250, -20), (1251, 10), (1320, -160), (1389, 80)]

def reductionPivot1980 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![-1, 2, -2, 1, 0], ![3, -1, 2, -2, -2]]

theorem reductionSound1980 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode7895).moment H =
      Integer.Sparse.eval reductionProjection1980 (momentVector H) := by
  have heq : reductionPivot1980 = (fun u v => (normalNode7895).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7895).moment H = injectiveMoment H reductionPivot1980 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7895).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7895).entries)).symm
  have hshape : reductionPivot1980 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1980 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 160] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1980 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection534, reductionProjection1979, oldProjection1136] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1980 (0 : Fin 3)) = canonicalInput3010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1980 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection534 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1980 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3010 hH))).trans (oldProjectionSound534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1980 (1 : Fin 3)) = canonicalInput16224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1980 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1979 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1980 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16224 hH))).trans (reductionSound1979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1980 (2 : Fin 3)) = canonicalInput16325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((160 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1980 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection1136 (momentVector H)
      have hh : (160 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1980 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (160 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16325 hH))).trans (oldProjectionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7895).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1980 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7895).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1980 (j : Fin 3)))
      3 480 480 3 ![1, 1, 160] ![480, 480, 3] reductionProjection1980 ![oldProjection534, reductionProjection1979, oldProjection1136]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1981 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 7), (415, -288), (680, 192), (697, -96), (698, 48), (1043, 96), (1050, -96), (1052, -96), (1059, 48), (1221, -96), (1250, 24), (1251, -12), (1320, 96), (1389, -96)]

def reductionPivot1981 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![-1, -1, 0, 1, 1], ![0, 2, -2, 0, 0], ![3, -1, 2, -2, -2]]

theorem reductionSound1981 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode7527).moment H =
      Integer.Sparse.eval reductionProjection1981 (momentVector H) := by
  have heq : reductionPivot1981 = (fun u v => (normalNode7527).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7527).moment H = injectiveMoment H reductionPivot1981 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7527).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode7527).entries)).symm
  have hshape : reductionPivot1981 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1981 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 480, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1981 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1976, reductionProjection1978, reductionProjection1980, reductionProjection951] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1981 (0 : Fin 4)) = canonicalInput6938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1976 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6938 hH))).trans (reductionSound1976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1981 (1 : Fin 4)) = canonicalInput21045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1978 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21045 hH))).trans (reductionSound1978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1981 (2 : Fin 4)) = canonicalInput21097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1980 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21097 hH))).trans (reductionSound1980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1981 (3 : Fin 4)) = canonicalInput21099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1981 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21099 hH))).trans (reductionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7527).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1981 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7527).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1981 (j : Fin 4)))
      2 576 2880 10 ![1, 1440, 480, 1440] ![2880, 2, 6, 2] reductionProjection1981 ![reductionProjection1976, reductionProjection1978, reductionProjection1980, reductionProjection951]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1982 : Integer.Sparse (Fin 1613) := [(0, 4), (19, -10), (81, -60), (94, 25), (228, -60), (241, 20), (243, 20), (247, 20), (294, 180), (433, 180), (434, 180), (698, 280), (704, 20), (1052, -60), (1059, 20), (1219, -60), (1221, -60), (1223, -60), (1226, 100), (1227, 180), (1251, -55), (1389, -60)]

def reductionPivot1982 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound1982 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7528).moment H =
      Integer.Sparse.eval reductionProjection1982 (momentVector H) := by
  have heq : reductionPivot1982 = (fun u v => (normalNode7528).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7528).moment H = injectiveMoment H reductionPivot1982 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7528).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1982 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1982 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1982 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1576, oldProjection2813, oldProjection1688, oldProjection2318] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1982 (0 : Fin 4)) = canonicalInput14667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1576 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14667 hH))).trans (oldProjectionSound1576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1982 (1 : Fin 4)) = canonicalInput14722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14722 hH))).trans (oldProjectionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1982 (2 : Fin 4)) = canonicalInput14730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14730 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1982 (3 : Fin 4)) = canonicalInput14731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2318 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1982 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14731 hH))).trans (oldProjectionSound2318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7528).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1982 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7528).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1982 (j : Fin 4)))
      2 720 1440 4 ![72, 1440, 720, 1440] ![20, 1, 2, 1] reductionProjection1982 ![oldProjection1576, oldProjection2813, oldProjection1688, oldProjection2318]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1983 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -10), (81, -120), (94, 35), (241, 40), (243, 40), (430, 360), (433, 360), (682, -120), (697, -360), (698, 520), (704, 40), (1050, -120), (1052, -480), (1059, 240), (1217, -120), (1221, -480), (1226, 80), (1227, 160), (1250, 30), (1251, -115), (1389, -240)]

def reductionPivot1983 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound1983 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7533).moment H =
      Integer.Sparse.eval reductionProjection1983 (momentVector H) := by
  have heq : reductionPivot1983 = (fun u v => (normalNode7533).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7533).moment H = injectiveMoment H reductionPivot1983 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7533).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1983 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1983 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1983 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1800, oldProjection1507, oldProjection1688, oldProjection2369] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1983 (0 : Fin 4)) = canonicalInput15941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1800 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15941 hH))).trans (oldProjectionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1983 (1 : Fin 4)) = canonicalInput14756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1507 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14756 hH))).trans (oldProjectionSound1507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1983 (2 : Fin 4)) = canonicalInput14730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14730 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1983 (3 : Fin 4)) = canonicalInput14728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1983 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14728 hH))).trans (oldProjectionSound2369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7533).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1983 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7533).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1983 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 720, 1440] ![1, 1, 2, 1] reductionProjection1983 ![oldProjection1800, oldProjection1507, oldProjection1688, oldProjection2369]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

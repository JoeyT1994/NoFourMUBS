import NoFourMUBs.Step2.SOS.Canonical113
import NoFourMUBs.Step2.SOS.Canonical128
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical130
import NoFourMUBs.Step2.SOS.Canonical131
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical162
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions101
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions220
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions244
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical103
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical116
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical146
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical148
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection7840 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -144), (94, 17), (241, 16), (243, 16), (438, 144), (454, 144), (461, 144), (462, 144), (505, 144), (508, 144), (659, 144), (697, -48), (698, 160), (700, 80), (704, 16), (895, 144), (935, -288), (1226, 80), (1227, 32), (1251, -2)]

def reductionPivot7840 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound7840 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4173).moment H =
      Integer.Sparse.eval reductionProjection7840 (momentVector H) := by
  have heq : reductionPivot7840 = (fun u v => (normalNode4173).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4173).moment H = injectiveMoment H reductionPivot7840 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4173).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7840 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7840 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 360, 18, 1, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7840 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7589, oldProjection1643, reductionProjection4364, reductionProjection5884, reductionProjection4778] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7840 (0 : Fin 5)) = canonicalInput10993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7589 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10993 hH))).trans (reductionSound7589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7840 (1 : Fin 5)) = canonicalInput8403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8403 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7840 (2 : Fin 5)) = canonicalInput8198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4364 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8198 hH))).trans (reductionSound4364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7840 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code935).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5884 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5884 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7840 (4 : Fin 5)) = (normalNode4174).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4778 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7840 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4173).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7840 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4173).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7840 (j : Fin 5)))
      1 288 1440 5 ![1440, 360, 18, 1, 144] ![1, 4, 80, 1440, 10] reductionProjection7840 ![reductionProjection7589, oldProjection1643, reductionProjection4364, reductionProjection5884, reductionProjection4778]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7841 : Integer.Sparse (Fin 1613) := [(81, 48), (94, -1), (438, -144), (659, -144), (698, -32), (895, -144), (1226, -32), (1227, -16), (1251, 3)]

def reductionPivot7841 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, -1, 2, -2], ![1, 2, -3, 0]]

theorem reductionSound7841 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4182).moment H =
      Integer.Sparse.eval reductionProjection7841 (momentVector H) := by
  have heq : reductionPivot7841 = (fun u v => (normalNode4182).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4182).moment H = injectiveMoment H reductionPivot7841 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4182).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7841 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7841 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7841 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3031, oldProjection1016, reductionProjection3372, reductionProjection4777] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7841 (0 : Fin 4)) = canonicalInput10998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3031 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10998 hH))).trans (reductionSound3031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7841 (1 : Fin 4)) = canonicalInput8447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1016 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8447 hH))).trans (oldProjectionSound1016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7841 (2 : Fin 4)) = canonicalInput8233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3372 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8233 hH))).trans (reductionSound3372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7841 (3 : Fin 4)) = canonicalInput8230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7841 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8230 hH))).trans (reductionSound4777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4182).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7841 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4182).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7841 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection7841 ![reductionProjection3031, oldProjection1016, reductionProjection3372, reductionProjection4777]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7842 : Integer.Sparse (Fin 1613) := [(81, -24), (94, 5), (426, 72), (427, 72), (438, 72), (478, 72), (479, 72), (483, 72), (602, 72), (603, 72), (659, 72), (666, 72), (698, 56), (895, 72), (936, -144), (1226, 48), (1227, 48), (1251, -7), (1389, -24)]

def reductionPivot7842 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound7842 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4175).moment H =
      Integer.Sparse.eval reductionProjection7842 (momentVector H) := by
  have heq : reductionPivot7842 = (fun u v => (normalNode4175).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4175).moment H = injectiveMoment H reductionPivot7842 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4175).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7842 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7842 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7842 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7619, reductionProjection7054, reductionProjection3243, reductionProjection7841, oldProjection2225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7842 (0 : Fin 5)) = canonicalInput9367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7619 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9367 hH))).trans (reductionSound7619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7842 (1 : Fin 5)) = canonicalInput8253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7054 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8253 hH))).trans (reductionSound7054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7842 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3243 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7842 (3 : Fin 5)) = (normalNode4182).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7841 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7842 (4 : Fin 5)) = canonicalInput8209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2225 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7842 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8209 hH))).trans (oldProjectionSound2225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4175).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7842 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4175).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7842 (j : Fin 5)))
      1 144 1440 10 ![720, 1440, 1, 288, 1440] ![2, 1, 1440, 5, 1] reductionProjection7842 ![reductionProjection7619, reductionProjection7054, reductionProjection3243, reductionProjection7841, oldProjection2225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7843 : Integer.Sparse (Fin 1613) := [(1028, 1)]

theorem reductionSound7843 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1028).moment H =
      Integer.Sparse.eval reductionProjection7843 (momentVector H) := by
  have hc : coordinates (1028 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1028) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7843, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7844 : Integer.Sparse (Fin 1613) := [(82, 3), (88, -1), (241, -2), (243, -2), (297, -9), (298, -9), (698, -1), (1028, -9)]

def reductionPivot7844 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, 2, -4], ![1, 1, -3, 1]]

theorem reductionSound7844 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4183).moment H =
      Integer.Sparse.eval reductionProjection7844 (momentVector H) := by
  have heq : reductionPivot7844 = (fun u v => (normalNode4183).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4183).moment H = injectiveMoment H reductionPivot7844 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4183).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7844 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7844 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7844 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1090, reductionProjection7843, oldProjection456, oldProjection455] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7844 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1090⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1090 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1090 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7844 (1 : Fin 4)) = canonicalInput8954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7843 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8954 hH))).trans (reductionSound7843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7844 (2 : Fin 4)) = canonicalInput8236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8236 hH))).trans (oldProjectionSound456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7844 (3 : Fin 4)) = canonicalInput8224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection455 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7844 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8224 hH))).trans (oldProjectionSound455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4183).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7844 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4183).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7844 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7844 ![oldProjection1090, reductionProjection7843, oldProjection456, oldProjection455]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7845 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (79, -240), (82, -240), (87, -240), (88, 80), (90, 80), (241, 160), (243, 160), (297, 720), (298, 720), (400, 720), (423, 720), (426, 720), (698, 400), (762, 720), (763, 1440), (939, -1440), (955, 720), (1024, 720), (1028, 720), (1058, -240), (1205, 720), (1226, 320), (1227, 80), (1251, -55)]

def reductionPivot7845 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound7845 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4176).moment H =
      Integer.Sparse.eval reductionProjection7845 (momentVector H) := by
  have heq : reductionPivot7845 = (fun u v => (normalNode4176).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4176).moment H = injectiveMoment H reductionPivot7845 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4176).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7845 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7845 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 18, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7845 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7319, reductionProjection372, reductionProjection7844, reductionProjection6997, reductionProjection2686] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7845 (0 : Fin 5)) = canonicalInput9369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7319 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9369 hH))).trans (reductionSound7319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7845 (1 : Fin 5)) = canonicalInput8269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection372 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8269 hH))).trans (reductionSound372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7845 (2 : Fin 5)) = (normalNode4183).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7844 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7845 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code939).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6997 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7845 (4 : Fin 5)) = canonicalInput8222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2686 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7845 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8222 hH))).trans (reductionSound2686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4176).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7845 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4176).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7845 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 18, 1, 1440] ![5, 80, 80, 1440, 1] reductionProjection7845 ![reductionProjection7319, reductionProjection372, reductionProjection7844, reductionProjection6997, reductionProjection2686]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7846 : Integer.Sparse (Fin 1613) := [(586, -1), (636, -1), (659, -1), (666, -1)]

def reductionPivot7846 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, -1, 2, -2], ![1, 2, -2, -1]]

theorem reductionSound7846 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4181).moment H =
      Integer.Sparse.eval reductionProjection7846 (momentVector H) := by
  have heq : reductionPivot7846 = (fun u v => (normalNode4181).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4181).moment H = injectiveMoment H reductionPivot7846 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4181).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7846 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7846 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7846 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection507, reductionProjection1136, oldProjection520, reductionProjection4777] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7846 (0 : Fin 4)) = canonicalInput10385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection507 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10385 hH))).trans (oldProjectionSound507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7846 (1 : Fin 4)) = canonicalInput8388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8388 hH))).trans (reductionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7846 (2 : Fin 4)) = canonicalInput8232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection520 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8232 hH))).trans (oldProjectionSound520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7846 (3 : Fin 4)) = canonicalInput8230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7846 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8230 hH))).trans (reductionSound4777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4181).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7846 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4181).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7846 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7846 ![oldProjection507, reductionProjection1136, oldProjection520, reductionProjection4777]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7847 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 5), (586, 720), (590, 360), (635, 720), (636, 720), (659, 360), (666, 720), (698, 440), (937, -720), (1055, -120), (1059, 80), (1221, -120), (1226, 40), (1227, 400), (1251, -105), (1389, -240)]

def reductionPivot7847 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound7847 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4178).moment H =
      Integer.Sparse.eval reductionProjection7847 (momentVector H) := by
  have heq : reductionPivot7847 = (fun u v => (normalNode4178).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4178).moment H = injectiveMoment H reductionPivot7847 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4178).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7847 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7847 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7847 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1816, reductionProjection3846, reductionProjection3060, reductionProjection3050, reductionProjection7846] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7847 (0 : Fin 5)) = canonicalInput10380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1816 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10380 hH))).trans (oldProjectionSound1816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7847 (1 : Fin 5)) = (normalNode4294).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3846 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7847 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code937).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3060 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7847 (3 : Fin 5)) = canonicalInput8206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8206 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7847 (4 : Fin 5)) = (normalNode4181).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7846 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7847 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4178).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7847 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4178).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7847 (j : Fin 5)))
      1 720 1440 2 ![1440, 288, 1, 1440, 2] ![1, 5, 1440, 1, 720] reductionProjection7847 ![oldProjection1816, reductionProjection3846, reductionProjection3060, reductionProjection3050, reductionProjection7846]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7848 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -480), (94, 10), (426, 720), (438, 720), (461, 720), (586, 720), (602, 720), (636, 720), (659, 720), (666, 720), (674, 720), (698, 800), (890, 720), (895, 720), (938, -1440), (1059, 160), (1226, 400), (1227, 400), (1251, -125)]

def reductionPivot7848 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound7848 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4179).moment H =
      Integer.Sparse.eval reductionProjection7848 (momentVector H) := by
  have heq : reductionPivot7848 = (fun u v => (normalNode4179).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4179).moment H = injectiveMoment H reductionPivot7848 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4179).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7848 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7848 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7848 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5411, reductionProjection2083, reductionProjection3083, oldProjection1996, reductionProjection7841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7848 (0 : Fin 5)) = canonicalInput10382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5411 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10382 hH))).trans (reductionSound5411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7848 (1 : Fin 5)) = (normalNode4305).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2083 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7848 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code938).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7848 (3 : Fin 5)) = canonicalInput8212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1996 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8212 hH))).trans (oldProjectionSound1996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7848 (4 : Fin 5)) = (normalNode4182).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7841 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7848 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4179).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7848 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4179).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7848 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1, 1440, 288] ![1, 1, 1440, 1, 5] reductionProjection7848 ![reductionProjection5411, reductionProjection2083, reductionProjection3083, oldProjection1996, reductionProjection7841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7849 : Integer.Sparse (Fin 1613) := [(94, -1), (439, -72), (659, -72), (698, -8), (803, -72), (1059, -8), (1251, -1)]

def reductionPivot7849 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 3, -3, 0], ![1, -1, 2, -2]]

theorem reductionSound7849 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4184).moment H =
      Integer.Sparse.eval reductionProjection7849 (momentVector H) := by
  have heq : reductionPivot7849 = (fun u v => (normalNode4184).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4184).moment H = injectiveMoment H reductionPivot7849 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4184).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7849 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7849 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7849 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1191, oldProjection599, reductionProjection4777, reductionProjection1336] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7849 (0 : Fin 4)) = canonicalInput21737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1191 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21737 hH))).trans (oldProjectionSound1191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7849 (1 : Fin 4)) = canonicalInput8976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection599 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8976 hH))).trans (oldProjectionSound599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7849 (2 : Fin 4)) = canonicalInput8237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8237 hH))).trans (reductionSound4777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7849 (3 : Fin 4)) = canonicalInput8225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7849 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8225 hH))).trans (reductionSound1336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4184).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7849 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4184).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7849 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection7849 ![oldProjection1191, oldProjection599, reductionProjection4777, reductionProjection1336]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7850 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 5), (427, 360), (439, 360), (462, 360), (508, 360), (586, 360), (602, 360), (636, 360), (659, 360), (666, 720), (698, 120), (700, 40), (803, 360), (890, 360), (937, -720), (1227, 40), (1251, -40)]

def reductionPivot7850 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound7850 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4180).moment H =
      Integer.Sparse.eval reductionProjection7850 (momentVector H) := by
  have heq : reductionPivot7850 = (fun u v => (normalNode4180).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4180).moment H = injectiveMoment H reductionPivot7850 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4180).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7850 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7850 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 144, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7850 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5442, reductionProjection7621, reductionProjection7849, reductionProjection3457, reductionProjection3060] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7850 (0 : Fin 5)) = canonicalInput10384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5442 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10384 hH))).trans (reductionSound5442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7850 (1 : Fin 5)) = canonicalInput8366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7621 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8366 hH))).trans (reductionSound7621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7850 (2 : Fin 5)) = (normalNode4184).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7849 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7849 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7850 (3 : Fin 5)) = canonicalInput8219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3457 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8219 hH))).trans (reductionSound3457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7850 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code937).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3060 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7850 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4180).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7850 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4180).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7850 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 144, 1440, 1] ![1, 2, 10, 1, 1440] reductionProjection7850 ![reductionProjection5442, reductionProjection7621, reductionProjection7849, reductionProjection3457, reductionProjection3060]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7851 : Integer.Sparse (Fin 1613) := [(940, 1)]

theorem reductionSound7851 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code940).moment H =
      Integer.Sparse.eval reductionProjection7851 (momentVector H) := by
  have hc : coordinates (940 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code940) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7851, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7852 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -180), (20, 15), (94, 85), (127, 720), (228, -960), (241, 400), (243, 480), (247, 160), (288, 720), (294, 720), (298, 720), (309, 720), (698, 480), (704, 400), (757, 720), (940, -1440), (1014, 720), (1223, -720), (1226, 160), (1227, 160), (1251, 55)]

def reductionPivot7852 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 1, -4]]

theorem reductionSound7852 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4186).moment H =
      Integer.Sparse.eval reductionProjection7852 (momentVector H) := by
  have heq : reductionPivot7852 = (fun u v => (normalNode4186).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4186).moment H = injectiveMoment H reductionPivot7852 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4186).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7852 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7852 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 1, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7852 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2060, oldProjection1561, reductionProjection2416, reductionProjection7851, oldProjection2249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7852 (0 : Fin 5)) = canonicalInput10389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2060 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10389 hH))).trans (oldProjectionSound2060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7852 (1 : Fin 5)) = canonicalInput8398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1561 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8398 hH))).trans (oldProjectionSound1561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7852 (2 : Fin 5)) = canonicalInput8239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2416 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8239 hH))).trans (reductionSound2416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7852 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7851 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7852 (4 : Fin 5)) = canonicalInput8238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7852 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8238 hH))).trans (oldProjectionSound2249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4186).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7852 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4186).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7852 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 1, 144] ![1, 5, 80, 1440, 10] reductionProjection7852 ![oldProjection2060, oldProjection1561, reductionProjection2416, reductionProjection7851, oldProjection2249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7853 : Integer.Sparse (Fin 1613) := [(94, 11), (241, 32), (426, 144), (697, -48), (698, 112), (704, 16), (913, 144), (946, -288), (956, 144), (1005, 144), (1016, 144), (1055, -96), (1059, 16), (1126, 144), (1139, 144), (1140, 144), (1142, 144), (1227, 48), (1251, -25), (1389, -48)]

def reductionPivot7853 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound7853 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4187).moment H =
      Integer.Sparse.eval reductionProjection7853 (momentVector H) := by
  have heq : reductionPivot7853 = (fun u v => (normalNode4187).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4187).moment H = injectiveMoment H reductionPivot7853 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4187).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7853 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7853 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7853 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5220, reductionProjection7807, reductionProjection3834, reductionProjection3196, reductionProjection2703] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7853 (0 : Fin 5)) = (normalNode2248).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5220 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7853 (1 : Fin 5)) = (normalNode4162).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7807 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7853 (2 : Fin 5)) = canonicalInput8240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8240 hH))).trans (reductionSound3834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7853 (3 : Fin 5)) = canonicalInput8257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8257 hH))).trans (reductionSound3196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7853 (4 : Fin 5)) = canonicalInput8260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7853 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8260 hH))).trans (reductionSound2703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4187).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7853 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4187).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7853 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1, 1440] ![1, 1, 1, 1440, 1] reductionProjection7853 ![reductionProjection5220, reductionProjection7807, reductionProjection3834, reductionProjection3196, reductionProjection2703]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7854 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (243, 80), (398, 720), (400, 720), (426, 2160), (698, 240), (763, 720), (951, -1440), (956, 720), (1005, 720), (1016, 720), (1058, -240), (1139, 720), (1203, 720), (1205, 720), (1226, 80), (1227, 80), (1251, -45)]

def reductionPivot7854 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound7854 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4188).moment H =
      Integer.Sparse.eval reductionProjection7854 (momentVector H) := by
  have heq : reductionPivot7854 = (fun u v => (normalNode4188).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4188).moment H = injectiveMoment H reductionPivot7854 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4188).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7854 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7854 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7854 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5223, reductionProjection283, reductionProjection2703, reductionProjection3720, reductionProjection5093] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7854 (0 : Fin 5)) = (normalNode2251).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5223 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7854 (1 : Fin 5)) = (normalNode4166).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection283 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7854 (2 : Fin 5)) = canonicalInput8260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8260 hH))).trans (reductionSound2703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7854 (3 : Fin 5)) = canonicalInput8268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8268 hH))).trans (reductionSound3720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7854 (4 : Fin 5)) = canonicalInput8270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5093 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7854 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5093 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8270 hH))).trans (reductionSound5093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4188).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7854 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4188).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7854 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 1, 1440] ![1, 10, 1, 1440, 1] reductionProjection7854 ![reductionProjection5223, reductionProjection283, reductionProjection2703, reductionProjection3720, reductionProjection5093]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7855 : Integer.Sparse (Fin 1613) := [(953, 1)]

theorem reductionSound7855 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code953).moment H =
      Integer.Sparse.eval reductionProjection7855 (momentVector H) := by
  have hc : coordinates (953 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code953) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7855, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7856 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, 20), (426, 720), (433, 720), (483, 720), (489, 720), (697, -240), (698, 320), (700, 160), (704, 80), (799, 720), (801, 720), (803, 720), (806, 720), (807, 720), (865, 720), (890, 720), (953, -1440), (1059, 80), (1187, 720), (1227, 80), (1251, 5)]

def reductionPivot7856 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound7856 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4189).moment H =
      Integer.Sparse.eval reductionProjection7856 (momentVector H) := by
  have heq : reductionPivot7856 = (fun u v => (normalNode4189).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4189).moment H = injectiveMoment H reductionPivot7856 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4189).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7856 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7856 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7856 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5239, reductionProjection7812, reductionProjection3369, reductionProjection7855, oldProjection2263] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7856 (0 : Fin 5)) = (normalNode2253).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5239 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7856 (1 : Fin 5)) = (normalNode4167).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7812 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7856 (2 : Fin 5)) = canonicalInput8262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8262 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7856 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code953).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7855 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7856 (4 : Fin 5)) = canonicalInput8274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2263 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7856 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8274 hH))).trans (oldProjectionSound2263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4189).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7856 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4189).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7856 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 1, 288] ![1, 10, 1, 1440, 5] reductionProjection7856 ![reductionProjection5239, reductionProjection7812, reductionProjection3369, reductionProjection7855, oldProjection2263]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7857 : Integer.Sparse (Fin 1613) := [(298, -1), (530, -1), (933, -1), (955, -1)]

def reductionPivot7857 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, -3, 1], ![1, 2, 1, -4]]

theorem reductionSound7857 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4191).moment H =
      Integer.Sparse.eval reductionProjection7857 (momentVector H) := by
  have heq : reductionPivot7857 = (fun u v => (normalNode4191).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4191).moment H = injectiveMoment H reductionPivot7857 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4191).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7857 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7857 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7857 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5210, reductionProjection7801, oldProjection456, reductionProjection342] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7857 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code530).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5210 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7857 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7801 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7857 (2 : Fin 4)) = canonicalInput8280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8280 hH))).trans (oldProjectionSound456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7857 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7857 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4191).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7857 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4191).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7857 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7857 ![reductionProjection5210, reductionProjection7801, oldProjection456, reductionProjection342]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7858 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (88, -16), (94, 1), (241, -48), (243, -80), (698, -16), (704, -16), (1223, 48), (1225, -16), (1251, -2)]

def reductionPivot7858 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]

theorem reductionSound7858 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7399).moment H =
      Integer.Sparse.eval reductionProjection7858 (momentVector H) := by
  have heq : reductionPivot7858 = (fun u v => (normalNode7399).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7399).moment H = injectiveMoment H reductionPivot7858 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7399).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7858 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7858 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7858 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection774, oldProjection902, oldProjection915, oldProjection917] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7858 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node774⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection774 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7858 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection902 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7858 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node915⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection915 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7858 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection917 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7858 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7399).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7858 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7399).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7858 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 144] ![32, 32, 2, 2] reductionProjection7858 ![oldProjection774, oldProjection902, oldProjection915, oldProjection917]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7859 : Integer.Sparse (Fin 1613) := [(954, 1)]

theorem reductionSound7859 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code954).moment H =
      Integer.Sparse.eval reductionProjection7859 (momentVector H) := by
  have hc : coordinates (954 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code954) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7859, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7860 : Integer.Sparse (Fin 1613) := [(88, -1), (243, -2), (298, -9), (954, -9), (1003, -9), (1225, -1), (1226, 1)]

def reductionPivot7860 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -3, 2], ![1, 1, 2, -4]]

theorem reductionSound7860 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4208).moment H =
      Integer.Sparse.eval reductionProjection7860 (momentVector H) := by
  have heq : reductionPivot7860 = (fun u v => (normalNode4208).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4208).moment H = injectiveMoment H reductionPivot7860 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4208).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7860 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7860 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7860 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection902, oldProjection615, reductionProjection7859, oldProjection456] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7860 (0 : Fin 4)) = canonicalInput20791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection902 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20791 hH))).trans (oldProjectionSound902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7860 (1 : Fin 4)) = canonicalInput8974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection615 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8974 hH))).trans (oldProjectionSound615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7860 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code954).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7859 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7860 (3 : Fin 4)) = canonicalInput8241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7860 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8241 hH))).trans (oldProjectionSound456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4208).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7860 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4208).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7860 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7860 ![oldProjection902, oldProjection615, reductionProjection7859, oldProjection456]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7861 : Integer.Sparse (Fin 1613) := [(941, 1)]

theorem reductionSound7861 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code941).moment H =
      Integer.Sparse.eval reductionProjection7861 (momentVector H) := by
  have hc : coordinates (941 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code941) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7861, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7862 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (88, 32), (127, 144), (241, 80), (243, 160), (287, 144), (288, 288), (298, 288), (698, 32), (704, 32), (941, -288), (954, 144), (1003, 288), (1223, -96), (1225, 32), (1251, -1)]

def reductionPivot7862 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound7862 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4192).moment H =
      Integer.Sparse.eval reductionProjection7862 (momentVector H) := by
  have heq : reductionPivot7862 = (fun u v => (normalNode4192).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4192).moment H = injectiveMoment H reductionPivot7862 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4192).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7862 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7862 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 18, 1, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7862 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2079, reductionProjection7858, reductionProjection7860, reductionProjection7861, reductionProjection2416] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7862 (0 : Fin 5)) = canonicalInput10390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2079 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10390 hH))).trans (oldProjectionSound2079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7862 (1 : Fin 5)) = canonicalInput8405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7858 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7858 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8405 hH))).trans (reductionSound7858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7862 (2 : Fin 5)) = (normalNode4208).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7860 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7862 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code941).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7861 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7862 (4 : Fin 5)) = canonicalInput8239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2416 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7862 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8239 hH))).trans (reductionSound2416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4192).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7862 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4192).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7862 (j : Fin 5)))
      1 288 288 1 ![288, 288, 18, 1, 18] ![1, 1, 16, 288, 16] reductionProjection7862 ![oldProjection2079, reductionProjection7858, reductionProjection7860, reductionProjection7861, reductionProjection2416]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7863 : Integer.Sparse (Fin 1613) := [(88, 1), (228, -3), (241, 1), (243, 4), (287, 9), (288, 18), (298, 27), (426, 9), (698, 2), (704, 1), (947, -18), (954, 9), (955, 9), (1003, 9), (1014, 9), (1015, 9), (1223, -3), (1225, 1), (1226, 2)]

def reductionPivot7863 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound7863 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4193).moment H =
      Integer.Sparse.eval reductionProjection7863 (momentVector H) := by
  have heq : reductionPivot7863 = (fun u v => (normalNode4193).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4193).moment H = injectiveMoment H reductionPivot7863 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4193).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7863 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7863 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 18, 1, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7863 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1991, oldProjection1992, reductionProjection7860, reductionProjection912, reductionProjection346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7863 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1991⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1991 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7863 (1 : Fin 5)) = canonicalInput8200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1992 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8200 hH))).trans (oldProjectionSound1992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7863 (2 : Fin 5)) = (normalNode4208).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7860 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7863 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code947).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection912 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection912 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7863 (4 : Fin 5)) = (normalNode4211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7863 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4193).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7863 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4193).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7863 (j : Fin 5)))
      1 18 18 1 ![18, 18, 18, 1, 18] ![1, 1, 1, 18, 1] reductionProjection7863 ![oldProjection1991, oldProjection1992, reductionProjection7860, reductionProjection912, reductionProjection346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7864 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 25), (426, 720), (602, 720), (666, 720), (668, 720), (698, 720), (865, 720), (869, 720), (890, 720), (943, -1440), (1050, -480), (1055, -240), (1059, 480), (1221, -720), (1227, 320), (1251, -145), (1389, -240)]

def reductionPivot7864 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]

theorem reductionSound7864 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4194).moment H =
      Integer.Sparse.eval reductionProjection7864 (momentVector H) := by
  have heq : reductionPivot7864 = (fun u v => (normalNode4194).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4194).moment H = injectiveMoment H reductionPivot7864 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4194).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7864 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7864 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7864 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2024, reductionProjection2737, reductionProjection3173, oldProjection2055, reductionProjection3369] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7864 (0 : Fin 5)) = (normalNode3773).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2024 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7864 (1 : Fin 5)) = canonicalInput8202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8202 hH))).trans (reductionSound2737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7864 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code943).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3173 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7864 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7864 (4 : Fin 5)) = canonicalInput8244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7864 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8244 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4194).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7864 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4194).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7864 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1, 144, 1440] ![2, 1, 1440, 10, 1] reductionProjection7864 ![reductionProjection2024, reductionProjection2737, reductionProjection3173, oldProjection2055, reductionProjection3369]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7865 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, -5), (423, 720), (427, 720), (433, 1440), (603, 720), (698, 720), (700, 400), (761, 720), (763, 720), (865, 720), (919, 720), (944, -1440), (1052, -960), (1058, -240), (1059, 480), (1221, -480), (1226, 80), (1227, 160), (1251, -160)]

def reductionPivot7865 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]

theorem reductionSound7865 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4195).moment H =
      Integer.Sparse.eval reductionProjection7865 (momentVector H) := by
  have heq : reductionPivot7865 = (fun u v => (normalNode4195).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4195).moment H = injectiveMoment H reductionPivot7865 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4195).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7865 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7865 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7865 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7386, reductionProjection7643, reductionProjection3419, reductionProjection3281, reductionProjection5618] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7865 (0 : Fin 5)) = canonicalInput7260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7386 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7260 hH))).trans (reductionSound7386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7865 (1 : Fin 5)) = canonicalInput8203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7643 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8203 hH))).trans (reductionSound7643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7865 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code944).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3419 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7865 (3 : Fin 5)) = canonicalInput8245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3281 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8245 hH))).trans (reductionSound3281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7865 (4 : Fin 5)) = canonicalInput8246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5618 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7865 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8246 hH))).trans (reductionSound5618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4195).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7865 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4195).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7865 (j : Fin 5)))
      1 1440 1440 1 ![720, 288, 1, 720, 1440] ![2, 5, 1440, 2, 1] reductionProjection7865 ![reductionProjection7386, reductionProjection7643, reductionProjection3419, reductionProjection3281, reductionProjection5618]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7866 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -1), (241, -32), (243, -32), (287, -144), (294, -144), (698, -32), (1223, 96), (1226, -16), (1251, 4)]

def reductionPivot7866 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, 1, 2, -4]]

theorem reductionSound7866 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5380).moment H =
      Integer.Sparse.eval reductionProjection7866 (momentVector H) := by
  have heq : reductionPivot7866 = (fun u v => (normalNode5380).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5380).moment H = injectiveMoment H reductionPivot7866 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5380).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7866 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7866 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7866 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection917, oldProjection454, oldProjection449, oldProjection1348] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7866 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3740 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection917 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3740 hH))).trans (oldProjectionSound917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7866 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4674 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4674 hH))).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7866 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4743 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4743 hH))).trans (oldProjectionSound449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7866 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4746 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1348 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7866 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4746 hH))).trans (oldProjectionSound1348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5380).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7866 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5380).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7866 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 144] ![2, 288, 288, 2] reductionProjection7866 ![oldProjection917, oldProjection454, oldProjection449, oldProjection1348]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7867 : Integer.Sparse (Fin 1613) := [(228, 3), (298, -9), (698, -1), (757, -9), (1014, -9), (1223, 3), (1226, -1), (1227, -1)]

def reductionPivot7867 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, -1, -2, 2], ![1, 2, 1, -4]]

theorem reductionSound7867 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4214).moment H =
      Integer.Sparse.eval reductionProjection7867 (momentVector H) := by
  have heq : reductionPivot7867 = (fun u v => (normalNode4214).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4214).moment H = injectiveMoment H reductionPivot7867 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4214).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7867 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7867 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7867 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection618, oldProjection896, oldProjection456, oldProjection586] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7867 (0 : Fin 4)) = canonicalInput10407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection618 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10407 hH))).trans (oldProjectionSound618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7867 (1 : Fin 4)) = canonicalInput8446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection896 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8446 hH))).trans (oldProjectionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7867 (2 : Fin 4)) = canonicalInput8280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8280 hH))).trans (oldProjectionSound456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7867 (3 : Fin 4)) = canonicalInput8276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection586 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7867 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8276 hH))).trans (oldProjectionSound586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4214).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7867 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4214).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7867 (j : Fin 4)))
      2 18 18 2 ![1, 9, 1, 1] ![18, 2, 18, 18] reductionProjection7867 ![oldProjection618, oldProjection896, oldProjection456, oldProjection586]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7868 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 1), (94, 11), (228, -48), (241, 64), (243, 96), (287, 144), (288, 144), (294, 144), (298, 144), (426, 144), (483, 144), (609, 144), (698, 192), (704, 48), (757, 144), (945, -288), (1014, 144), (1223, -144), (1226, 96), (1227, 64), (1251, -10)]

def reductionPivot7868 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]

theorem reductionSound7868 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4196).moment H =
      Integer.Sparse.eval reductionProjection7868 (momentVector H) := by
  have heq : reductionPivot7868 = (fun u v => (normalNode4196).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4196).moment H = injectiveMoment H reductionPivot7868 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4196).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7868 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7868 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7868 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7602, reductionProjection7866, reductionProjection3255, reductionProjection7867, reductionProjection7054] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7868 (0 : Fin 5)) = canonicalInput7261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7602 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7261 hH))).trans (reductionSound7602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7868 (1 : Fin 5)) = canonicalInput8204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7866 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7866 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8204 hH))).trans (reductionSound7866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7868 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code945).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3255 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7868 (3 : Fin 5)) = (normalNode4214).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7867 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7868 (4 : Fin 5)) = canonicalInput8247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7054 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7868 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8247 hH))).trans (reductionSound7054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4196).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7868 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4196).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7868 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 1, 18, 1440] ![1, 5, 1440, 80, 1] reductionProjection7868 ![reductionProjection7602, reductionProjection7866, reductionProjection3255, reductionProjection7867, reductionProjection7054]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7869 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 50), (241, 160), (426, 2880), (698, 960), (955, 1440), (956, 720), (1015, 1440), (1055, -240), (1226, 800), (1227, 240), (1251, -155)]

def reductionPivot7869 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound7869 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4197).moment H =
      Integer.Sparse.eval reductionProjection7869 (momentVector H) := by
  have heq : reductionPivot7869 = (fun u v => (normalNode4197).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4197).moment H = injectiveMoment H reductionPivot7869 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4197).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7869 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7869 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 72, 18, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7869 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1993, oldProjection1993, reductionProjection346, reductionProjection346, oldProjection2056] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7869 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7869 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3660 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3660 hH))).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7869 (2 : Fin 5)) = (normalNode4211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7869 (3 : Fin 5)) = canonicalInput8248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8248 hH))).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7869 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2056 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7869 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4197).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7869 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4197).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7869 (j : Fin 5)))
      1 1440 1440 1 ![72, 72, 18, 18, 1440] ![20, 20, 80, 80, 1] reductionProjection7869 ![oldProjection1993, oldProjection1993, reductionProjection346, reductionProjection346, oldProjection2056]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7870 : Integer.Sparse (Fin 1613) := [(0, 23), (94, 50), (241, 160), (426, 720), (698, 880), (956, 1440), (957, 720), (1016, 720), (1055, -960), (1059, 80), (1226, 80), (1227, 480), (1251, -325)]

def reductionPivot7870 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound7870 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4198).moment H =
      Integer.Sparse.eval reductionProjection7870 (momentVector H) := by
  have heq : reductionPivot7870 = (fun u v => (normalNode4198).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4198).moment H = injectiveMoment H reductionPivot7870 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4198).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7870 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7870 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7870 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2806, reductionProjection3305, reductionProjection2703, oldProjection2056, oldProjection2057] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7870 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3306 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2806 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3306 hH))).trans (oldProjectionSound2806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7870 (1 : Fin 5)) = canonicalInput8205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3305 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8205 hH))).trans (reductionSound3305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7870 (2 : Fin 5)) = (normalNode4212).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7870 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2056 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7870 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7870 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4198).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7870 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4198).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7870 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection7870 ![oldProjection2806, reductionProjection3305, reductionProjection2703, oldProjection2056, oldProjection2057]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7871 : Integer.Sparse (Fin 1613) := [(0, 23), (94, 35), (426, 720), (610, 720), (666, 720), (668, 720), (698, 720), (948, -1440), (956, 720), (957, 720), (1016, 720), (1055, -720), (1059, 80), (1227, 640), (1251, -280), (1389, -240)]

def reductionPivot7871 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound7871 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4199).moment H =
      Integer.Sparse.eval reductionProjection7871 (momentVector H) := by
  have heq : reductionPivot7871 = (fun u v => (normalNode4199).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4199).moment H = injectiveMoment H reductionPivot7871 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4199).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7871 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7871 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7871 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1994, reductionProjection3050, reductionProjection3151, oldProjection2057, reductionProjection2703] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7871 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1994 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7871 (1 : Fin 5)) = canonicalInput8206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8206 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7871 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code948).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3151 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7871 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7871 (4 : Fin 5)) = canonicalInput8249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7871 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8249 hH))).trans (reductionSound2703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4199).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7871 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4199).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7871 (j : Fin 5)))
      1 1440 1440 1 ![360, 1440, 1, 1440, 1440] ![4, 1, 1440, 1, 1] reductionProjection7871 ![oldProjection1994, reductionProjection3050, reductionProjection3151, oldProjection2057, reductionProjection2703]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

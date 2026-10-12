import NoFourMUBs.Step2.SOS.Canonical016
import NoFourMUBs.Step2.SOS.Canonical017
import NoFourMUBs.Step2.SOS.Canonical036
import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical222
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions055
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical173
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical205
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical258
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1792 : Integer.Sparse (Fin 1613) := [(23, -3), (104, 1), (108, 4), (247, 1)]

def reductionPivot1792 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![1, -1, 2, -2], ![1, 2, -5, 2]]

theorem reductionSound1792 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9402).moment H =
      Integer.Sparse.eval reductionProjection1792 (momentVector H) := by
  have heq : reductionPivot1792 = (fun u v => (normalNode9402).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9402).moment H = injectiveMoment H reductionPivot1792 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9402).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9402).entries)).symm
  have hshape : reductionPivot1792 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1792 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1792 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection74, oldProjection124, oldProjection78] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1792 (0 : Fin 3)) = canonicalInput5916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1792 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1792 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5916 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1792 (1 : Fin 3)) = canonicalInput19125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1792 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection124 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1792 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19125 hH))).trans (oldProjectionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1792 (2 : Fin 3)) = canonicalInput19145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1792 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection78 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1792 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19145 hH))).trans (oldProjectionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9402).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1792 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9402).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1792 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection1792 ![oldProjection74, oldProjection124, oldProjection78]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1793 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 100), (20, -5), (23, 480), (94, -35), (101, 240), (104, -240), (105, -80), (108, -560), (228, 240), (241, -160), (247, -320), (1251, -35)]

def reductionPivot1793 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]

theorem reductionSound1793 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1090).moment H =
      Integer.Sparse.eval reductionProjection1793 (momentVector H) := by
  have heq : reductionPivot1793 = (fun u v => (normalNode1090).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1090).moment H = injectiveMoment H reductionPivot1793 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1090).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1793 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1793 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1793 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1100, oldProjection752, reductionProjection1791, reductionProjection1792] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1793 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1666 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1666 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1793 (1 : Fin 4)) = canonicalInput2450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2450 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1793 (2 : Fin 4)) = canonicalInput2434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2434 hH))).trans (reductionSound1791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1793 (3 : Fin 4)) = canonicalInput2433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1792 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1793 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2433 hH))).trans (reductionSound1792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1090).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1793 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1090).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1793 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 144, 9] ![2, 20, 10, 160] reductionProjection1793 ![oldProjection1100, oldProjection752, reductionProjection1791, reductionProjection1792]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1794 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -15), (104, -80), (108, -160), (1251, -20)]

def reductionPivot1794 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound1794 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6316).moment H =
      Integer.Sparse.eval reductionProjection1794 (momentVector H) := by
  have heq : reductionPivot1794 = (fun u v => (normalNode6316).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6316).moment H = injectiveMoment H reductionPivot1794 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6316).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1794 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1794 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 144, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1794 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection787, reductionProjection675, reductionProjection675, oldProjection755] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1794 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node787⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection787 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1794 (1 : Fin 4)) = canonicalInput12877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12877 hH))).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1794 (2 : Fin 4)) = (normalNode6335).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1794 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node755⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection755 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1794 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6316).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1794 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6316).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1794 (j : Fin 4)))
      2 720 720 2 ![360, 144, 144, 9] ![2, 5, 5, 80] reductionProjection1794 ![oldProjection787, reductionProjection675, reductionProjection675, oldProjection755]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1795 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -280), (20, 5), (23, -960), (94, 95), (101, -240), (104, 640), (105, 80), (108, 1760), (113, 720), (228, -240), (241, 240), (247, 560), (251, 720), (1251, 110)]

def reductionPivot1795 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound1795 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1018).moment H =
      Integer.Sparse.eval reductionProjection1795 (momentVector H) := by
  have heq : reductionPivot1795 = (fun u v => (normalNode1018).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1018).moment H = injectiveMoment H reductionPivot1795 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1018).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1795 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1795 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1795 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1444, reductionProjection1790, oldProjection750, reductionProjection1793, reductionProjection1794] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1795 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1444⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1444 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1444 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1795 (1 : Fin 5)) = (normalNode1051).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1790 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1795 (2 : Fin 5)) = canonicalInput2350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2350 hH))).trans (oldProjectionSound750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1795 (3 : Fin 5)) = (normalNode1090).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1793 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1795 (4 : Fin 5)) = canonicalInput2362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1794 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1795 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2362 hH))).trans (reductionSound1794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1018).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1795 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1018).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1795 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 720, 1440, 720] ![2, 1, 2, 1, 2] reductionProjection1795 ![oldProjection1444, reductionProjection1790, oldProjection750, reductionProjection1793, reductionProjection1794]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1796 : Integer.Sparse (Fin 1613) := [(23, 1), (102, 1), (228, 1), (241, -1), (243, -1), (248, -3), (250, -3), (698, -1)]

def reductionPivot1796 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 0, -1, -1]]

theorem reductionSound1796 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1052).moment H =
      Integer.Sparse.eval reductionProjection1796 (momentVector H) := by
  have heq : reductionPivot1796 = (fun u v => (normalNode1052).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1052).moment H = injectiveMoment H reductionPivot1796 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1052).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1796 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1796 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1796 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1234, oldProjection753, reductionProjection1764, reductionProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1796 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2922 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2922 hH))).trans (oldProjectionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1796 (1 : Fin 4)) = canonicalInput2403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2403 hH))).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1796 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code250).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1764 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1796 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code248).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1796 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1052).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1796 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1052).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1796 (j : Fin 4)))
      2 6 18 6 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection1796 ![oldProjection1234, oldProjection753, reductionProjection1764, reductionProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1797 : Integer.Sparse (Fin 1613) := [(23, 3), (26, -1), (102, 3), (104, -2), (105, -3), (106, -1), (241, -1), (243, -2), (703, -1), (704, -1)]

def reductionPivot1797 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]

theorem reductionSound1797 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6309).moment H =
      Integer.Sparse.eval reductionProjection1797 (momentVector H) := by
  have heq : reductionPivot1797 = (fun u v => (normalNode6309).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6309).moment H = injectiveMoment H reductionPivot1797 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6309).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1797 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1797 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1797 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection774, reductionProjection693, oldProjection754, oldProjection753] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1797 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node774⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection774 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1797 (1 : Fin 4)) = (normalNode6331).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection693 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1797 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node754⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection754 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1797 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node753⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1797 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6309).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1797 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6309).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1797 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection1797 ![oldProjection774, reductionProjection693, oldProjection754, oldProjection753]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1798 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -220), (23, -1200), (26, 80), (94, 105), (102, -720), (104, 720), (105, 560), (106, 160), (108, 240), (113, 1440), (228, -240), (241, 1360), (243, 1040), (247, 160), (248, 720), (250, 720), (698, 880), (703, 160), (704, 400), (1054, -480), (1251, -20)]

def reductionPivot1798 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -1, -1]]

theorem reductionSound1798 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1019).moment H =
      Integer.Sparse.eval reductionProjection1798 (momentVector H) := by
  have heq : reductionPivot1798 = (fun u v => (normalNode1019).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1019).moment H = injectiveMoment H reductionPivot1798 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1019).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1798 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1798 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 6, 1440, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1798 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1445, reductionProjection1796, reductionProjection1767, reductionProjection1797, oldProjection1445] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1798 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1445⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1798 (1 : Fin 5)) = (normalNode1052).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1796 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1798 (2 : Fin 5)) = canonicalInput2353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1767 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2353 hH))).trans (reductionSound1767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1798 (3 : Fin 5)) = canonicalInput2363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1797 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2363 hH))).trans (reductionSound1797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1798 (4 : Fin 5)) = canonicalInput2365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1798 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2365 hH))).trans (oldProjectionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1019).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1798 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1019).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1798 (j : Fin 5)))
      1 1440 1440 1 ![1440, 6, 1440, 18, 1440] ![1, 240, 1, 80, 1] reductionProjection1798 ![oldProjection1445, reductionProjection1796, reductionProjection1767, reductionProjection1797, oldProjection1445]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1799 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (23, 240), (94, -25), (104, -80), (108, -80), (228, 240), (241, -160), (247, -240), (251, -720), (252, -720), (1251, -30)]

def reductionPivot1799 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound1799 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1053).moment H =
      Integer.Sparse.eval reductionProjection1799 (momentVector H) := by
  have heq : reductionPivot1799 = (fun u v => (normalNode1053).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1053).moment H = injectiveMoment H reductionPivot1799 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1053).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1799 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1799 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1799 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1100, oldProjection752, reductionProjection1776, reductionProjection1770] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1799 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2930 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2930 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1799 (1 : Fin 4)) = canonicalInput2410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2410 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1799 (2 : Fin 4)) = canonicalInput2329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1776 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2329 hH))).trans (reductionSound1776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1799 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code251).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1770 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1799 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1053).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1799 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1053).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1799 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 1, 1] ![2, 20, 1440, 1440] reductionProjection1799 ![oldProjection1100, oldProjection752, reductionProjection1776, reductionProjection1770]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1800 : Integer.Sparse (Fin 1613) := [(261, 1)]

theorem reductionSound1800 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code261).moment H =
      Integer.Sparse.eval reductionProjection1800 (momentVector H) := by
  have hc : coordinates (261 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code261) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1800, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1801 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, 3), (94, 4), (101, -48), (243, 16), (703, 16), (1251, 1)]

def reductionPivot1801 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-3, 3, 1, -1], ![5, -2, -2, -1]]

theorem reductionSound1801 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7198).moment H =
      Integer.Sparse.eval reductionProjection1801 (momentVector H) := by
  have heq : reductionPivot1801 = (fun u v => (normalNode7198).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7198).moment H = injectiveMoment H reductionPivot1801 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7198).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7198).entries)).symm
  have hshape : reductionPivot1801 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1801 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1801 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection575, oldProjection235, oldProjection247] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1801 (0 : Fin 3)) = canonicalInput4643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1801 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1801 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4643 hH))).trans (reductionSound575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1801 (1 : Fin 3)) = canonicalInput17987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1801 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1801 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17987 hH))).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1801 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6571 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1801 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1801 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6571 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7198).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1801 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7198).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1801 (j : Fin 3)))
      3 144 144 3 ![1, 24, 48] ![144, 6, 3] reductionProjection1801 ![reductionProjection575, oldProjection235, oldProjection247]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1802 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 120), (20, -15), (23, 240), (94, -60), (101, 240), (104, -80), (108, -80), (228, 240), (241, -80), (243, -80), (247, -80), (261, -720), (698, -80), (703, -80), (704, -80), (1251, -50)]

def reductionPivot1802 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound1802 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1093).moment H =
      Integer.Sparse.eval reductionProjection1802 (momentVector H) := by
  have heq : reductionPivot1802 = (fun u v => (normalNode1093).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1093).moment H = injectiveMoment H reductionPivot1802 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1093).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1802 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1802 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1802 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection894, reductionProjection1800, reductionProjection1801, oldProjection752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1802 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1689 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1802 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code261).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1802 (2 : Fin 4)) = canonicalInput2451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1801 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2451 hH))).trans (reductionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1802 (3 : Fin 4)) = canonicalInput2450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1802 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2450 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1093).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1802 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1093).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1802 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 144, 72] ![2, 1440, 10, 20] reductionProjection1802 ![oldProjection894, reductionProjection1800, reductionProjection1801, oldProjection752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1803 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -80), (19, -580), (20, 35), (23, -960), (94, 270), (101, -240), (104, 640), (108, 1440), (119, 720), (228, -480), (241, 400), (243, 80), (247, 1120), (251, 720), (252, 720), (261, 720), (698, 80), (703, 160), (704, 320), (1251, 240), (1278, -240)]

def reductionPivot1803 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound1803 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1020).moment H =
      Integer.Sparse.eval reductionProjection1803 (momentVector H) := by
  have heq : reductionPivot1803 = (fun u v => (normalNode1020).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1020).moment H = injectiveMoment H reductionPivot1803 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1020).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1803 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1803 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1803 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection663, reductionProjection1799, reductionProjection1779, reductionProjection1802, oldProjection2387] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1803 (0 : Fin 5)) = (normalNode371).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection663 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1803 (1 : Fin 5)) = (normalNode1053).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1799 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1803 (2 : Fin 5)) = canonicalInput2357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1779 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2357 hH))).trans (reductionSound1779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1803 (3 : Fin 5)) = (normalNode1093).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1802 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1803 (4 : Fin 5)) = canonicalInput2369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2387 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1803 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2369 hH))).trans (oldProjectionSound2387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1020).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1803 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1020).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1803 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 144] ![1, 1, 1, 1, 10] reductionProjection1803 ![reductionProjection663, reductionProjection1799, reductionProjection1779, reductionProjection1802, oldProjection2387]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1804 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 48), (94, -3), (113, -144), (119, -144), (248, -144), (704, -16), (1251, -3), (1278, 48)]

def reductionPivot1804 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -2, 5], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound1804 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1054).moment H =
      Integer.Sparse.eval reductionProjection1804 (momentVector H) := by
  have heq : reductionPivot1804 = (fun u v => (normalNode1054).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1054).moment H = injectiveMoment H reductionPivot1804 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1054).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1804 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1804 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1804 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection886, oldProjection393, oldProjection392, reductionProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1804 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node886⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection886 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1804 (1 : Fin 4)) = canonicalInput2489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection393 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2489 hH))).trans (oldProjectionSound393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1804 (2 : Fin 4)) = canonicalInput2328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2328 hH))).trans (oldProjectionSound392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1804 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code248).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1804 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1054).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1804 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1054).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1804 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection1804 ![oldProjection886, oldProjection393, oldProjection392, reductionProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1805 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 2), (26, 16), (94, -1), (104, 16), (105, 32), (108, 16), (243, 16), (1251, 1)]

def reductionPivot1805 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -2, 5], ![0, 0, 3, -3], ![1, 1, 0, -2]]

theorem reductionSound1805 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6327).moment H =
      Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
  have heq : reductionPivot1805 = (fun u v => (normalNode6327).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6327).moment H = injectiveMoment H reductionPivot1805 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6327).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot1805 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1805 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 48, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1805 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection129, oldProjection127, oldProjection70] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1805 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6000 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1805 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1805 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6000 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1805 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1805 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1805 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5574 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1805 (2 : Fin 3)) = canonicalInput12870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1805 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection70 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1805 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection70 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12870 hH))).trans (oldProjectionSound70 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6327).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1805 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6327).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1805 (j : Fin 3)))
      3 144 144 3 ![24, 48, 3] ![6, 3, 48] reductionProjection1805 ![oldProjection129, oldProjection127, oldProjection70]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1806 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (19, 140), (20, -10), (26, -80), (94, -35), (104, -400), (105, -320), (108, -320), (241, -400), (243, -160), (247, -160), (698, -80), (1251, -10)]

def reductionPivot1806 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound1806 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6307).moment H =
      Integer.Sparse.eval reductionProjection1806 (momentVector H) := by
  have heq : reductionPivot1806 = (fun u v => (normalNode6307).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6307).moment H = injectiveMoment H reductionPivot1806 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6307).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1806 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1806 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1806 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection771, reductionProjection1805, oldProjection751, reductionProjection646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1806 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node771⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1806 (1 : Fin 4)) = (normalNode6327).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1805 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1806 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5567 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection751 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5567 hH))).trans (oldProjectionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1806 (3 : Fin 4)) = (normalNode6321).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection646 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1806 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6307).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1806 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6307).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1806 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 144] ![2, 10, 10, 10] reductionProjection1806 ![oldProjection771, reductionProjection1805, oldProjection751, reductionProjection646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1807 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 1), (94, 2), (104, 16), (105, 16), (108, 48), (241, 16), (247, 16), (1251, 1)]

def reductionPivot1807 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -2, 5], ![0, 1, 1, -2], ![1, 0, 2, -3]]

theorem reductionSound1807 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6333).moment H =
      Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
  have heq : reductionPivot1807 = (fun u v => (normalNode6333).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6333).moment H = injectiveMoment H reductionPivot1807 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6333).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot1807 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1807 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1807 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection123, oldProjection120, oldProjection124] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1807 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6001 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1807 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1807 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6001 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1807 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5575 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1807 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection120 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1807 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5575 hH))).trans (oldProjectionSound120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1807 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5573 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1807 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection124 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1807 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5573 hH))).trans (oldProjectionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6333).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1807 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6333).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1807 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection1807 ![oldProjection123, oldProjection120, oldProjection124]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1808 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 40), (19, 180), (20, -10), (94, -75), (104, -320), (105, -80), (108, -720), (241, -160), (247, -400), (1251, -60)]

def reductionPivot1808 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, 1, -2]]

theorem reductionSound1808 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6313).moment H =
      Integer.Sparse.eval reductionProjection1808 (momentVector H) := by
  have heq : reductionPivot1808 = (fun u v => (normalNode6313).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6313).moment H = injectiveMoment H reductionPivot1808 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6313).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1808 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1808 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1808 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection786, oldProjection750, reductionProjection684, reductionProjection1807] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1808 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node786⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1808 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5570 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5570 hH))).trans (oldProjectionSound750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1808 (2 : Fin 4)) = (normalNode6334).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1808 (3 : Fin 4)) = (normalNode6333).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1807 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1808 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6313).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1808 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6313).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1808 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 144, 144] ![4, 2, 10, 10] reductionProjection1808 ![oldProjection786, oldProjection750, reductionProjection684, reductionProjection1807]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1809 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -40), (19, -290), (20, 10), (23, -240), (26, 40), (94, 105), (104, 640), (105, 240), (108, 1240), (113, 360), (119, 720), (241, 400), (243, 80), (247, 600), (248, 360), (698, 40), (704, 40), (1251, 85), (1278, -120)]

def reductionPivot1809 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound1809 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1021).moment H =
      Integer.Sparse.eval reductionProjection1809 (momentVector H) := by
  have heq : reductionPivot1809 = (fun u v => (normalNode1021).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1021).moment H = injectiveMoment H reductionPivot1809 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1021).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1809 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1809 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1809 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1444, reductionProjection1804, reductionProjection1806, oldProjection1452, reductionProjection1808] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1809 (0 : Fin 5)) = canonicalInput1086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1444 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1444 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1086 hH))).trans (oldProjectionSound1444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1809 (1 : Fin 5)) = (normalNode1054).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1804 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1809 (2 : Fin 5)) = canonicalInput2359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1806 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2359 hH))).trans (reductionSound1806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1809 (3 : Fin 5)) = canonicalInput2371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2371 hH))).trans (oldProjectionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1809 (4 : Fin 5)) = canonicalInput2372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1808 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1809 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2372 hH))).trans (reductionSound1808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1021).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1809 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1021).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1809 (j : Fin 5)))
      1 720 1440 2 ![720, 288, 1440, 1440, 1440] ![2, 5, 1, 1, 1] reductionProjection1809 ![oldProjection1444, reductionProjection1804, reductionProjection1806, oldProjection1452, reductionProjection1808]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1810 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -30), (228, 240), (248, -720), (252, -720), (261, -720), (698, -80), (704, -80), (1251, -35)]

def reductionPivot1810 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, -2, 5], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound1810 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1055).moment H =
      Integer.Sparse.eval reductionProjection1810 (momentVector H) := by
  have heq : reductionPivot1810 = (fun u v => (normalNode1055).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1055).moment H = injectiveMoment H reductionPivot1810 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1055).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1810 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1810 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1810 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection894, reductionProjection1800, reductionProjection1776, reductionProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1810 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1810 (1 : Fin 4)) = canonicalInput2491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2491 hH))).trans (reductionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1810 (2 : Fin 4)) = canonicalInput2329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1776 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2329 hH))).trans (reductionSound1776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1810 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code248).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1810 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1055).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1810 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1055).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1810 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1810 ![oldProjection894, reductionProjection1800, reductionProjection1776, reductionProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1811 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 120), (20, -15), (23, 240), (26, -80), (94, -25), (104, -240), (105, -160), (108, -160), (241, -320), (243, -240), (247, -80), (698, -160), (703, -80), (704, -80), (1251, 5)]

def reductionPivot1811 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1811 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6308).moment H =
      Integer.Sparse.eval reductionProjection1811 (momentVector H) := by
  have heq : reductionPivot1811 = (fun u v => (normalNode6308).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6308).moment H = injectiveMoment H reductionPivot1811 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6308).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1811 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1811 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1811 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection769, reductionProjection670, oldProjection752, oldProjection751] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1811 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5610 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5610 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1811 (1 : Fin 4)) = (normalNode6328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1811 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1811 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5567 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection751 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1811 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5567 hH))).trans (oldProjectionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6308).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1811 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6308).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1811 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 72, 144] ![2, 10, 20, 10] reductionProjection1811 ![oldProjection769, reductionProjection670, oldProjection752, oldProjection751]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1812 : Integer.Sparse (Fin 1613) := [(262, 1)]

theorem reductionSound1812 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code262).moment H =
      Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
  have hc : coordinates (262 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code262) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1812, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1813 : Integer.Sparse (Fin 1613) := [(119, -1), (261, -1), (262, -1), (326, -1)]

def reductionPivot1813 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1813 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1095).moment H =
      Integer.Sparse.eval reductionProjection1813 (momentVector H) := by
  have heq : reductionPivot1813 = (fun u v => (normalNode1095).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1095).moment H = injectiveMoment H reductionPivot1813 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1095).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1813 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1813 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1813 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection464, reductionProjection1812, reductionProjection1800, oldProjection393] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1813 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1813 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1813 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code261).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1813 (3 : Fin 4)) = canonicalInput2462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection393 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1813 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2462 hH))).trans (oldProjectionSound393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1095).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1813 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1095).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1813 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1813 ![oldProjection464, reductionProjection1812, reductionProjection1800, oldProjection393]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1814 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -30), (19, -220), (20, 15), (23, -240), (26, 40), (94, 95), (104, 280), (105, 120), (108, 440), (119, 720), (228, -120), (241, 280), (243, 120), (247, 360), (248, 360), (252, 360), (261, 720), (262, 360), (326, 360), (698, 120), (703, 40), (704, 120), (1251, 65), (1278, -120)]

def reductionPivot1814 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1814 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1022).moment H =
      Integer.Sparse.eval reductionProjection1814 (momentVector H) := by
  have heq : reductionPivot1814 = (fun u v => (normalNode1022).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1022).moment H = injectiveMoment H reductionPivot1814 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1022).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1814 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1814 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1814 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection663, reductionProjection1810, reductionProjection1811, reductionProjection1813, oldProjection2385] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1814 (0 : Fin 5)) = canonicalInput1087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection663 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1087 hH))).trans (reductionSound663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1814 (1 : Fin 5)) = (normalNode1055).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1814 (2 : Fin 5)) = canonicalInput2360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1811 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2360 hH))).trans (reductionSound1811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1814 (3 : Fin 5)) = (normalNode1095).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1813 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1814 (4 : Fin 5)) = canonicalInput2373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2385 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1814 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2373 hH))).trans (oldProjectionSound2385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1022).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1814 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1022).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1814 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 2, 1440] ![1, 1, 1, 720, 1] reductionProjection1814 ![reductionProjection663, reductionProjection1810, reductionProjection1811, reductionProjection1813, oldProjection2385]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1815 : Integer.Sparse (Fin 1613) := [(264, 1)]

theorem reductionSound1815 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code264).moment H =
      Integer.Sparse.eval reductionProjection1815 (momentVector H) := by
  have hc : coordinates (264 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code264) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1815, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1816 : Integer.Sparse (Fin 1613) := [(228, 3), (249, -9), (251, -9), (264, -9), (698, -1), (1223, 3), (1226, -1), (1227, -1)]

def reductionPivot1816 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, -2, 5], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, 1, -2]]

theorem reductionSound1816 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1056).moment H =
      Integer.Sparse.eval reductionProjection1816 (momentVector H) := by
  have heq : reductionPivot1816 = (fun u v => (normalNode1056).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1056).moment H = injectiveMoment H reductionPivot1816 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1056).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1816 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1816 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1816 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection896, reductionProjection1815, reductionProjection1770, reductionProjection1756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1816 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection896 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1816 (1 : Fin 4)) = canonicalInput2492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1815 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2492 hH))).trans (reductionSound1815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1816 (2 : Fin 4)) = canonicalInput2330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1770 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2330 hH))).trans (reductionSound1770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1816 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code249).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1756 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1816 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1056).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1816 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1056).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1816 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection1816 ![oldProjection896, reductionProjection1815, reductionProjection1770, reductionProjection1756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1817 : Integer.Sparse (Fin 1613) := [(263, 1)]

theorem reductionSound1817 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code263).moment H =
      Integer.Sparse.eval reductionProjection1817 (momentVector H) := by
  have hc : coordinates (263 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code263) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1817, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1818 : Integer.Sparse (Fin 1613) := [(113, -1), (263, -1), (264, -1), (294, -1)]

def reductionPivot1818 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound1818 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1097).moment H =
      Integer.Sparse.eval reductionProjection1818 (momentVector H) := by
  have heq : reductionPivot1818 = (fun u v => (normalNode1097).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1097).moment H = injectiveMoment H reductionPivot1818 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1097).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1818 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1818 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1818 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection454, oldProjection392, reductionProjection1815, reductionProjection1817] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1818 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1716 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1716 hH))).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1818 (1 : Fin 4)) = canonicalInput2480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2480 hH))).trans (oldProjectionSound392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1818 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code264).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1815 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1818 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1817 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1818 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1097).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1818 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1097).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1818 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1818 ![oldProjection454, oldProjection392, reductionProjection1815, reductionProjection1817]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1819 : Integer.Sparse (Fin 1613) := [(101, -3), (243, 1), (1222, -3), (1225, 1), (1226, 1)]

def reductionPivot1819 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![-3, 3, -1, 1], ![5, -2, -1, -2]]

theorem reductionSound1819 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7199).moment H =
      Integer.Sparse.eval reductionProjection1819 (momentVector H) := by
  have heq : reductionPivot1819 = (fun u v => (normalNode7199).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7199).moment H = injectiveMoment H reductionPivot1819 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7199).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7199).entries)).symm
  have hshape : reductionPivot1819 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1819 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1819 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection575, reductionProjection1759, oldProjection228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1819 (0 : Fin 3)) = canonicalInput5492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1819 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1819 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5492 hH))).trans (reductionSound575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1819 (1 : Fin 3)) = canonicalInput18696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1819 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1759 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1819 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18696 hH))).trans (reductionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1819 (2 : Fin 3)) = canonicalInput18700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1819 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection228 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1819 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18700 hH))).trans (oldProjectionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7199).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1819 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7199).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1819 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1819 ![reductionProjection575, reductionProjection1759, oldProjection228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1820 : Integer.Sparse (Fin 1613) := [(23, 3), (101, 3), (102, 3), (228, 3), (241, -1), (243, -2), (264, -9), (698, -2), (1222, 3), (1223, 3), (1225, -1), (1226, -2), (1227, -1)]

def reductionPivot1820 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound1820 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1098).moment H =
      Integer.Sparse.eval reductionProjection1820 (momentVector H) := by
  have heq : reductionPivot1820 = (fun u v => (normalNode1098).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1098).moment H = injectiveMoment H reductionPivot1820 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1098).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1820 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1820 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1820 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection896, oldProjection753, reductionProjection1819, reductionProjection1815] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1820 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1717 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection896 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1717 hH))).trans (oldProjectionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1820 (1 : Fin 4)) = canonicalInput2481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2481 hH))).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1820 (2 : Fin 4)) = canonicalInput2478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2478 hH))).trans (reductionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1820 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code264).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1815 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1820 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1098).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1820 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1098).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1820 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection1820 ![oldProjection896, oldProjection753, reductionProjection1819, reductionProjection1815]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1821 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (19, -160), (20, 10), (23, -480), (94, 65), (101, -240), (102, -240), (104, 320), (105, 80), (108, 720), (113, 1440), (228, -480), (241, 400), (243, 320), (247, 240), (249, 720), (251, 720), (263, 720), (264, 2160), (294, 720), (698, 400), (704, 80), (1054, -240), (1222, -240), (1223, -480), (1225, 80), (1226, 240), (1227, 160), (1251, 20)]

def reductionPivot1821 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound1821 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1023).moment H =
      Integer.Sparse.eval reductionProjection1821 (momentVector H) := by
  have heq : reductionPivot1821 = (fun u v => (normalNode1023).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1023).moment H = injectiveMoment H reductionPivot1821 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1023).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1821 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1821 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 144, 2, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1821 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1445, reductionProjection1816, oldProjection2387, reductionProjection1818, reductionProjection1820] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1821 (0 : Fin 5)) = canonicalInput1090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1090 hH))).trans (oldProjectionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1821 (1 : Fin 5)) = (normalNode1056).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1816 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1821 (2 : Fin 5)) = canonicalInput2368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2387 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2368 hH))).trans (oldProjectionSound2387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1821 (3 : Fin 5)) = (normalNode1097).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1818 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1821 (4 : Fin 5)) = canonicalInput2375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1820 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1821 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2375 hH))).trans (reductionSound1820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1023).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1821 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1023).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1821 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 144, 2, 18] ![1, 80, 10, 720, 80] reductionProjection1821 ![oldProjection1445, reductionProjection1816, oldProjection2387, reductionProjection1818, reductionProjection1820]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1822 : Integer.Sparse (Fin 1613) := [(104, 1), (246, 1), (703, 2), (704, -1)]

def reductionPivot1822 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -3, 5], ![0, -1, 2, -1], ![0, 2, 1, -3]]

theorem reductionSound1822 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7196).moment H =
      Integer.Sparse.eval reductionProjection1822 (momentVector H) := by
  have heq : reductionPivot1822 = (fun u v => (normalNode7196).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7196).moment H = injectiveMoment H reductionPivot1822 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7196).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1822 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1822 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1822 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection40, oldProjection72, oldProjection172] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1822 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8278 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1822 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection40 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1822 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection40 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8278 hH))).trans (oldProjectionSound40 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1822 (1 : Fin 3)) = canonicalInput14293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1822 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection72 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1822 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection72 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14293 hH))).trans (oldProjectionSound72 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1822 (2 : Fin 3)) = canonicalInput14237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1822 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1822 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14237 hH))).trans (oldProjectionSound172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7196).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1822 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7196).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1822 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection1822 ![oldProjection40, oldProjection72, oldProjection172]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1823 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 96), (94, -3), (104, -16), (243, -16), (246, -16), (250, -144), (698, -16), (703, -32), (704, -16), (1054, 48), (1251, -3), (1278, 48)]

def reductionPivot1823 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -2, 5], ![0, -1, 2, -1], ![0, 2, 1, -3], ![1, 0, 0, -1]]

theorem reductionSound1823 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1057).moment H =
      Integer.Sparse.eval reductionProjection1823 (momentVector H) := by
  have heq : reductionPivot1823 = (fun u v => (normalNode1057).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1057).moment H = injectiveMoment H reductionPivot1823 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1057).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1823 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1823 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1823 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1822, oldProjection886, oldProjection887, reductionProjection1764] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1823 (0 : Fin 4)) = (normalNode7196).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1822 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1823 (1 : Fin 4)) = canonicalInput2490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection886 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2490 hH))).trans (oldProjectionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1823 (2 : Fin 4)) = canonicalInput2331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection887 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2331 hH))).trans (oldProjectionSound887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1823 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code250).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1764 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1823 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1057).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1823 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1057).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1823 (j : Fin 4)))
      2 288 288 2 ![9, 144, 9, 1] ![32, 2, 32, 288] reductionProjection1823 ![reductionProjection1822, oldProjection886, oldProjection887, reductionProjection1764]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

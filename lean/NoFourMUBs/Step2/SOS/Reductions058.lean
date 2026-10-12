import NoFourMUBs.Step2.SOS.Canonical017
import NoFourMUBs.Step2.SOS.Canonical036
import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical039
import NoFourMUBs.Step2.SOS.Canonical093
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions057
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical215
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical277
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1856 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -140), (23, -240), (94, 45), (104, 320), (108, 640), (113, 360), (241, 80), (247, 280), (264, 720), (1251, 55)]

def reductionPivot1856 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]

theorem reductionSound1856 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1032).moment H =
      Integer.Sparse.eval reductionProjection1856 (momentVector H) := by
  have heq : reductionPivot1856 = (fun u v => (normalNode1032).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1032).moment H = injectiveMoment H reductionPivot1856 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1032).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1856 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1856 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 9, 720, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1856 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1451, oldProjection755, reductionProjection1794, reductionProjection1855, reductionProjection1855] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1856 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1451⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1451 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1856 (1 : Fin 5)) = canonicalInput2339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection755 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2339 hH))).trans (oldProjectionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1856 (2 : Fin 5)) = canonicalInput2423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1794 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2423 hH))).trans (reductionSound1794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1856 (3 : Fin 5)) = (normalNode1119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1855 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1856 (4 : Fin 5)) = canonicalInput2427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1855 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1856 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2427 hH))).trans (reductionSound1855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1032).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1856 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1032).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1856 (j : Fin 5)))
      1 720 1440 2 ![720, 9, 720, 288, 288] ![2, 160, 2, 5, 5] reductionProjection1856 ![oldProjection1451, oldProjection755, reductionProjection1794, reductionProjection1855, reductionProjection1855]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1857 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 8), (20, -3), (94, -5), (1054, 48), (1222, 48), (1251, -2)]

def reductionPivot1857 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 2, -4]]

theorem reductionSound1857 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1033).moment H =
      Integer.Sparse.eval reductionProjection1857 (momentVector H) := by
  have heq : reductionPivot1857 = (fun u v => (normalNode1033).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1033).moment H = injectiveMoment H reductionPivot1857 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1033).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1857 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1857 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 6, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1857 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1030, oldProjection240, reductionProjection1783, reductionProjection1787] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1857 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw997 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1030 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical997 hH))).trans (oldProjectionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1857 (1 : Fin 4)) = canonicalInput2340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection240 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2340 hH))).trans (oldProjectionSound240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1857 (2 : Fin 4)) = canonicalInput2424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1783 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2424 hH))).trans (reductionSound1783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1857 (3 : Fin 4)) = canonicalInput2428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1787 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1857 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2428 hH))).trans (reductionSound1787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1033).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1857 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1033).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1857 (j : Fin 4)))
      2 288 288 2 ![144, 6, 144, 144] ![2, 48, 2, 2] reductionProjection1857 ![oldProjection1030, oldProjection240, reductionProjection1783, reductionProjection1787]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1858 : Integer.Sparse (Fin 1613) := [(23, -3), (104, 2), (105, 2), (108, 1), (241, 1)]

def reductionPivot1858 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 3, -2], ![1, -2, 2, -1], ![1, 2, -5, 2]]

theorem reductionSound1858 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9456).moment H =
      Integer.Sparse.eval reductionProjection1858 (momentVector H) := by
  have heq : reductionPivot1858 = (fun u v => (normalNode9456).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9456).moment H = injectiveMoment H reductionPivot1858 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9456).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9456).entries)).symm
  have hshape : reductionPivot1858 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1858 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1858 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection74, oldProjection120, oldProjection73] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1858 (0 : Fin 3)) = canonicalInput9615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1858 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1858 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9615 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1858 (1 : Fin 3)) = canonicalInput22440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1858 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection120 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1858 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22440 hH))).trans (oldProjectionSound120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1858 (2 : Fin 3)) = canonicalInput22466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1858 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection73 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1858 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection73 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22466 hH))).trans (oldProjectionSound73 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9456).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1858 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9456).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1858 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection1858 ![oldProjection74, oldProjection120, oldProjection73]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1859 : Integer.Sparse (Fin 1613) := [(23, 6), (26, -1), (104, -2), (108, -1), (241, -1), (243, -1)]

def reductionPivot1859 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, 0, 0, -2]]

theorem reductionSound1859 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1034).moment H =
      Integer.Sparse.eval reductionProjection1859 (momentVector H) := by
  have heq : reductionPivot1859 = (fun u v => (normalNode1034).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1034).moment H = injectiveMoment H reductionPivot1859 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1034).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1859 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1859 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 3, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1859 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1233, oldProjection120, reductionProjection665, reductionProjection1858] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1859 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1002 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1233 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1002 hH))).trans (oldProjectionSound1233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1859 (1 : Fin 4)) = canonicalInput2341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection120 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2341 hH))).trans (oldProjectionSound120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1859 (2 : Fin 4)) = canonicalInput2425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection665 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2425 hH))).trans (reductionSound665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1859 (3 : Fin 4)) = canonicalInput2430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1858 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1859 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1858 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2430 hH))).trans (reductionSound1858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1034).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1859 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1034).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1859 (j : Fin 4)))
      2 18 18 2 ![9, 3, 9, 9] ![2, 6, 2, 2] reductionProjection1859 ![oldProjection1233, oldProjection120, reductionProjection665, reductionProjection1858]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1860 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 4), (20, -1), (94, -1), (108, -16)]

def reductionPivot1860 : Matrix (Fin 4) (Fin 3) ℤ := ![![-1, 1, 0], ![-1, -4, 5], ![1, 1, -2], ![1, 2, -3]]

theorem reductionSound1860 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5980).moment H =
      Integer.Sparse.eval reductionProjection1860 (momentVector H) := by
  have heq : reductionPivot1860 = (fun u v => (normalNode5980).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5980).moment H = injectiveMoment H reductionPivot1860 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5980).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot1860 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1860 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 4, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1860 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection30, oldProjection48, oldProjection49] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1860 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node30⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1860 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1860 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1860 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node48⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1860 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection48 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1860 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection48 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound48 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1860 (2 : Fin 3)) = canonicalInput12350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1860 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1860 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12350 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5980).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1860 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5980).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1860 (j : Fin 3)))
      3 48 48 3 ![1, 4, 16] ![48, 12, 3] reductionProjection1860 ![oldProjection30, oldProjection48, oldProjection49]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1861 : Integer.Sparse (Fin 1613) := [(3, -16), (19, -12), (20, 2), (94, 3), (108, 16), (1251, 1), (1278, -48)]

def reductionPivot1861 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 1, -1], ![-1, -1, 4, -2], ![1, 2, -5, 2]]

theorem reductionSound1861 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11090).moment H =
      Integer.Sparse.eval reductionProjection1861 (momentVector H) := by
  have heq : reductionPivot1861 = (fun u v => (normalNode11090).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11090).moment H = injectiveMoment H reductionPivot1861 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11090).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11090).entries)).symm
  have hshape : reductionPivot1861 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1861 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1861 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection238, oldProjection234, reductionProjection1860] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1861 (0 : Fin 3)) = canonicalInput26670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1861 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection238 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1861 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26670 hH))).trans (oldProjectionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1861 (1 : Fin 3)) = canonicalInput33342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1861 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1861 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33342 hH))).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1861 (2 : Fin 3)) = canonicalInput33346.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1861 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1860 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1861 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33346 hH))).trans (reductionSound1860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11090).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1861 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11090).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1861 (j : Fin 3)))
      3 144 144 3 ![48, 1, 48] ![3, 144, 3] reductionProjection1861 ![oldProjection238, oldProjection234, reductionProjection1860]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1862 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 16), (20, -1), (94, -2), (108, -16), (703, -16), (1251, -1), (1278, 96)]

def reductionPivot1862 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 2, -4]]

theorem reductionSound1862 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1035).moment H =
      Integer.Sparse.eval reductionProjection1862 (momentVector H) := by
  have heq : reductionPivot1862 = (fun u v => (normalNode1035).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1035).moment H = injectiveMoment H reductionPivot1862 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1035).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1862 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1862 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 48, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1862 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1160, oldProjection238, reductionProjection1861, reductionProjection677] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1862 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1003 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1003 hH))).trans (oldProjectionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1862 (1 : Fin 4)) = canonicalInput2342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection238 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2342 hH))).trans (oldProjectionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1862 (2 : Fin 4)) = canonicalInput2432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1861 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2432 hH))).trans (reductionSound1861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1862 (3 : Fin 4)) = canonicalInput2435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection677 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1862 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2435 hH))).trans (reductionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1035).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1862 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1035).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1862 (j : Fin 4)))
      2 288 288 2 ![72, 48, 144, 144] ![4, 6, 2, 2] reductionProjection1862 ![oldProjection1160, oldProjection238, reductionProjection1861, reductionProjection677]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1863 : Integer.Sparse (Fin 1613) := [(3, 4), (20, -1), (23, 48), (94, -1), (101, 48), (105, -16), (108, -32), (247, -32)]

def reductionPivot1863 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, 0, -2]]

theorem reductionSound1863 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1036).moment H =
      Integer.Sparse.eval reductionProjection1863 (momentVector H) := by
  have heq : reductionPivot1863 = (fun u v => (normalNode1036).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1036).moment H = injectiveMoment H reductionPivot1863 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1036).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1863 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1863 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1863 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection999, oldProjection127, reductionProjection1791, reductionProjection675] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1863 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1005 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1005 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1863 (1 : Fin 4)) = canonicalInput2343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2343 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1863 (2 : Fin 4)) = canonicalInput2434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2434 hH))).trans (reductionSound1791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1863 (3 : Fin 4)) = canonicalInput2437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1863 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2437 hH))).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1036).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1863 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1036).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1863 (j : Fin 4)))
      2 288 288 2 ![144, 48, 144, 144] ![2, 6, 2, 2] reductionProjection1863 ![oldProjection999, oldProjection127, reductionProjection1791, reductionProjection675]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1864 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 14), (20, -2), (94, -3), (104, -8), (105, -8), (108, -24), (241, -16), (243, -8), (246, -8), (247, -16), (262, -72), (1054, 24), (1251, -3), (1278, 24)]

def reductionPivot1864 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound1864 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1128).moment H =
      Integer.Sparse.eval reductionProjection1864 (momentVector H) := by
  have heq : reductionPivot1864 = (fun u v => (normalNode1128).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1128).moment H = injectiveMoment H reductionPivot1864 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1128).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1864 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1864 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1864 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1082, reductionProjection1826, reductionProjection1807, reductionProjection1812] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1864 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3029 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1082 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3029 hH))).trans (oldProjectionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1864 (1 : Fin 4)) = canonicalInput2487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1826 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2487 hH))).trans (reductionSound1826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1864 (2 : Fin 4)) = canonicalInput2472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1807 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2472 hH))).trans (reductionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1864 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1864 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1128).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1864 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1128).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1864 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 1] ![1, 1, 1, 144] reductionProjection1864 ![oldProjection1082, reductionProjection1826, reductionProjection1807, reductionProjection1812]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1865 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -230), (4, 5), (19, -240), (20, 45), (23, -240), (26, 80), (94, 60), (104, 360), (105, 320), (106, 80), (108, 480), (241, 280), (243, 240), (246, 40), (247, 160), (262, 360), (698, 80), (703, 120), (704, 120), (1054, -360), (1251, 35), (1278, -240)]

def reductionPivot1865 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1865 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1037).moment H =
      Integer.Sparse.eval reductionProjection1865 (momentVector H) := by
  have heq : reductionPivot1865 = (fun u v => (normalNode1037).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1037).moment H = injectiveMoment H reductionPivot1865 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1037).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1865 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1865 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1865 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1450, reductionProjection1825, reductionProjection694, oldProjection1441, reductionProjection1864] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1865 (0 : Fin 5)) = canonicalInput1124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1124 hH))).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1865 (1 : Fin 5)) = canonicalInput2374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1825 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2374 hH))).trans (reductionSound1825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1865 (2 : Fin 5)) = canonicalInput2438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection694 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2438 hH))).trans (reductionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1865 (3 : Fin 5)) = canonicalInput2444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1441 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1441 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2444 hH))).trans (oldProjectionSound1441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1865 (4 : Fin 5)) = canonicalInput2445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1864 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1865 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2445 hH))).trans (reductionSound1864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1037).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1865 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1037).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1865 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 288, 144, 144] ![1, 1, 5, 10, 10] reductionProjection1865 ![oldProjection1450, reductionProjection1825, reductionProjection694, oldProjection1441, reductionProjection1864]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1866 : Integer.Sparse (Fin 1613) := [(3, -20), (4, 1), (19, -20), (20, 5), (94, 7), (1251, 3)]

def reductionPivot1866 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -4, 5], ![0, 1, 1, -2], ![1, -1, 2, -2]]

theorem reductionSound1866 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9594).moment H =
      Integer.Sparse.eval reductionProjection1866 (momentVector H) := by
  have heq : reductionPivot1866 = (fun u v => (normalNode9594).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9594).moment H = injectiveMoment H reductionPivot1866 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9594).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot1866 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1866 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1866 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection149, oldProjection71, oldProjection122] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1866 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7033 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1866 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection149 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1866 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7033 hH))).trans (oldProjectionSound149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1866 (1 : Fin 3)) = canonicalInput19161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1866 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection71 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1866 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection71 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19161 hH))).trans (oldProjectionSound71 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1866 (2 : Fin 3)) = canonicalInput19160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1866 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection122 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1866 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19160 hH))).trans (oldProjectionSound122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9594).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1866 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9594).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1866 (j : Fin 3)))
      3 144 144 3 ![48, 48, 48] ![3, 3, 3] reductionProjection1866 ![oldProjection149, oldProjection71, oldProjection122]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1867 : Integer.Sparse (Fin 1613) := [(3, 76), (4, -2), (19, 40), (20, -10), (94, -15), (703, -16), (1251, -7), (1278, 48)]

def reductionPivot1867 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound1867 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1038).moment H =
      Integer.Sparse.eval reductionProjection1867 (momentVector H) := by
  have heq : reductionPivot1867 = (fun u v => (normalNode1038).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1038).moment H = injectiveMoment H reductionPivot1867 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1038).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1867 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1867 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1867 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1160, reductionProjection1866, oldProjection1161, reductionProjection686] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1867 (0 : Fin 4)) = canonicalInput1126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1126 hH))).trans (oldProjectionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1867 (1 : Fin 4)) = canonicalInput2385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1866 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1866 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2385 hH))).trans (reductionSound1866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1867 (2 : Fin 4)) = canonicalInput2448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1161 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2448 hH))).trans (oldProjectionSound1161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1867 (3 : Fin 4)) = canonicalInput2452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection686 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1867 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2452 hH))).trans (reductionSound686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1038).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1867 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1038).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1867 (j : Fin 4)))
      2 288 288 2 ![72, 144, 72, 144] ![4, 2, 4, 2] reductionProjection1867 ![oldProjection1160, reductionProjection1866, oldProjection1161, reductionProjection686]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1868 : Integer.Sparse (Fin 1613) := [(3, 16), (19, 28), (20, -6), (23, 48), (94, -13), (101, 48), (104, -32), (108, -32), (243, -16), (703, -32), (704, -32), (1251, -7), (1278, 48)]

def reductionPivot1868 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound1868 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1039).moment H =
      Integer.Sparse.eval reductionProjection1868 (momentVector H) := by
  have heq : reductionPivot1868 = (fun u v => (normalNode1039).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1039).moment H = injectiveMoment H reductionPivot1868 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1039).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1868 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1868 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1868 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection886, reductionProjection1778, reductionProjection1801, oldProjection890] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1868 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1014 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection886 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1014 hH))).trans (oldProjectionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1868 (1 : Fin 4)) = canonicalInput2388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2388 hH))).trans (reductionSound1778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1868 (2 : Fin 4)) = canonicalInput2451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1801 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2451 hH))).trans (reductionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1868 (3 : Fin 4)) = canonicalInput2453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1868 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2453 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1039).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1868 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1039).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1868 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 144] ![2, 4, 2, 2] reductionProjection1868 ![oldProjection886, reductionProjection1778, reductionProjection1801, oldProjection890]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1869 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (108, -16), (113, -72), (119, -144), (247, -16), (1251, -1), (1278, 24)]

def reductionPivot1869 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -1, 1, -1]]

theorem reductionSound1869 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1130).moment H =
      Integer.Sparse.eval reductionProjection1869 (momentVector H) := by
  have heq : reductionPivot1869 = (fun u v => (normalNode1130).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1130).moment H = injectiveMoment H reductionPivot1869 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1130).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1869 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1869 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1869 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection640, oldProjection393, oldProjection393, oldProjection392] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1869 (0 : Fin 4)) = (normalNode7227).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection640 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1869 (1 : Fin 4)) = canonicalInput2500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection393 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2500 hH))).trans (oldProjectionSound393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1869 (2 : Fin 4)) = canonicalInput2466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection393 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2466 hH))).trans (oldProjectionSound393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1869 (3 : Fin 4)) = canonicalInput2460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1869 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2460 hH))).trans (oldProjectionSound392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1130).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1869 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1130).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1869 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection1869 ![reductionProjection640, oldProjection393, oldProjection393, oldProjection392]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1870 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -40), (19, -180), (20, 5), (23, -240), (94, 65), (102, -240), (104, 480), (105, 80), (108, 1280), (113, 1080), (119, 720), (241, 240), (243, 80), (247, 480), (698, 80), (1251, 55), (1278, -120)]

def reductionPivot1870 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1870 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1040).moment H =
      Integer.Sparse.eval reductionProjection1870 (momentVector H) := by
  have heq : reductionPivot1870 = (fun u v => (normalNode1040).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1040).moment H = injectiveMoment H reductionPivot1870 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1040).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1870 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1870 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 720, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1870 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1451, reductionProjection1846, reductionProjection1846, oldProjection1451, reductionProjection1869] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1870 (0 : Fin 5)) = canonicalInput1131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1451 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1131 hH))).trans (oldProjectionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1870 (1 : Fin 5)) = canonicalInput2401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2401 hH))).trans (reductionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1870 (2 : Fin 5)) = canonicalInput2455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2455 hH))).trans (reductionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1870 (3 : Fin 5)) = canonicalInput2458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1451 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2458 hH))).trans (oldProjectionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1870 (4 : Fin 5)) = canonicalInput2459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1869 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1870 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2459 hH))).trans (reductionSound1869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1040).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1870 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1040).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1870 (j : Fin 5)))
      1 720 1440 2 ![720, 1440, 1440, 720, 144] ![2, 1, 1, 2, 10] reductionProjection1870 ![oldProjection1451, reductionProjection1846, reductionProjection1846, oldProjection1451, reductionProjection1869]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1871 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 28), (20, -1), (94, -7), (104, -96), (105, -16), (108, -240), (241, -16), (247, -80), (1251, -6)]

def reductionPivot1871 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound1871 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1041).moment H =
      Integer.Sparse.eval reductionProjection1871 (momentVector H) := by
  have heq : reductionPivot1871 = (fun u v => (normalNode1041).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1041).moment H = injectiveMoment H reductionPivot1871 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1041).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1871 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1871 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1871 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1240, reductionProjection646, oldProjection1240, reductionProjection684] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1871 (0 : Fin 4)) = canonicalInput1132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1132 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1871 (1 : Fin 4)) = canonicalInput2409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection646 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2409 hH))).trans (reductionSound646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1871 (2 : Fin 4)) = canonicalInput2461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2461 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1871 (3 : Fin 4)) = canonicalInput2463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1871 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2463 hH))).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1041).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1871 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1041).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1871 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection1871 ![oldProjection1240, reductionProjection646, oldProjection1240, reductionProjection684]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1872 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -3), (23, 48), (26, -16), (94, -4), (104, -96), (105, -64), (108, -144), (241, -32), (243, -16), (247, -32), (1251, -5)]

def reductionPivot1872 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound1872 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1042).moment H =
      Integer.Sparse.eval reductionProjection1872 (momentVector H) := by
  have heq : reductionPivot1872 = (fun u v => (normalNode1042).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1042).moment H = injectiveMoment H reductionPivot1872 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1042).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1872 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1872 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1872 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection999, reductionProjection1805, oldProjection1038, reductionProjection1807] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1872 (0 : Fin 4)) = canonicalInput1137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1137 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1872 (1 : Fin 4)) = canonicalInput2418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1805 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2418 hH))).trans (reductionSound1805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1872 (2 : Fin 4)) = canonicalInput2470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1038 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2470 hH))).trans (oldProjectionSound1038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1872 (3 : Fin 4)) = canonicalInput2471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1807 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1872 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2471 hH))).trans (reductionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1042).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1872 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1042).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1872 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 144] ![2, 2, 4, 2] reductionProjection1872 ![oldProjection999, reductionProjection1805, oldProjection1038, reductionProjection1807]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1873 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 20), (20, -5), (23, 48), (26, -16), (104, -16), (105, -32), (241, -16), (243, -32), (262, -144), (703, -16), (704, -16), (1251, -3), (1278, 48)]

def reductionPivot1873 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1873 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1043).moment H =
      Integer.Sparse.eval reductionProjection1873 (momentVector H) := by
  have heq : reductionPivot1873 = (fun u v => (normalNode1043).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1043).moment H = injectiveMoment H reductionPivot1873 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1043).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1873 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1873 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1873 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection886, reductionProjection670, reductionProjection1812, oldProjection888] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1873 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection886 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1023 hH))).trans (oldProjectionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1873 (1 : Fin 4)) = canonicalInput2419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2419 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1873 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1873 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1460 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection888 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1873 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1460 hH))).trans (oldProjectionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1043).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1873 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1043).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1873 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection1873 ![oldProjection886, reductionProjection670, reductionProjection1812, oldProjection888]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1874 : Integer.Sparse (Fin 1613) := [(246, 1), (703, 1), (704, 1), (1054, -3), (1278, -3)]

def reductionPivot1874 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 1, 1, -2], ![-1, -2, 4, -1], ![2, 1, -5, 2]]

theorem reductionSound1874 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode10358).moment H =
      Integer.Sparse.eval reductionProjection1874 (momentVector H) := by
  have heq : reductionPivot1874 = (fun u v => (normalNode10358).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10358).moment H = injectiveMoment H reductionPivot1874 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10358).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10358).entries)).symm
  have hshape : reductionPivot1874 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1874 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1874 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection234, oldProjection200, oldProjection172] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1874 (0 : Fin 3)) = canonicalInput23338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1874 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1874 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23338 hH))).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1874 (1 : Fin 3)) = canonicalInput32758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1874 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection200 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1874 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32758 hH))).trans (oldProjectionSound200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1874 (2 : Fin 3)) = canonicalInput32761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1874 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1874 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32761 hH))).trans (oldProjectionSound172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10358).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1874 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10358).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1874 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1874 ![oldProjection234, oldProjection200, oldProjection172]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1875 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 96), (26, -16), (75, 48), (94, -3), (243, -48), (246, -16), (698, -32), (703, -32), (704, -64), (1054, 96), (1223, 48), (1251, -3), (1278, 48)]

def reductionPivot1875 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]

theorem reductionSound1875 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1047).moment H =
      Integer.Sparse.eval reductionProjection1875 (momentVector H) := by
  have heq : reductionPivot1875 = (fun u v => (normalNode1047).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1047).moment H = injectiveMoment H reductionPivot1875 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1047).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1875 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1875 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1875 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1278, reductionProjection1838, oldProjection887, reductionProjection1874] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1875 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1503 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1278 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1503 hH))).trans (oldProjectionSound1278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1875 (1 : Fin 4)) = canonicalInput2334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1838 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2334 hH))).trans (reductionSound1838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1875 (2 : Fin 4)) = canonicalInput2327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection887 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2327 hH))).trans (oldProjectionSound887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1875 (3 : Fin 4)) = canonicalInput2326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1874 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1875 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1874 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2326 hH))).trans (reductionSound1874 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1047).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1875 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1047).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1875 (j : Fin 4)))
      2 288 288 2 ![144, 9, 9, 9] ![2, 32, 32, 32] reductionProjection1875 ![oldProjection1278, reductionProjection1838, oldProjection887, reductionProjection1874]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1876 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (26, -32), (94, 2), (104, -32), (105, -32), (108, -32), (241, -16), (243, -48), (1251, -1)]

def reductionPivot1876 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 2, 3, -5], ![1, 0, -3, 2]]

theorem reductionSound1876 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10586).moment H =
      Integer.Sparse.eval reductionProjection1876 (momentVector H) := by
  have heq : reductionPivot1876 = (fun u v => (normalNode10586).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10586).moment H = injectiveMoment H reductionPivot1876 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10586).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot1876 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1876 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1876 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1805, reductionProjection1805, oldProjection905, oldProjection129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1876 (0 : Fin 4)) = canonicalInput17112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1805 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17112 hH))).trans (reductionSound1805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1876 (1 : Fin 4)) = canonicalInput25401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1805 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25401 hH))).trans (reductionSound1805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1876 (2 : Fin 4)) = canonicalInput25584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection905 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25584 hH))).trans (oldProjectionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1876 (3 : Fin 4)) = canonicalInput25664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1876 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25664 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10586).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1876 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10586).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1876 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 24] ![2, 2, 2, 12] reductionProjection1876 ![reductionProjection1805, reductionProjection1805, oldProjection905, oldProjection129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1877 : Integer.Sparse (Fin 1613) := [(75, 3), (88, -2), (101, 6), (243, -4), (253, -9), (1222, 3), (1225, -2), (1226, -1)]

def reductionPivot1877 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]

theorem reductionSound1877 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1064).moment H =
      Integer.Sparse.eval reductionProjection1877 (momentVector H) := by
  have heq : reductionPivot1877 = (fun u v => (normalNode1064).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1064).moment H = injectiveMoment H reductionPivot1877 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1064).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1877 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1877 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1877 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection902, reductionProjection1819, reductionProjection1769, reductionProjection1755] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1877 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection902 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1877 (1 : Fin 4)) = canonicalInput2495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2495 hH))).trans (reductionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1877 (2 : Fin 4)) = canonicalInput2337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1769 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2337 hH))).trans (reductionSound1769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1877 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code253).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1755 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1877 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1064).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1877 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1064).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1877 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection1877 ![oldProjection902, reductionProjection1819, reductionProjection1769, reductionProjection1755]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1878 : Integer.Sparse (Fin 1613) := [(3, -16), (19, -52), (20, 11), (26, 64), (75, -144), (88, 96), (94, -9), (101, -192), (104, 112), (105, 112), (108, 64), (241, 80), (243, 272), (253, 144), (255, 288), (703, 32), (1222, -48), (1225, 32), (1226, 80), (1251, 4)]

def reductionPivot1878 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound1878 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1058).moment H =
      Integer.Sparse.eval reductionProjection1878 (momentVector H) := by
  have heq : reductionPivot1878 = (fun u v => (normalNode1058).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1058).moment H = injectiveMoment H reductionPivot1878 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1058).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1878 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1878 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 18, 72, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1878 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1876, oldProjection2386, reductionProjection1877, reductionProjection1842, reductionProjection1842] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1878 (0 : Fin 5)) = canonicalInput5969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1876 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5969 hH))).trans (reductionSound1876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1878 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1454 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1454 hH))).trans (oldProjectionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1878 (2 : Fin 5)) = (normalNode1064).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1877 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1878 (3 : Fin 5)) = canonicalInput2332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1842 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2332 hH))).trans (reductionSound1842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1878 (4 : Fin 5)) = (normalNode1063).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1842 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1878 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1058).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1878 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1058).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1878 (j : Fin 5)))
      1 288 288 1 ![288, 288, 18, 72, 72] ![1, 1, 16, 4, 4] reductionProjection1878 ![reductionProjection1876, oldProjection2386, reductionProjection1877, reductionProjection1842, reductionProjection1842]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1879 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -140), (4, 5), (19, -180), (20, 45), (23, -480), (26, 480), (75, -720), (88, 480), (94, -10), (101, -480), (102, -240), (104, 160), (105, 560), (106, 160), (108, 160), (241, 560), (243, 1040), (247, 160), (254, 720), (255, 1440), (698, 160), (703, 400), (1226, 400), (1251, -5)]

def reductionPivot1879 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1879 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1061).moment H =
      Integer.Sparse.eval reductionProjection1879 (momentVector H) := by
  have heq : reductionPivot1879 = (fun u v => (normalNode1061).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1061).moment H = injectiveMoment H reductionPivot1879 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1061).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1879 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1879 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 72, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1879 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2751, reductionProjection694, reductionProjection1845, reductionProjection1842, reductionProjection1839] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1879 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2934 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2751 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2934 hH))).trans (oldProjectionSound2751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1879 (1 : Fin 5)) = canonicalInput2414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection694 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2414 hH))).trans (reductionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1879 (2 : Fin 5)) = (normalNode1065).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1845 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1879 (3 : Fin 5)) = canonicalInput2332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1842 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2332 hH))).trans (reductionSound1842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1879 (4 : Fin 5)) = (normalNode1062).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1839 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1879 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1061).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1879 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1061).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1879 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 72, 288] ![1, 5, 80, 20, 5] reductionProjection1879 ![oldProjection2751, reductionProjection694, reductionProjection1845, reductionProjection1842, reductionProjection1839]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1880 : Integer.Sparse (Fin 1613) := [(259, 1)]

theorem reductionSound1880 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code259).moment H =
      Integer.Sparse.eval reductionProjection1880 (momentVector H) := by
  have hc : coordinates (259 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code259) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1880, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1881 : Integer.Sparse (Fin 1613) := [(257, 1)]

theorem reductionSound1881 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code257).moment H =
      Integer.Sparse.eval reductionProjection1881 (momentVector H) := by
  have hc : coordinates (257 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code257) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1881, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1882 : Integer.Sparse (Fin 1613) := [(111, -1), (127, -1), (257, -1), (259, -1)]

def reductionPivot1882 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, -1, -1, 0]]

theorem reductionSound1882 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1080).moment H =
      Integer.Sparse.eval reductionProjection1882 (momentVector H) := by
  have heq : reductionPivot1882 = (fun u v => (normalNode1080).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1080).moment H = injectiveMoment H reductionPivot1882 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1080).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1882 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1882 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1882 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection396, reductionProjection1880, reductionProjection1881, oldProjection391] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1882 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1637 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1637 hH))).trans (oldProjectionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1882 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1880 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1880 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1882 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1881 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1881 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1882 (3 : Fin 4)) = canonicalInput2406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection391 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1882 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2406 hH))).trans (oldProjectionSound391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1080).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1882 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1080).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1882 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1882 ![oldProjection396, reductionProjection1880, reductionProjection1881, oldProjection391]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1883 : Integer.Sparse (Fin 1613) := [(1062, 1)]

theorem reductionSound1883 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1062).moment H =
      Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
  have hc : coordinates (1062 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1062) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1883, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1884 : Integer.Sparse (Fin 1613) := [(1054, -1), (1061, -1), (1062, -1)]

def reductionPivot1884 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-4, 2, 0, 2], ![5, -1, -2, -2]]

theorem reductionSound1884 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode9590).moment H =
      Integer.Sparse.eval reductionProjection1884 (momentVector H) := by
  have heq : reductionPivot1884 = (fun u v => (normalNode9590).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9590).moment H = injectiveMoment H reductionPivot1884 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9590).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9590).entries)).symm
  have hshape : reductionPivot1884 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1884 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1884 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection200, reductionProjection1883, oldProjection218] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1884 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6887 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1884 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection200 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1884 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6887 hH))).trans (oldProjectionSound200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1884 (1 : Fin 3)) = canonicalInput27378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1884 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1883 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1884 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27378 hH))).trans (reductionSound1883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1884 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8885 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1884 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection218 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1884 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8885 hH))).trans (oldProjectionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9590).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1884 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9590).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1884 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1884 ![oldProjection200, reductionProjection1883, oldProjection218]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1885 : Integer.Sparse (Fin 1613) := [(23, 24), (94, -1), (243, -16), (257, -72), (698, -24), (700, -8), (704, -16), (1054, 48), (1061, 48), (1062, 24), (1251, -1)]

def reductionPivot1885 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -1, -1, 0]]

theorem reductionSound1885 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1076).moment H =
      Integer.Sparse.eval reductionProjection1885 (momentVector H) := by
  have heq : reductionPivot1885 = (fun u v => (normalNode1076).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1076).moment H = injectiveMoment H reductionPivot1885 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1076).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1885 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1885 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 3, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1885 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1173, reductionProjection1881, reductionProjection1884, oldProjection887] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1885 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1608 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1173 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1608 hH))).trans (oldProjectionSound1173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1885 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1881 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1881 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1885 (2 : Fin 4)) = canonicalInput2382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1884 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1884 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2382 hH))).trans (reductionSound1884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1885 (3 : Fin 4)) = canonicalInput2381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection887 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1885 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2381 hH))).trans (oldProjectionSound887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1076).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1885 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1076).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1885 (j : Fin 4)))
      2 144 144 2 ![72, 1, 3, 9] ![2, 144, 48, 16] reductionProjection1885 ![oldProjection1173, reductionProjection1881, reductionProjection1884, oldProjection887]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1886 : Integer.Sparse (Fin 1613) := [(0, -1), (23, -720), (94, 30), (102, -240), (111, 2160), (127, 2160), (241, 240), (243, 720), (257, 2160), (259, 1440), (698, 320), (700, 240), (704, 480), (1054, -720), (1059, 80), (1061, -720), (1062, -240), (1251, 15)]

def reductionPivot1886 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -1, 0]]

theorem reductionSound1886 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1066).moment H =
      Integer.Sparse.eval reductionProjection1886 (momentVector H) := by
  have heq : reductionPivot1886 = (fun u v => (normalNode1066).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1066).moment H = injectiveMoment H reductionPivot1886 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1066).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1886 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1886 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 144, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1886 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1583, reductionProjection1882, reductionProjection1882, reductionProjection1885, oldProjection1448] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1886 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1583⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1583 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1886 (1 : Fin 5)) = canonicalInput2392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1882 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2392 hH))).trans (reductionSound1882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1886 (2 : Fin 5)) = (normalNode1080).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1882 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1886 (3 : Fin 5)) = (normalNode1076).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1885 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1885 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1886 (4 : Fin 5)) = canonicalInput2354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1448 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1886 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2354 hH))).trans (oldProjectionSound1448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1066).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1886 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1066).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1886 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 144, 18] ![1, 720, 720, 10, 80] reductionProjection1886 ![oldProjection1583, reductionProjection1882, reductionProjection1882, reductionProjection1885, oldProjection1448]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1887 : Integer.Sparse (Fin 1613) := [(26, 2), (101, -3), (105, 2), (243, 2)]

def reductionPivot1887 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, -3, 3, 0], ![2, 2, -5, 1]]

theorem reductionSound1887 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9129).moment H =
      Integer.Sparse.eval reductionProjection1887 (momentVector H) := by
  have heq : reductionPivot1887 = (fun u v => (normalNode9129).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9129).moment H = injectiveMoment H reductionPivot1887 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9129).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9129).entries)).symm
  have hshape : reductionPivot1887 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1887 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1887 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection70, reductionProjection575, oldProjection70] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1887 (0 : Fin 3)) = canonicalInput11585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1887 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection70 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1887 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection70 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11585 hH))).trans (oldProjectionSound70 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1887 (1 : Fin 3)) = canonicalInput23379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1887 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1887 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23379 hH))).trans (reductionSound575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1887 (2 : Fin 3)) = canonicalInput23393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1887 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection70 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1887 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection70 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23393 hH))).trans (oldProjectionSound70 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9129).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1887 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9129).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1887 (j : Fin 3)))
      3 9 9 3 ![3, 1, 3] ![3, 9, 3] reductionProjection1887 ![oldProjection70, reductionProjection575, oldProjection70]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

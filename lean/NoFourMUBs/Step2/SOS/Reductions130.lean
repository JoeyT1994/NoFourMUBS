import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical059
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical061
import NoFourMUBs.Step2.SOS.Canonical065
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical101
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical238
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical241
import NoFourMUBs.Step2.SOS.Canonical301
import NoFourMUBs.Step2.SOS.Canonical314
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical383
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions129
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical105
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical176
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical179
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical201
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical224
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical253
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical79
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection4160 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -1), (23, 48), (26, -16), (94, -5), (104, -80), (105, -16), (108, -80), (241, -16), (243, -16), (247, -16), (414, -144), (703, -32), (704, -16), (1251, -4)]

def reductionPivot4160 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 1, 3, -5]]

theorem reductionSound4160 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1693).moment H =
      Integer.Sparse.eval reductionProjection4160 (momentVector H) := by
  have heq : reductionPivot4160 = (fun u v => (normalNode1693).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1693).moment H = injectiveMoment H reductionPivot4160 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1693).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4160 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4160 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4160 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4157, reductionProjection4158, reductionProjection4159, oldProjection999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4160 (0 : Fin 4)) = canonicalInput6492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4157 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6492 hH))).trans (reductionSound4157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4160 (1 : Fin 4)) = canonicalInput3906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4158 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3906 hH))).trans (reductionSound4158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4160 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code414).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4160 (3 : Fin 4)) = canonicalInput3793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4160 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3793 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1693).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4160 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1693).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4160 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection4160 ![reductionProjection4157, reductionProjection4158, reductionProjection4159, oldProjection999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4161 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -260), (20, 20), (23, -240), (26, 40), (88, 40), (94, 115), (104, 360), (105, 80), (108, 400), (228, -120), (241, 400), (243, 360), (247, 320), (329, 720), (414, 360), (548, 360), (698, 320), (700, 40), (703, 80), (704, 360), (1061, -120), (1226, 40), (1251, 75)]

def reductionPivot4161 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound4161 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1685).moment H =
      Integer.Sparse.eval reductionProjection4161 (momentVector H) := by
  have heq : reductionPivot4161 = (fun u v => (normalNode1685).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1685).moment H = injectiveMoment H reductionPivot4161 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1685).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4161 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4161 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4161 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1727, oldProjection1605, reductionProjection2300, reductionProjection2301, reductionProjection4160] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4161 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1727 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4161 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1755 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1755 hH))).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4161 (2 : Fin 5)) = canonicalInput3785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2300 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3785 hH))).trans (reductionSound2300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4161 (3 : Fin 5)) = canonicalInput3781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2301 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3781 hH))).trans (reductionSound2301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4161 (4 : Fin 5)) = (normalNode1693).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4160 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4161 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1685).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4161 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1685).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4161 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 720, 720, 288] ![1, 1, 2, 2, 5] reductionProjection4161 ![oldProjection1727, oldProjection1605, reductionProjection2300, reductionProjection2301, reductionProjection4160]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4162 : Integer.Sparse (Fin 1613) := [(104, 1), (108, 1), (247, 1)]

def reductionPivot4162 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, -1, -1, 2], ![0, 2, 3, -5]]

theorem reductionSound4162 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7855).moment H =
      Integer.Sparse.eval reductionProjection4162 (momentVector H) := by
  have heq : reductionPivot4162 = (fun u v => (normalNode7855).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7855).moment H = injectiveMoment H reductionPivot4162 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7855).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot4162 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4162 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4162 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection30, oldProjection78, oldProjection124] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4162 (0 : Fin 3)) = canonicalInput24590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4162 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4162 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24590 hH))).trans (oldProjectionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4162 (1 : Fin 3)) = canonicalInput15479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4162 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection78 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4162 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15479 hH))).trans (oldProjectionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4162 (2 : Fin 3)) = canonicalInput15265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4162 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection124 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4162 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15265 hH))).trans (oldProjectionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7855).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4162 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7855).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4162 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection4162 ![oldProjection30, oldProjection78, oldProjection124]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4163 : Integer.Sparse (Fin 1613) := [(23, -3), (25, -3), (104, 1), (108, 2)]

def reductionPivot4163 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![0, -1, 3, -2], ![3, 2, -5, 0]]

theorem reductionSound4163 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6688).moment H =
      Integer.Sparse.eval reductionProjection4163 (momentVector H) := by
  have heq : reductionPivot4163 = (fun u v => (normalNode6688).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6688).moment H = injectiveMoment H reductionPivot4163 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6688).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6688).entries)).symm
  have hshape : reductionPivot4163 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4163 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4163 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection118, oldProjection78, oldProjection74] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4163 (0 : Fin 3)) = canonicalInput329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4163 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4163 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound329 hH))).trans (reductionSound118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4163 (1 : Fin 3)) = canonicalInput5501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4163 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection78 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4163 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5501 hH))).trans (oldProjectionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4163 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2550 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4163 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4163 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2550 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6688).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4163 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6688).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4163 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection4163 ![reductionProjection118, oldProjection78, oldProjection74]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4164 : Integer.Sparse (Fin 1613) := [(411, 1)]

theorem reductionSound4164 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code411).moment H =
      Integer.Sparse.eval reductionProjection4164 (momentVector H) := by
  have hc : coordinates (411 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code411) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4164, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4165 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 96), (25, 48), (94, -1), (104, -48), (108, -96), (247, -32), (411, -144), (1251, -1)]

def reductionPivot4165 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]

theorem reductionSound4165 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1703).moment H =
      Integer.Sparse.eval reductionProjection4165 (momentVector H) := by
  have heq : reductionPivot4165 = (fun u v => (normalNode1703).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1703).moment H = injectiveMoment H reductionPivot4165 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1703).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4165 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4165 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4165 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4162, reductionProjection4163, oldProjection999, reductionProjection4164] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4165 (0 : Fin 4)) = (normalNode7855).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4162 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4165 (1 : Fin 4)) = canonicalInput4222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4163 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4222 hH))).trans (reductionSound4163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4165 (2 : Fin 4)) = canonicalInput3799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3799 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4165 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code411).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4165 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1703).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4165 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1703).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4165 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection4165 ![reductionProjection4162, reductionProjection4163, oldProjection999, reductionProjection4164]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4166 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -200), (20, 5), (23, -480), (25, -120), (38, -480), (94, 95), (104, 200), (108, 480), (141, 720), (228, -240), (231, -120), (241, 200), (247, 320), (411, 360), (545, 360), (700, 80), (704, 160), (1053, -120), (1059, 40), (1251, 105)]

def reductionPivot4166 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound4166 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1686).moment H =
      Integer.Sparse.eval reductionProjection4166 (momentVector H) := by
  have heq : reductionPivot4166 = (fun u v => (normalNode1686).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1686).moment H = injectiveMoment H reductionPivot4166 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1686).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4166 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4166 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4166 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1735, oldProjection1484, reductionProjection4165, reductionProjection775, reductionProjection775] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4166 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1735⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1735 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4166 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1759 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1484 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1759 hH))).trans (oldProjectionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4166 (2 : Fin 5)) = (normalNode1703).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4165 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4166 (3 : Fin 5)) = canonicalInput3792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection775 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3792 hH))).trans (reductionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4166 (4 : Fin 5)) = canonicalInput3791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection775 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4166 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3791 hH))).trans (reductionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1686).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4166 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1686).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4166 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 288, 1440, 1440] ![1, 2, 5, 1, 1] reductionProjection4166 ![oldProjection1735, oldProjection1484, reductionProjection4165, reductionProjection775, reductionProjection775]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4167 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 8), (94, -6), (247, -32), (329, -144), (549, -144), (694, 48), (1251, -7), (1319, 48)]

def reductionPivot4167 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound4167 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1687).moment H =
      Integer.Sparse.eval reductionProjection4167 (momentVector H) := by
  have heq : reductionPivot4167 = (fun u v => (normalNode1687).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1687).moment H = injectiveMoment H reductionPivot4167 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1687).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4167 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4167 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4167 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection502, oldProjection972, oldProjection931, oldProjection466] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4167 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4167 (1 : Fin 4)) = canonicalInput3810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3810 hH))).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4167 (2 : Fin 4)) = canonicalInput3795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection931 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3795 hH))).trans (oldProjectionSound931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4167 (3 : Fin 4)) = canonicalInput3794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4167 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3794 hH))).trans (oldProjectionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1687).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4167 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1687).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4167 (j : Fin 4)))
      2 288 1440 10 ![1, 720, 360, 1] ![1440, 2, 4, 1440] reductionProjection4167 ![oldProjection502, oldProjection972, oldProjection931, oldProjection466]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4168 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 120), (20, -20), (45, 240), (94, -70), (108, -160), (247, -80), (704, -80), (1251, -55)]

def reductionPivot4168 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -1, 2], ![0, -2, -1, 3], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound4168 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10214).moment H =
      Integer.Sparse.eval reductionProjection4168 (momentVector H) := by
  have heq : reductionPivot4168 = (fun u v => (normalNode10214).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10214).moment H = injectiveMoment H reductionPivot4168 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10214).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4168 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4168 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4168 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection985, oldProjection1168, reductionProjection1892, oldProjection1091] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4168 (0 : Fin 4)) = canonicalInput22735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection985 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22735 hH))).trans (oldProjectionSound985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4168 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7169 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7169 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4168 (2 : Fin 4)) = canonicalInput20153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1892 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20153 hH))).trans (reductionSound1892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4168 (3 : Fin 4)) = canonicalInput20151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1091 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4168 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20151 hH))).trans (oldProjectionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10214).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4168 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10214).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4168 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 144, 144] ![20, 2, 10, 10] reductionProjection4168 ![oldProjection985, oldProjection1168, reductionProjection1892, oldProjection1091]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4169 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (26, -16), (40, 48), (42, -16), (94, 1), (105, -32), (241, -48), (243, -64), (698, -16), (1251, 2)]

def reductionPivot4169 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound4169 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6730).moment H =
      Integer.Sparse.eval reductionProjection4169 (momentVector H) := by
  have heq : reductionPivot4169 = (fun u v => (normalNode6730).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6730).moment H = injectiveMoment H reductionPivot4169 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6730).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4169 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4169 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4169 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1031, oldProjection817, reductionProjection4153, oldProjection792] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4169 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6432 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6432 hH))).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4169 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node817⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection817 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4169 (2 : Fin 4)) = (normalNode6733).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4153 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4169 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node792⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4169 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6730).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4169 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6730).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4169 (j : Fin 4)))
      2 288 288 2 ![144, 9, 9, 72] ![2, 32, 32, 4] reductionProjection4169 ![oldProjection1031, oldProjection817, reductionProjection4153, oldProjection792]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4170 : Integer.Sparse (Fin 1613) := [(413, 1)]

theorem reductionSound4170 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code413).moment H =
      Integer.Sparse.eval reductionProjection4170 (momentVector H) := by
  have hc : coordinates (413 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code413) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4170, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4171 : Integer.Sparse (Fin 1613) := [(38, 24), (94, -1), (410, -72), (413, -72), (480, -72), (698, -8), (700, -8), (1061, 24), (1251, -1)]

def reductionPivot4171 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, 0, 3, -4]]

theorem reductionSound4171 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1700).moment H =
      Integer.Sparse.eval reductionProjection4171 (momentVector H) := by
  have heq : reductionPivot4171 = (fun u v => (normalNode1700).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1700).moment H = injectiveMoment H reductionPivot4171 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1700).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4171 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4171 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4171 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection997, oldProjection486, reductionProjection4170, reductionProjection4154] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4171 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node997⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4171 (1 : Fin 4)) = canonicalInput4224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection486 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4224 hH))).trans (oldProjectionSound486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4171 (2 : Fin 4)) = canonicalInput3797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3797 hH))).trans (reductionSound4170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4171 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code410).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4154 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4171 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1700).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4171 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1700).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4171 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection4171 ![oldProjection997, oldProjection486, reductionProjection4170, reductionProjection4154]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4172 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (40, 48), (45, 48), (94, -6), (104, -32), (241, -16), (243, -16), (329, -144), (413, -144), (704, -48), (1251, -5)]

def reductionPivot4172 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 1, -1, -1]]

theorem reductionSound4172 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1694).moment H =
      Integer.Sparse.eval reductionProjection4172 (momentVector H) := by
  have heq : reductionPivot4172 = (fun u v => (normalNode1694).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1694).moment H = injectiveMoment H reductionPivot4172 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1694).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4172 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4172 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4172 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1091, oldProjection792, oldProjection466, reductionProjection4170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4172 (0 : Fin 4)) = canonicalInput6494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1091 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6494 hH))).trans (oldProjectionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4172 (1 : Fin 4)) = canonicalInput3909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3909 hH))).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4172 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1751 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1751 hH))).trans (oldProjectionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4172 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code413).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4172 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1694).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4172 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1694).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4172 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 1] ![2, 4, 288, 288] reductionProjection4172 ![oldProjection1091, oldProjection792, oldProjection466, reductionProjection4170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4173 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -360), (20, 30), (26, 80), (38, -240), (40, -480), (42, 80), (45, -480), (94, 175), (104, 400), (105, 240), (108, 320), (241, 480), (243, 480), (247, 240), (329, 1440), (410, 720), (413, 1440), (480, 720), (698, 240), (700, 80), (704, 560), (1061, -240), (1251, 140)]

def reductionPivot4173 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 3, -4]]

theorem reductionSound4173 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1689).moment H =
      Integer.Sparse.eval reductionProjection4173 (momentVector H) := by
  have heq : reductionPivot4173 = (fun u v => (normalNode1689).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1689).moment H = injectiveMoment H reductionPivot4173 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1689).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4173 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4173 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4173 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4168, reductionProjection4169, reductionProjection4171, reductionProjection4172, reductionProjection2301] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4173 (0 : Fin 5)) = canonicalInput6479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4168 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6479 hH))).trans (reductionSound4168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4173 (1 : Fin 5)) = canonicalInput3893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4169 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3893 hH))).trans (reductionSound4169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4173 (2 : Fin 5)) = (normalNode1700).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4173 (3 : Fin 5)) = canonicalInput3782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4172 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3782 hH))).trans (reductionSound4172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4173 (4 : Fin 5)) = canonicalInput3781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2301 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4173 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3781 hH))).trans (reductionSound2301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1689).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4173 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1689).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4173 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 288, 720] ![1, 5, 10, 5, 2] reductionProjection4173 ![reductionProjection4168, reductionProjection4169, reductionProjection4171, reductionProjection4172, reductionProjection2301]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4174 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (243, 16), (703, 16), (704, -16), (1251, 1)]

def reductionPivot4174 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, -3, 4], ![0, 2, 1, -3], ![1, -1, 2, -2]]

theorem reductionSound4174 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10548).moment H =
      Integer.Sparse.eval reductionProjection4174 (momentVector H) := by
  have heq : reductionPivot4174 = (fun u v => (normalNode10548).entries (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10548).moment H = injectiveMoment H reductionPivot4174 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10548).entries OAI.MUB6.Certificate.PairSemantics.permutation9)).symm
  have hshape : reductionPivot4174 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4174 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4174 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection72, oldProjection132, oldProjection40] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4174 (0 : Fin 3)) = canonicalInput14291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4174 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection72 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4174 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection72 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14291 hH))).trans (oldProjectionSound72 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4174 (1 : Fin 3)) = canonicalInput24518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4174 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection132 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4174 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24518 hH))).trans (oldProjectionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4174 (2 : Fin 3)) = canonicalInput24546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4174 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection40 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4174 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection40 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24546 hH))).trans (oldProjectionSound40 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10548).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4174 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10548).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4174 (j : Fin 3)))
      3 144 144 3 ![3, 48, 1] ![48, 3, 144] reductionProjection4174 ![oldProjection72, oldProjection132, oldProjection40]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4175 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 5), (45, 12), (94, -1), (104, -12), (108, -8), (241, -4), (243, -4), (247, -4), (703, -4), (704, -4), (1251, -1)]

def reductionPivot4175 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -1, 2], ![0, -2, -1, 3], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound4175 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode10213).moment H =
      Integer.Sparse.eval reductionProjection4175 (momentVector H) := by
  have heq : reductionPivot4175 = (fun u v => (normalNode10213).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10213).moment H = injectiveMoment H reductionPivot4175 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10213).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4175 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4175 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4175 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4174, reductionProjection511, oldProjection994, oldProjection1091] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4175 (0 : Fin 4)) = canonicalInput22624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22624 hH))).trans (reductionSound4174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4175 (1 : Fin 4)) = canonicalInput20185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection511 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20185 hH))).trans (reductionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4175 (2 : Fin 4)) = canonicalInput20152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection994 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20152 hH))).trans (oldProjectionSound994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4175 (3 : Fin 4)) = canonicalInput20151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1091 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4175 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20151 hH))).trans (oldProjectionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10213).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4175 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10213).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4175 (j : Fin 4)))
      2 72 144 4 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection4175 ![reductionProjection4174, reductionProjection511, oldProjection994, oldProjection1091]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4176 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 1), (94, 1), (104, 16), (704, 16)]

def reductionPivot4176 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -1, 3], ![0, 0, -2, 2], ![1, 0, 3, -4]]

theorem reductionSound4176 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7936).moment H =
      Integer.Sparse.eval reductionProjection4176 (momentVector H) := by
  have heq : reductionPivot4176 = (fun u v => (normalNode7936).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7936).moment H = injectiveMoment H reductionPivot4176 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7936).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot4176 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4176 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4176 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection52, oldProjection173, oldProjection119] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4176 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7191 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4176 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection52 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4176 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection52 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7191 hH))).trans (oldProjectionSound52 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4176 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6304 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4176 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4176 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6304 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4176 (2 : Fin 3)) = canonicalInput15331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4176 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection119 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4176 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15331 hH))).trans (oldProjectionSound119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7936).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4176 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7936).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4176 (j : Fin 3)))
      3 144 144 3 ![16, 48, 48] ![9, 3, 3] reductionProjection4176 ![oldProjection52, oldProjection173, oldProjection119]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4177 : Integer.Sparse (Fin 1613) := [(26, 1), (42, 1), (243, -1), (703, 1), (704, 1)]

def reductionPivot4177 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, 1, -3, 2], ![0, 1, 3, -4]]

theorem reductionSound4177 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6803).moment H =
      Integer.Sparse.eval reductionProjection4177 (momentVector H) := by
  have heq : reductionPivot4177 = (fun u v => (normalNode6803).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6803).moment H = injectiveMoment H reductionPivot4177 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6803).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot4177 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4177 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4177 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection32, oldProjection87, oldProjection76] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4177 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8098 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4177 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection32 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4177 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection32 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8098 hH))).trans (oldProjectionSound32 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4177 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5731 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4177 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4177 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5731 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4177 (2 : Fin 3)) = canonicalInput13528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4177 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection76 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4177 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13528 hH))).trans (oldProjectionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6803).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4177 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6803).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4177 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection4177 ![oldProjection32, oldProjection87, oldProjection76]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4178 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 12), (20, -1), (26, -16), (40, 48), (42, -16), (94, -4), (104, -48), (105, -16), (243, -16), (703, -16), (704, -48), (1251, -3)]

def reductionPivot4178 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound4178 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6728).moment H =
      Integer.Sparse.eval reductionProjection4178 (momentVector H) := by
  have heq : reductionPivot4178 = (fun u v => (normalNode6728).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6728).moment H = injectiveMoment H reductionPivot4178 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6728).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4178 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4178 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4178 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4176, reductionProjection4177, oldProjection795, oldProjection792] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4178 (0 : Fin 4)) = canonicalInput15329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4176 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15329 hH))).trans (reductionSound4176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4178 (1 : Fin 4)) = (normalNode6803).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4177 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4178 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node795⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection795 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4178 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node792⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4178 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6728).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4178 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6728).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4178 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 72] ![2, 32, 2, 4] reductionProjection4178 ![reductionProjection4176, reductionProjection4177, oldProjection795, oldProjection792]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4179 : Integer.Sparse (Fin 1613) := [(504, 1)]

theorem reductionSound4179 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code504).moment H =
      Integer.Sparse.eval reductionProjection4179 (momentVector H) := by
  have hc : coordinates (504 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code504) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4179, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4180 : Integer.Sparse (Fin 1613) := [(45, 1), (137, -3), (413, -3), (504, -3), (1214, 1), (1219, 1)]

def reductionPivot4180 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, 0, 3, -4]]

theorem reductionSound4180 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1701).moment H =
      Integer.Sparse.eval reductionProjection4180 (momentVector H) := by
  have heq : reductionPivot4180 = (fun u v => (normalNode1701).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1701).moment H = injectiveMoment H reductionPivot4180 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1701).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4180 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4180 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4180 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection932, reductionProjection4179, reductionProjection4170, oldProjection400] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4180 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node932⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection932 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection932 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4180 (1 : Fin 4)) = canonicalInput4220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4179 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4220 hH))).trans (reductionSound4179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4180 (2 : Fin 4)) = canonicalInput3797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3797 hH))).trans (reductionSound4170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4180 (3 : Fin 4)) = canonicalInput3789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection400 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4180 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3789 hH))).trans (oldProjectionSound400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1701).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4180 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1701).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4180 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection4180 ![oldProjection932, reductionProjection4179, reductionProjection4170, oldProjection400]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4181 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (38, 48), (42, -16), (94, -4), (241, -16), (243, -48), (413, -144), (414, -144), (698, -32), (700, -16), (701, -16), (704, -48), (1251, -3)]

def reductionPivot4181 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 1, -2, 0]]

theorem reductionSound4181 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1697).moment H =
      Integer.Sparse.eval reductionProjection4181 (momentVector H) := by
  have heq : reductionPivot4181 = (fun u v => (normalNode1697).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1697).moment H = injectiveMoment H reductionPivot4181 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1697).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4181 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4181 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4181 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1155, oldProjection798, reductionProjection4159, reductionProjection4170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4181 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3365 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1155 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3365 hH))).trans (oldProjectionSound1155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4181 (1 : Fin 4)) = canonicalInput3951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection798 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection798 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3951 hH))).trans (oldProjectionSound798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4181 (2 : Fin 4)) = canonicalInput3796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3796 hH))).trans (reductionSound4159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4181 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code413).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4181 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1697).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4181 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1697).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4181 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 1] ![2, 2, 288, 288] reductionProjection4181 ![oldProjection1155, oldProjection798, reductionProjection4159, reductionProjection4170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4182 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -150), (20, 10), (23, -120), (26, 40), (38, -120), (40, -120), (42, 80), (45, -240), (94, 50), (104, 280), (105, 40), (108, 200), (137, 360), (241, 160), (243, 280), (247, 120), (329, 360), (413, 720), (414, 360), (504, 360), (698, 160), (700, 40), (701, 40), (703, 80), (704, 320), (1214, -120), (1219, -120), (1251, 35)]

def reductionPivot4182 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]

theorem reductionSound4182 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1691).moment H =
      Integer.Sparse.eval reductionProjection4182 (momentVector H) := by
  have heq : reductionPivot4182 = (fun u v => (normalNode1691).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1691).moment H = injectiveMoment H reductionPivot4182 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1691).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4182 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4182 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 288, 6, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4182 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4175, reductionProjection4178, reductionProjection4180, reductionProjection4181, reductionProjection2300] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4182 (0 : Fin 5)) = canonicalInput6482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4175 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6482 hH))).trans (reductionSound4175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4182 (1 : Fin 5)) = canonicalInput3896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4178 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3896 hH))).trans (reductionSound4178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4182 (2 : Fin 5)) = (normalNode1701).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4180 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4182 (3 : Fin 5)) = canonicalInput3786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4181 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3786 hH))).trans (reductionSound4181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4182 (4 : Fin 5)) = canonicalInput3785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2300 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4182 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3785 hH))).trans (reductionSound2300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1691).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4182 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1691).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4182 (j : Fin 5)))
      1 720 1440 2 ![72, 288, 6, 288, 720] ![20, 5, 240, 5, 2] reductionProjection4182 ![reductionProjection4175, reductionProjection4178, reductionProjection4180, reductionProjection4181, reductionProjection2300]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4183 : Integer.Sparse (Fin 1613) := [(45, -3), (243, 1), (692, -3), (698, 1), (700, 1)]

def reductionPivot4183 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -2, 2, 0], ![-3, 1, 1, 1], ![4, 1, -3, -2]]

theorem reductionSound4183 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9643).moment H =
      Integer.Sparse.eval reductionProjection4183 (momentVector H) := by
  have heq : reductionPivot4183 = (fun u v => (normalNode9643).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9643).moment H = injectiveMoment H reductionPivot4183 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9643).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9643).entries)).symm
  have hshape : reductionPivot4183 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4183 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4183 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection89, oldProjection164, oldProjection170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4183 (0 : Fin 3)) = canonicalInput13997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4183 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4183 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13997 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4183 (1 : Fin 3)) = canonicalInput24423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4183 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4183 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24423 hH))).trans (oldProjectionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4183 (2 : Fin 3)) = canonicalInput24427.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4183 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection170 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4183 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24427 hH))).trans (oldProjectionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9643).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4183 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9643).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4183 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection4183 ![oldProjection89, oldProjection164, oldProjection170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4184 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -20), (45, 240), (94, -45), (104, -160), (108, -160), (243, -80), (247, -80), (692, 240), (698, -80), (700, -160), (701, -80), (703, -80), (704, -240), (1251, -50)]

def reductionPivot4184 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, 1, -2]]

theorem reductionSound4184 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9662).moment H =
      Integer.Sparse.eval reductionProjection4184 (momentVector H) := by
  have heq : reductionPivot4184 = (fun u v => (normalNode9662).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9662).moment H = injectiveMoment H reductionPivot4184 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9662).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4184 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4184 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4184 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4157, reductionProjection4183, oldProjection1168, oldProjection934] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4184 (0 : Fin 4)) = (normalNode7189).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4157 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4184 (1 : Fin 4)) = (normalNode9643).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4183 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4184 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1168⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4184 (3 : Fin 4)) = canonicalInput19281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection934 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4184 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19281 hH))).trans (oldProjectionSound934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9662).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4184 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9662).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4184 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 720, 144] ![10, 160, 2, 10] reductionProjection4184 ![reductionProjection4157, reductionProjection4183, oldProjection1168, oldProjection934]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4185 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (26, 16), (42, 16), (94, -2), (243, 32), (700, 16), (701, 16), (703, 16), (1251, 1)]

def reductionPivot4185 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![0, 1, -3, 2], ![1, 0, 3, -4]]

theorem reductionSound4185 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6800).moment H =
      Integer.Sparse.eval reductionProjection4185 (momentVector H) := by
  have heq : reductionPivot4185 = (fun u v => (normalNode6800).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6800).moment H = injectiveMoment H reductionPivot4185 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6800).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot4185 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4185 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4185 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection155, oldProjection88, oldProjection76] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4185 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6525 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4185 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4185 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6525 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4185 (1 : Fin 3)) = canonicalInput13540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4185 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection88 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4185 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13540 hH))).trans (oldProjectionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4185 (2 : Fin 3)) = canonicalInput13528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4185 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection76 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4185 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13528 hH))).trans (oldProjectionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6800).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4185 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6800).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4185 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection4185 ![oldProjection155, oldProjection88, oldProjection76]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4186 : Integer.Sparse (Fin 1613) := [(40, -1), (692, -1), (1052, -1)]

def reductionPivot4186 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![0, -2, -1, 3], ![3, 2, -1, -4]]

theorem reductionSound4186 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6732).moment H =
      Integer.Sparse.eval reductionProjection4186 (momentVector H) := by
  have heq : reductionPivot4186 = (fun u v => (normalNode6732).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6732).moment H = injectiveMoment H reductionPivot4186 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6732).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6732).entries)).symm
  have hshape : reductionPivot4186 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4186 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4186 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection86, oldProjection164, oldProjection198] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4186 (0 : Fin 3)) = canonicalInput560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4186 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4186 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound560 hH))).trans (oldProjectionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4186 (1 : Fin 3)) = canonicalInput9341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4186 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4186 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9341 hH))).trans (oldProjectionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4186 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4180 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4186 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4186 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4180 hH))).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6732).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4186 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6732).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4186 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection4186 ![oldProjection86, oldProjection164, oldProjection198]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4187 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -2), (26, -16), (40, 48), (42, -16), (94, -1), (104, -32), (105, -16), (241, -32), (243, -48), (692, 48), (698, -16), (700, -16), (701, -16), (703, -16), (704, -32), (1052, 48), (1251, 1)]

def reductionPivot4187 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 3, -4]]

theorem reductionSound4187 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6727).moment H =
      Integer.Sparse.eval reductionProjection4187 (momentVector H) := by
  have heq : reductionPivot4187 = (fun u v => (normalNode6727).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6727).moment H = injectiveMoment H reductionPivot4187 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6727).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4187 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4187 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4187 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4176, reductionProjection4185, reductionProjection4186, oldProjection763] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4187 (0 : Fin 4)) = (normalNode7936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4176 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4187 (1 : Fin 4)) = (normalNode6800).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4185 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4187 (2 : Fin 4)) = (normalNode6732).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4186 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4187 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5646 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection763 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4187 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5646 hH))).trans (oldProjectionSound763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6727).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4187 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6727).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4187 (j : Fin 4)))
      2 288 288 2 ![144, 144, 3, 72] ![2, 2, 96, 4] reductionProjection4187 ![reductionProjection4176, reductionProjection4185, reductionProjection4186, oldProjection763]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4188 : Integer.Sparse (Fin 1613) := [(409, 1)]

theorem reductionSound4188 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code409).moment H =
      Integer.Sparse.eval reductionProjection4188 (momentVector H) := by
  have hc : coordinates (409 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code409) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4188, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4189 : Integer.Sparse (Fin 1613) := [(19, 12), (38, 48), (94, -5), (247, -16), (409, -144), (414, -144), (498, -144), (704, -16), (1251, -5)]

def reductionPivot4189 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 1, -2, 0]]

theorem reductionSound4189 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1699).moment H =
      Integer.Sparse.eval reductionProjection4189 (momentVector H) := by
  have heq : reductionPivot4189 = (fun u v => (normalNode1699).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1699).moment H = injectiveMoment H reductionPivot4189 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1699).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4189 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4189 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4189 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection996, oldProjection493, reductionProjection4159, reductionProjection4188] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4189 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node996⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection996 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4189 (1 : Fin 4)) = canonicalInput4223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection493 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4223 hH))).trans (oldProjectionSound493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4189 (2 : Fin 4)) = canonicalInput3796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3796 hH))).trans (reductionSound4159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4189 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code409).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4188 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4189 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1699).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4189 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1699).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4189 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection4189 ![oldProjection996, oldProjection493, reductionProjection4159, reductionProjection4188]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4190 : Integer.Sparse (Fin 1613) := [(497, 1)]

theorem reductionSound4190 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code497).moment H =
      Integer.Sparse.eval reductionProjection4190 (momentVector H) := by
  have hc : coordinates (497 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code497) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4190, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4191 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (45, 48), (94, -5), (108, -16), (247, -16), (329, -144), (409, -144), (497, -144), (1251, -4)]

def reductionPivot4191 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 1, -1, -1]]

theorem reductionSound4191 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1698).moment H =
      Integer.Sparse.eval reductionProjection4191 (momentVector H) := by
  have heq : reductionPivot4191 = (fun u v => (normalNode1698).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1698).moment H = injectiveMoment H reductionPivot4191 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1698).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4191 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4191 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4191 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection535, reductionProjection4190, oldProjection466, reductionProjection4188] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4191 (0 : Fin 4)) = (normalNode7852).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection535 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4191 (1 : Fin 4)) = canonicalInput4219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4190 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4219 hH))).trans (reductionSound4190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4191 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1751 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1751 hH))).trans (oldProjectionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4191 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code409).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4188 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4191 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1698).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4191 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1698).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4191 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection4191 ![reductionProjection535, reductionProjection4190, oldProjection466, reductionProjection4188]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

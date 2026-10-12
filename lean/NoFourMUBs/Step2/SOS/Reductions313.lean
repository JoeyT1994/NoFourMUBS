import NoFourMUBs.Step2.SOS.Canonical004
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical200
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical202
import NoFourMUBs.Step2.SOS.Canonical203
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical209
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical224
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions261
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions304
import NoFourMUBs.Step2.SOS.Reductions305
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical173
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical179
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10016 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 2), (94, 3), (704, 16), (1251, 1), (1292, -48), (1293, -48), (1321, -48)]

def reductionPivot10016 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -3, 4], ![-1, 2, -1], ![1, -2, 1], ![1, 2, -3]]

theorem reductionSound10016 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6274).moment H =
      Integer.Sparse.eval reductionProjection10016 (momentVector H) := by
  have heq : reductionPivot10016 = (fun u v => (normalNode6274).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6274).moment H = injectiveMoment H reductionPivot10016 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6274).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10016 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10016 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10016 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection260, reductionProjection8353, oldProjection245, reductionProjection6841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10016 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node260⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10016 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1293).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8353 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10016 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10016 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1292).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10016 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6274).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10016 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6274).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10016 (j : Fin 4)))
      2 96 96 2 ![1, 1, 48, 1] ![96, 96, 2, 96] reductionProjection10016 ![oldProjection260, reductionProjection8353, oldProjection245, reductionProjection6841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10017 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 100), (4, -10), (19, 200), (20, -25), (94, -45), (243, -80), (246, -160), (698, -80), (703, -80), (704, -240), (1251, -55), (1292, 240), (1293, 240), (1321, 240)]

def reductionPivot10017 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![-1, 2, -1], ![0, 1, -1], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound10017 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode6271).moment H =
      Integer.Sparse.eval reductionProjection10017 (momentVector H) := by
  have heq : reductionPivot10017 = (fun u v => (normalNode6271).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6271).moment H = injectiveMoment H reductionPivot10017 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6271).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10017 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10017 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 48, 96, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10017 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9752, oldProjection736, oldProjection245, reductionProjection10016, oldProjection741] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10017 (0 : Fin 5)) = (normalNode5982).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9752 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10017 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node736⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection736 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection736 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10017 (2 : Fin 5)) = canonicalInput12828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12828 hH))).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10017 (3 : Fin 5)) = (normalNode6274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10016 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound10016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10017 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node741⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection741 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10017 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6271).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10017 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6271).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10017 (j : Fin 5)))
      1 480 480 1 ![96, 48, 48, 96, 480] ![5, 10, 10, 5, 1] reductionProjection10017 ![reductionProjection9752, oldProjection736, oldProjection245, reductionProjection10016, oldProjection741]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10018 : Integer.Sparse (Fin 1613) := [(0, 4), (3, 40), (19, 240), (20, -45), (94, -100), (243, -160), (246, -80), (247, -80), (698, -160), (703, -80), (704, -320), (1251, -75), (1278, 240)]

def reductionPivot10018 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![-1, 2, -1], ![0, 1, -1], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound10018 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode6272).moment H =
      Integer.Sparse.eval reductionProjection10018 (momentVector H) := by
  have heq : reductionPivot10018 = (fun u v => (normalNode6272).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6272).moment H = injectiveMoment H reductionPivot10018 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6272).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10018 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10018 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 240, 48, 480, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10018 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection721, oldProjection737, oldProjection246, oldProjection741, oldProjection742] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10018 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node721⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection721 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10018 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node737⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection737 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10018 (2 : Fin 5)) = canonicalInput12829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12829 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10018 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node741⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection741 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10018 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node742⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection742 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10018 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6272).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10018 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6272).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10018 (j : Fin 5)))
      1 480 480 1 ![96, 240, 48, 480, 480] ![5, 2, 10, 1, 1] reductionProjection10018 ![oldProjection721, oldProjection737, oldProjection246, oldProjection741, oldProjection742]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10019 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 2), (93, 24), (94, -1), (1060, -48), (1251, 1), (1292, -48)]

def reductionPivot10019 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-1, -3, 4], ![-1, 2, -1], ![0, 3, -3], ![1, -2, 1]]

theorem reductionSound10019 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6275).moment H =
      Integer.Sparse.eval reductionProjection10019 (momentVector H) := by
  have heq : reductionPivot10019 = (fun u v => (normalNode6275).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6275).moment H = injectiveMoment H reductionPivot10019 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6275).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10019 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10019 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10019 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection277, oldProjection257, reductionProjection6841, oldProjection213] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10019 (0 : Fin 4)) = canonicalInput23896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23896 hH))).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10019 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node257⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection257 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10019 (2 : Fin 4)) = canonicalInput12832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12832 hH))).trans (reductionSound6841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10019 (3 : Fin 4)) = canonicalInput12831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10019 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12831 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6275).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10019 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6275).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10019 (j : Fin 4)))
      2 96 96 2 ![48, 48, 1, 1] ![2, 2, 96, 96] reductionProjection10019 ![oldProjection277, oldProjection257, reductionProjection6841, oldProjection213]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10020 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -2), (19, 24), (20, 2), (93, -24), (94, 1), (243, -16), (246, -16), (704, -32), (1060, 96), (1218, 48), (1223, 48), (1225, -16), (1251, -7), (1292, 48)]

def reductionPivot10020 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![-1, 2, -1], ![0, 3, -3], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound10020 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6273).moment H =
      Integer.Sparse.eval reductionProjection10020 (momentVector H) := by
  have heq : reductionPivot10020 = (fun u v => (normalNode6273).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6273).moment H = injectiveMoment H reductionPivot10020 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6273).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10020 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10020 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 48, 48, 96, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10020 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9753, oldProjection740, oldProjection743, reductionProjection10019, oldProjection1144] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10020 (0 : Fin 5)) = (normalNode5984).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9753 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10020 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection740 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection740 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10020 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node743⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection743 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10020 (3 : Fin 5)) = (normalNode6275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10019 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound10019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10020 (4 : Fin 5)) = canonicalInput12830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10020 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12830 hH))).trans (oldProjectionSound1144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6273).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10020 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6273).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10020 (j : Fin 5)))
      1 96 96 1 ![48, 48, 48, 96, 48] ![2, 2, 2, 1, 2] reductionProjection10020 ![reductionProjection9753, oldProjection740, oldProjection743, reductionProjection10019, oldProjection1144]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10021 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (243, 16), (1251, 1), (1293, -48), (1294, -48), (1323, -48)]

def reductionPivot10021 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -3, 4], ![-1, 3, -2], ![1, -2, 1], ![1, 1, -2]]

theorem reductionSound10021 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6279).moment H =
      Integer.Sparse.eval reductionProjection10021 (momentVector H) := by
  have heq : reductionPivot10021 = (fun u v => (normalNode6279).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6279).moment H = injectiveMoment H reductionPivot10021 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6279).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10021 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10021 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10021 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection262, reductionProjection6351, oldProjection247, reductionProjection8353] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10021 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node262⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection262 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10021 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1294).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10021 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10021 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1293).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8353 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10021 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6279).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10021 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6279).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10021 (j : Fin 4)))
      2 96 96 2 ![1, 1, 48, 1] ![96, 96, 2, 96] reductionProjection10021 ![oldProjection262, reductionProjection6351, oldProjection247, reductionProjection8353]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10022 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 120), (4, -5), (19, 160), (20, -35), (94, -30), (106, -80), (243, -240), (698, -80), (703, -160), (704, -160), (1225, -80), (1226, -80), (1251, -45), (1293, 240), (1294, 240), (1323, 240)]

def reductionPivot10022 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![-1, 3, -2], ![0, 1, -1], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound10022 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode6276).moment H =
      Integer.Sparse.eval reductionProjection10022 (momentVector H) := by
  have heq : reductionPivot10022 = (fun u v => (normalNode6276).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6276).moment H = injectiveMoment H reductionPivot10022 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6276).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10022 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10022 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 480, 48, 96, 12] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10022 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9758, oldProjection741, oldProjection247, reductionProjection10021, oldProjection744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10022 (0 : Fin 5)) = (normalNode5987).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9758 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10022 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node741⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection741 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10022 (2 : Fin 5)) = canonicalInput12833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12833 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10022 (3 : Fin 5)) = (normalNode6279).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10021 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound10021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10022 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection744 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10022 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6276).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10022 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6276).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10022 (j : Fin 5)))
      1 480 480 1 ![96, 480, 48, 96, 12] ![5, 1, 10, 5, 40] reductionProjection10022 ![reductionProjection9758, oldProjection741, oldProjection247, reductionProjection10021, oldProjection744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10023 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 1), (93, 24), (94, 3), (1057, -48), (1251, 2), (1293, -48)]

def reductionPivot10023 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-1, -3, 4], ![-1, 3, -2], ![0, 2, -2], ![1, -2, 1]]

theorem reductionSound10023 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6280).moment H =
      Integer.Sparse.eval reductionProjection10023 (momentVector H) := by
  have heq : reductionPivot10023 = (fun u v => (normalNode6280).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6280).moment H = injectiveMoment H reductionPivot10023 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6280).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10023 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10023 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 48, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10023 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection265, oldProjection257, reductionProjection8353, oldProjection211] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10023 (0 : Fin 4)) = canonicalInput23897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection265 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23897 hH))).trans (oldProjectionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10023 (1 : Fin 4)) = canonicalInput12860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection257 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12860 hH))).trans (oldProjectionSound257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10023 (2 : Fin 4)) = canonicalInput12838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8353 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12838 hH))).trans (reductionSound8353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10023 (3 : Fin 4)) = canonicalInput12835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10023 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12835 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6280).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10023 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6280).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10023 (j : Fin 4)))
      2 96 96 2 ![24, 48, 1, 1] ![4, 2, 96, 96] reductionProjection10023 ![oldProjection265, oldProjection257, reductionProjection8353, oldProjection211]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10024 : Integer.Sparse (Fin 1613) := [(3, 16), (19, 8), (20, -7), (93, -24), (94, -6), (243, -48), (703, -16), (704, -16), (1057, 96), (1222, 48), (1223, 48), (1225, -16), (1226, -16), (1251, -7), (1293, 48)]

def reductionPivot10024 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![-1, 3, -2], ![0, 2, -2], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound10024 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6277).moment H =
      Integer.Sparse.eval reductionProjection10024 (momentVector H) := by
  have heq : reductionPivot10024 = (fun u v => (normalNode6277).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6277).moment H = injectiveMoment H reductionPivot10024 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6277).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10024 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10024 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 48, 12, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10024 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9757, oldProjection743, oldProjection744, reductionProjection10023, oldProjection877] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10024 (0 : Fin 5)) = (normalNode5988).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9757 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10024 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node743⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection743 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10024 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection744 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10024 (3 : Fin 5)) = (normalNode6280).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10023 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound10023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10024 (4 : Fin 5)) = canonicalInput12834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection877 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10024 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12834 hH))).trans (oldProjectionSound877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6277).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10024 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6277).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10024 (j : Fin 5)))
      1 96 96 1 ![48, 48, 12, 96, 96] ![2, 2, 8, 1, 1] reductionProjection10024 ![reductionProjection9757, oldProjection743, oldProjection744, reductionProjection10023, oldProjection877]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10025 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 1), (19, -8), (20, 1), (94, 1), (106, 16), (243, 16), (1225, 16), (1251, 1), (1294, -48)]

def reductionPivot10025 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![-1, 4, -3], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound10025 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6282).moment H =
      Integer.Sparse.eval reductionProjection10025 (momentVector H) := by
  have heq : reductionPivot10025 = (fun u v => (normalNode6282).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6282).moment H = injectiveMoment H reductionPivot10025 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6282).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10025 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10025 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 1, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10025 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9755, oldProjection247, reductionProjection6351, oldProjection249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10025 (0 : Fin 4)) = (normalNode5991).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9755 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10025 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10025 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1294).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10025 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10025 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6282).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10025 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6282).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10025 (j : Fin 4)))
      2 96 96 2 ![48, 48, 1, 24] ![2, 2, 96, 4] reductionProjection10025 ![reductionProjection9755, oldProjection247, reductionProjection6351, oldProjection249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10026 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 8), (20, 6), (94, 6), (106, -32), (243, -32), (1224, -8), (1225, -24), (1226, -8), (1251, -1), (1294, 24)]

def reductionPivot10026 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![-1, 4, -3], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound10026 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode6281).moment H =
      Integer.Sparse.eval reductionProjection10026 (momentVector H) := by
  have heq : reductionPivot10026 = (fun u v => (normalNode6281).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6281).moment H = injectiveMoment H reductionPivot10026 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6281).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10026 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10026 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![12, 12, 24, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10026 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9756, oldProjection744, oldProjection249, reductionProjection10025, oldProjection745] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10026 (0 : Fin 5)) = (normalNode5990).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9756 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10026 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection744 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10026 (2 : Fin 5)) = canonicalInput12839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12839 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10026 (3 : Fin 5)) = canonicalInput12840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10025 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12840 hH))).trans (reductionSound10025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10026 (4 : Fin 5)) = canonicalInput12841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection745 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10026 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12841 hH))).trans (oldProjectionSound745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6281).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10026 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6281).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10026 (j : Fin 5)))
      1 48 96 2 ![12, 12, 24, 96, 96] ![8, 8, 4, 1, 1] reductionProjection10026 ![reductionProjection9756, oldProjection744, oldProjection249, reductionProjection10025, oldProjection745]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10027 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 1), (19, -12), (20, -1), (93, 12), (94, -2), (1251, 4)]

def reductionPivot10027 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -3, 4], ![0, 1, -1], ![0, 3, -3], ![1, -2, 1]]

theorem reductionSound10027 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode6291).moment H =
      Integer.Sparse.eval reductionProjection10027 (momentVector H) := by
  have heq : reductionPivot10027 = (fun u v => (normalNode6291).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6291).moment H = injectiveMoment H reductionPivot10027 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6291).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10027 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10027 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10027 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection273, oldProjection257, reductionProjection6602, oldProjection255] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10027 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection273 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10027 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node257⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection257 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10027 (2 : Fin 4)) = (normalNode6292).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6602 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10027 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection255 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10027 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6291).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10027 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6291).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10027 (j : Fin 4)))
      2 96 96 2 ![48, 48, 48, 48] ![2, 2, 2, 2] reductionProjection10027 ![oldProjection273, oldProjection257, reductionProjection6602, oldProjection255]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10028 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 60), (20, 5), (93, -60), (94, -35), (1251, 15)]

def reductionPivot10028 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![0, 1, -1], ![0, 1, -1], ![0, 3, -3], ![1, -1, 0]]

theorem reductionSound10028 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode6286).moment H =
      Integer.Sparse.eval reductionProjection10028 (momentVector H) := by
  have heq : reductionPivot10028 = (fun u v => (normalNode6286).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6286).moment H = injectiveMoment H reductionPivot10028 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6286).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10028 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10028 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 48, 480, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10028 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9761, oldProjection255, oldProjection255, oldProjection749, reductionProjection10027] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10028 (0 : Fin 5)) = (normalNode5993).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9761 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10028 (1 : Fin 5)) = canonicalInput12851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection255 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12851 hH))).trans (oldProjectionSound255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10028 (2 : Fin 5)) = canonicalInput12856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection255 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12856 hH))).trans (oldProjectionSound255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10028 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node749⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection749 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10028 (4 : Fin 5)) = (normalNode6291).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10027 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10028 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10027 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound10027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6286).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10028 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6286).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10028 (j : Fin 5)))
      1 480 480 1 ![96, 48, 48, 480, 96] ![5, 10, 10, 1, 5] reductionProjection10028 ![reductionProjection9761, oldProjection255, oldProjection255, oldProjection749, reductionProjection10027]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10029 : Integer.Sparse (Fin 1613) := [(3, 4), (4, 2), (20, 1), (94, -1)]

def reductionPivot10029 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -3, 4], ![0, 5, -5], ![1, -1, 0]]

theorem reductionSound10029 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode6290).moment H =
      Integer.Sparse.eval reductionProjection10029 (momentVector H) := by
  have heq : reductionPivot10029 = (fun u v => (normalNode6290).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6290).moment H = injectiveMoment H reductionPivot10029 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6290).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10029 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10029 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 16, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10029 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection613, oldProjection54, oldProjection55] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10029 (0 : Fin 3)) = (normalNode5996).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10029 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection613 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10029 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10029 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10029 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10029 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10029 (2 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node55⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10029 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection55 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10029 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection55 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound55 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6290).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10029 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6290).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10029 (j : Fin 3)))
      3 48 48 3 ![16, 16, 16] ![3, 3, 3] reductionProjection10029 ![reductionProjection613, oldProjection54, oldProjection55]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10030 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (100, -48), (104, 16), (243, 16), (703, 16), (704, 32), (1251, 1)]

def reductionPivot10030 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![-2, 2, 1, -1], ![5, -1, -3, -1]]

theorem reductionSound10030 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6295).moment H =
      Integer.Sparse.eval reductionProjection10030 (momentVector H) := by
  have heq : reductionPivot10030 = (fun u v => (normalNode6295).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6295).moment H = injectiveMoment H reductionPivot10030 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6295).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6295).entries)).symm
  have hshape : reductionPivot10030 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10030 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10030 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection576, oldProjection72, oldProjection132] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10030 (0 : Fin 3)) = canonicalInput318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10030 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection576 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10030 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound318 hH))).trans (reductionSound576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10030 (1 : Fin 3)) = canonicalInput5491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10030 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection72 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10030 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection72 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5491 hH))).trans (oldProjectionSound72 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10030 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2525 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10030 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection132 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10030 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2525 hH))).trans (oldProjectionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6295).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10030 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6295).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10030 (j : Fin 3)))
      3 144 144 3 ![1, 3, 48] ![144, 48, 3] reductionProjection10030 ![reductionProjection576, oldProjection72, oldProjection132]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10031 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -100), (19, -700), (20, 60), (23, -720), (26, 160), (94, 300), (104, 960), (105, 400), (108, 1200), (241, 960), (243, 560), (247, 960), (698, 480), (703, 240), (704, 480), (1251, 115)]

def reductionPivot10031 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10031 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6298).moment H =
      Integer.Sparse.eval reductionProjection10031 (momentVector H) := by
  have heq : reductionPivot10031 = (fun u v => (normalNode6298).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6298).moment H = injectiveMoment H reductionPivot10031 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6298).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10031 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10031 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10031 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2391, reductionProjection1811, reductionProjection1811, reductionProjection1779, oldProjection2385] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10031 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2391⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2391 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10031 (1 : Fin 5)) = canonicalInput12867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1811 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12867 hH))).trans (reductionSound1811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10031 (2 : Fin 5)) = (normalNode6308).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1811 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10031 (3 : Fin 5)) = (normalNode6303).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1779 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10031 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2385⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2385 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10031 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6298).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10031 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6298).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10031 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection10031 ![oldProjection2391, reductionProjection1811, reductionProjection1811, reductionProjection1779, oldProjection2385]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10032 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (19, -200), (20, 15), (23, -720), (26, 160), (94, 50), (102, -720), (104, 960), (105, 880), (106, 240), (108, 240), (241, 960), (243, 880), (698, 480), (703, 240), (704, 480), (1251, 20)]

def reductionPivot10032 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, 0, -1]]

theorem reductionSound10032 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6299).moment H =
      Integer.Sparse.eval reductionProjection10032 (momentVector H) := by
  have heq : reductionPivot10032 = (fun u v => (normalNode6299).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6299).moment H = injectiveMoment H reductionPivot10032 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6299).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10032 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10032 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 18, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10032 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2394, reductionProjection1797, reductionProjection1797, oldProjection2386, reductionProjection1767] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10032 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2394⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2394 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10032 (1 : Fin 5)) = canonicalInput12868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1797 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12868 hH))).trans (reductionSound1797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10032 (2 : Fin 5)) = (normalNode6309).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1797 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10032 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2386⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10032 (4 : Fin 5)) = (normalNode6304).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1767 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10032 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6299).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10032 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6299).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10032 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 18, 288, 1440] ![5, 80, 80, 5, 1] reductionProjection10032 ![oldProjection2394, reductionProjection1797, reductionProjection1797, oldProjection2386, reductionProjection1767]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10033 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -240), (4, 5), (19, -740), (20, 70), (23, -240), (94, 300), (102, -240), (104, 1040), (105, 400), (106, 80), (108, 1840), (241, 880), (243, 320), (247, 1120), (698, 320), (703, 80), (704, 160), (1251, 135)]

def reductionPivot10033 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound10033 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6301).moment H =
      Integer.Sparse.eval reductionProjection10033 (momentVector H) := by
  have heq : reductionPivot10033 = (fun u v => (normalNode6301).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6301).moment H = injectiveMoment H reductionPivot10033 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6301).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10033 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10033 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10033 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2399, reductionProjection1846, oldProjection2385, reductionProjection1808, reductionProjection1825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10033 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2399⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2399 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10033 (1 : Fin 5)) = (normalNode6319).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10033 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5559 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2385 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5559 hH))).trans (oldProjectionSound2385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10033 (3 : Fin 5)) = (normalNode6313).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1808 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10033 (4 : Fin 5)) = (normalNode6312).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1825 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10033 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6301).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10033 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6301).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10033 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection10033 ![oldProjection2399, reductionProjection1846, oldProjection2385, reductionProjection1808, reductionProjection1825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10034 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 160), (4, -5), (19, 260), (20, -50), (94, -105), (104, -160), (105, -80), (108, -320), (241, -80), (247, -160), (1251, -75)]

def reductionPivot10034 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound10034 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6302).moment H =
      Integer.Sparse.eval reductionProjection10034 (momentVector H) := by
  have heq : reductionPivot10034 = (fun u v => (normalNode6302).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6302).moment H = injectiveMoment H reductionPivot10034 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6302).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10034 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10034 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10034 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1176, reductionProjection646, oldProjection889, reductionProjection1866] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10034 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5594 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10034 (1 : Fin 4)) = (normalNode6321).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection646 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10034 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5561 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection889 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection889 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5561 hH))).trans (oldProjectionSound889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10034 (3 : Fin 4)) = canonicalInput12865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1866 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10034 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1866 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12865 hH))).trans (reductionSound1866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6302).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10034 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6302).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10034 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 720, 144] ![2, 10, 2, 10] reductionProjection10034 ![oldProjection1176, reductionProjection646, oldProjection889, reductionProjection1866]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10035 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -220), (4, 5), (19, -320), (20, 40), (23, -480), (26, 160), (94, 75), (102, -240), (104, 1120), (105, 720), (106, 80), (108, 1120), (241, 640), (243, 400), (247, 240), (698, 160), (703, 160), (704, 160), (1251, 45)]

def reductionPivot10035 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10035 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6306).moment H =
      Integer.Sparse.eval reductionProjection10035 (momentVector H) := by
  have heq : reductionPivot10035 = (fun u v => (normalNode6306).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6306).moment H = injectiveMoment H reductionPivot10035 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6306).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10035 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10035 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10035 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2402, reductionProjection694, oldProjection2386, reductionProjection1840, reductionProjection1846] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10035 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2402⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2402 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10035 (1 : Fin 5)) = (normalNode6326).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection694 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10035 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5566 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5566 hH))).trans (oldProjectionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10035 (3 : Fin 5)) = (normalNode6320).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1840 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10035 (4 : Fin 5)) = (normalNode6319).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10035 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6306).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10035 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6306).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10035 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 288, 1440] ![5, 5, 5, 5, 1] reductionProjection10035 ![oldProjection2402, reductionProjection694, oldProjection2386, reductionProjection1840, reductionProjection1846]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10036 : Integer.Sparse (Fin 1613) := [(3, 28), (4, -1), (19, 20), (20, -5), (94, -5), (104, -48), (108, -64), (703, -16), (704, -16), (1251, -1)]

def reductionPivot10036 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1]]

theorem reductionSound10036 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6314).moment H =
      Integer.Sparse.eval reductionProjection10036 (momentVector H) := by
  have heq : reductionPivot10036 = (fun u v => (normalNode6314).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6314).moment H = injectiveMoment H reductionPivot10036 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6314).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10036 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10036 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10036 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1171, oldProjection890, reductionProjection686, reductionProjection684] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10036 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5623 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10036 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5571 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5571 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10036 (2 : Fin 4)) = canonicalInput12872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection686 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12872 hH))).trans (reductionSound686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10036 (3 : Fin 4)) = (normalNode6334).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10036 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6314).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10036 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6314).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10036 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10036 ![oldProjection1171, oldProjection890, reductionProjection686, reductionProjection684]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10037 : Integer.Sparse (Fin 1613) := [(94, 3), (158, 144), (205, 72), (238, -24), (241, 16), (243, 16), (691, -48), (694, -48), (698, 80), (700, 16), (1047, -48), (1055, -72), (1057, -48), (1058, -96), (1059, 24), (1226, 16), (1227, 32), (1251, -17)]

def reductionPivot10037 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, -2, 1, 3], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, 0, -2]]

theorem reductionSound10037 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7230).moment H =
      Integer.Sparse.eval reductionProjection10037 (momentVector H) := by
  have heq : reductionPivot10037 = (fun u v => (normalNode7230).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7230).moment H = injectiveMoment H reductionPivot10037 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7230).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10037 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10037 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10037 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1516, reductionProjection1178, reductionProjection8199, reductionProjection8199] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10037 (0 : Fin 4)) = canonicalInput14334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1516 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14334 hH))).trans (oldProjectionSound1516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10037 (1 : Fin 4)) = canonicalInput14299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1178 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14299 hH))).trans (reductionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10037 (2 : Fin 4)) = canonicalInput14298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8199 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14298 hH))).trans (reductionSound8199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10037 (3 : Fin 4)) = canonicalInput14297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8199 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10037 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14297 hH))).trans (reductionSound8199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7230).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10037 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7230).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10037 (j : Fin 4)))
      2 288 1440 10 ![360, 720, 1440, 1440] ![4, 2, 1, 1] reductionProjection10037 ![oldProjection1516, reductionProjection1178, reductionProjection8199, reductionProjection8199]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10038 : Integer.Sparse (Fin 1613) := [(0, -3), (241, -40), (243, -40), (698, -240), (700, -40), (1055, 120), (1058, 120), (1059, -80), (1226, -40), (1227, -120), (1251, 75)]

def reductionPivot10038 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound10038 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6965).moment H =
      Integer.Sparse.eval reductionProjection10038 (momentVector H) := by
  have heq : reductionPivot10038 = (fun u v => (normalNode6965).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6965).moment H = injectiveMoment H reductionPivot10038 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6965).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10038 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10038 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10038 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection853, oldProjection1259, oldProjection828, oldProjection827] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10038 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection853 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10038 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5752 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1259 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5752 hH))).trans (oldProjectionSound1259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10038 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10038 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node827⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10038 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6965).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10038 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6965).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10038 (j : Fin 4)))
      2 720 720 2 ![720, 720, 720, 720] ![1, 1, 1, 1] reductionProjection10038 ![oldProjection853, oldProjection1259, oldProjection828, oldProjection827]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10039 : Integer.Sparse (Fin 1613) := [(0, 8), (19, -80), (20, 10), (94, 65), (174, 720), (241, 160), (243, 320), (247, 160), (698, 1120), (700, 160), (1055, -480), (1058, -480), (1059, 160), (1219, -480), (1223, -480), (1225, 80), (1226, 480), (1227, 640), (1251, -205)]

def reductionPivot10039 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, -2, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound10039 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7234).moment H =
      Integer.Sparse.eval reductionProjection10039 (momentVector H) := by
  have heq : reductionPivot10039 = (fun u v => (normalNode7234).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7234).moment H = injectiveMoment H reductionPivot10039 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7234).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10039 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10039 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10039 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10038, oldProjection1502, reductionProjection4284, reductionProjection7969] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10039 (0 : Fin 4)) = canonicalInput14345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10038 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14345 hH))).trans (reductionSound10038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10039 (1 : Fin 4)) = canonicalInput14324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14324 hH))).trans (oldProjectionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10039 (2 : Fin 4)) = canonicalInput14319.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4284 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14319 hH))).trans (reductionSound4284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10039 (3 : Fin 4)) = canonicalInput14318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7969 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10039 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14318 hH))).trans (reductionSound7969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7234).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10039 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7234).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10039 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 288] ![4, 2, 2, 10] reductionProjection10039 ![reductionProjection10038, oldProjection1502, reductionProjection4284, reductionProjection7969]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10040 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -60), (20, 10), (94, 65), (241, 80), (243, 80), (247, 80), (698, 320), (700, 80), (704, 80), (1055, -240), (1219, -240), (1226, 80), (1227, 160), (1251, -45), (1388, -240)]

def reductionPivot10040 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, -2, 1, 3], ![0, 0, 0, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound10040 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7231).moment H =
      Integer.Sparse.eval reductionProjection10040 (momentVector H) := by
  have heq : reductionPivot10040 = (fun u v => (normalNode7231).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7231).moment H = injectiveMoment H reductionPivot10040 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7231).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10040 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10040 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10040 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2401, oldProjection560, reductionProjection4344, oldProjection2559] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10040 (0 : Fin 4)) = canonicalInput14296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2401 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14296 hH))).trans (oldProjectionSound2401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10040 (1 : Fin 4)) = canonicalInput14300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection560 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14300 hH))).trans (oldProjectionSound560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10040 (2 : Fin 4)) = canonicalInput14303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14303 hH))).trans (reductionSound4344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10040 (3 : Fin 4)) = canonicalInput14304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2559 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10040 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14304 hH))).trans (oldProjectionSound2559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7231).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10040 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7231).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10040 (j : Fin 4)))
      2 2880 2880 2 ![720, 240, 1440, 720] ![4, 12, 2, 4] reductionProjection10040 ![oldProjection2401, oldProjection560, reductionProjection4344, oldProjection2559]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10041 : Integer.Sparse (Fin 1613) := [(0, -18), (19, 220), (20, -25), (94, -195), (158, -1440), (174, -2160), (205, -720), (238, 240), (241, -480), (243, -880), (247, -400), (465, -720), (483, -720), (484, -720), (610, -1440), (691, 480), (694, 480), (697, 240), (698, -3760), (700, -480), (704, -240), (809, -720), (1022, -720), (1047, 480), (1052, 240), (1055, 1920), (1057, 480), (1058, 1920), (1059, -560), (1219, 1440), (1223, 1200), (1225, -160), (1226, -1440), (1227, -1920), (1251, 600), (1388, 240)]

def reductionPivot10041 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -2, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]

theorem reductionSound10041 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6336).moment H =
      Integer.Sparse.eval reductionProjection10041 (momentVector H) := by
  have heq : reductionPivot10041 = (fun u v => (normalNode6336).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6336).moment H = injectiveMoment H reductionPivot10041 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6336).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10041 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10041 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2880, 2880, 576, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10041 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10037, reductionProjection10039, reductionProjection1959, reductionProjection2005, reductionProjection10040] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10041 (0 : Fin 5)) = canonicalInput12863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10037 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12863 hH))).trans (reductionSound10037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10041 (1 : Fin 5)) = canonicalInput12885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10039 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12885 hH))).trans (reductionSound10039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10041 (2 : Fin 5)) = canonicalInput12897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1959 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1959 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12897 hH))).trans (reductionSound1959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10041 (3 : Fin 5)) = canonicalInput12898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2005 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2005 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12898 hH))).trans (reductionSound2005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10041 (4 : Fin 5)) = canonicalInput12899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10040 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10041 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12899 hH))).trans (reductionSound10040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6336).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10041 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6336).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10041 (j : Fin 5)))
      1 2880 2880 1 ![288, 2880, 2880, 576, 2880] ![10, 1, 1, 5, 1] reductionProjection10041 ![reductionProjection10037, reductionProjection10039, reductionProjection1959, reductionProjection2005, reductionProjection10040]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10042 : Integer.Sparse (Fin 1613) := [(88, -1), (90, 1), (91, 1), (243, 1), (1226, 1)]

def reductionPivot10042 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, -1, 4], ![0, -1, 3, -2], ![0, 3, -1, -2]]

theorem reductionSound10042 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6464).moment H =
      Integer.Sparse.eval reductionProjection10042 (momentVector H) := by
  have heq : reductionPivot10042 = (fun u v => (normalNode6464).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6464).moment H = injectiveMoment H reductionPivot10042 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6464).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot10042 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10042 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10042 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection20, oldProjection106, reductionProjection54] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10042 (0 : Fin 3)) = canonicalInput23950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10042 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection20 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10042 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection20 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23950 hH))).trans (oldProjectionSound20 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10042 (1 : Fin 3)) = canonicalInput13117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10042 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10042 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13117 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10042 (2 : Fin 3)) = canonicalInput13050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10042 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10042 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13050 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6464).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10042 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6464).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10042 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection10042 ![oldProjection20, oldProjection106, reductionProjection54]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10043 : Integer.Sparse (Fin 1613) := [(85, -3), (88, 2), (90, 2), (91, 1), (1226, 1)]

def reductionPivot10043 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![-2, 3, -2, 1], ![4, -2, -1, -1]]

theorem reductionSound10043 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7429).moment H =
      Integer.Sparse.eval reductionProjection10043 (momentVector H) := by
  have heq : reductionPivot10043 = (fun u v => (normalNode7429).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7429).moment H = injectiveMoment H reductionPivot10043 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7429).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7429).entries)).symm
  have hshape : reductionPivot10043 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10043 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10043 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection54, reductionProjection396, oldProjection108] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10043 (0 : Fin 3)) = canonicalInput5854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10043 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10043 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5854 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10043 (1 : Fin 3)) = canonicalInput19093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10043 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10043 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19093 hH))).trans (reductionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10043 (2 : Fin 3)) = canonicalInput19095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10043 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10043 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19095 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7429).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10043 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7429).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10043 (j : Fin 3)))
      3 9 9 3 ![3, 1, 3] ![3, 9, 3] reductionProjection10043 ![reductionProjection54, reductionProjection396, oldProjection108]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10044 : Integer.Sparse (Fin 1613) := [(85, 3), (88, -2), (90, -3), (91, -2), (243, -3), (933, -9), (1225, -1), (1226, -1)]

def reductionPivot10044 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, -1, 4], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, 0, 0, -1]]

theorem reductionSound10044 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6387).moment H =
      Integer.Sparse.eval reductionProjection10044 (momentVector H) := by
  have heq : reductionPivot10044 = (fun u v => (normalNode6387).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6387).moment H = injectiveMoment H reductionPivot10044 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6387).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10044 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10044 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10044 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10042, oldProjection902, reductionProjection10043, reductionProjection7801] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10044 (0 : Fin 4)) = canonicalInput23938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10042 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23938 hH))).trans (reductionSound10042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10044 (1 : Fin 4)) = canonicalInput13047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection902 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13047 hH))).trans (oldProjectionSound902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10044 (2 : Fin 4)) = canonicalInput12966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10043 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12966 hH))).trans (reductionSound10043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10044 (3 : Fin 4)) = canonicalInput12961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7801 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10044 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12961 hH))).trans (reductionSound7801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6387).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10044 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6387).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10044 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection10044 ![reductionProjection10042, oldProjection902, reductionProjection10043, reductionProjection7801]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10045 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (88, -48), (231, 48), (241, -32), (243, -64), (627, -144), (732, -144), (1226, -32), (1251, 1)]

def reductionPivot10045 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, -1, 4], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, 1, -2]]

theorem reductionSound10045 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6378).moment H =
      Integer.Sparse.eval reductionProjection10045 (momentVector H) := by
  have heq : reductionPivot10045 = (fun u v => (normalNode6378).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6378).moment H = injectiveMoment H reductionPivot10045 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6378).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10045 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10045 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10045 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1076, oldProjection898, reductionProjection5841, oldProjection581] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10045 (0 : Fin 4)) = canonicalInput23937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1076 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23937 hH))).trans (oldProjectionSound1076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10045 (1 : Fin 4)) = canonicalInput13043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13043 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10045 (2 : Fin 4)) = canonicalInput12958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12958 hH))).trans (reductionSound5841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10045 (3 : Fin 4)) = canonicalInput12952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection581 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10045 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12952 hH))).trans (oldProjectionSound581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6378).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10045 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6378).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10045 (j : Fin 4)))
      2 288 288 2 ![9, 144, 1, 1] ![32, 2, 288, 288] reductionProjection10045 ![oldProjection1076, oldProjection898, reductionProjection5841, oldProjection581]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10046 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 2), (85, -48), (88, 96), (90, 48), (91, 32), (94, -19), (231, -48), (241, 48), (243, 256), (244, 16), (627, 144), (698, 64), (700, 16), (732, 288), (933, 144), (1047, -48), (1186, 144), (1203, 144), (1214, -96), (1225, 64), (1226, 96), (1251, -1)]

def reductionPivot10046 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10046 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6373).moment H =
      Integer.Sparse.eval reductionProjection10046 (momentVector H) := by
  have heq : reductionPivot10046 = (fun u v => (normalNode6373).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6373).moment H = injectiveMoment H reductionPivot10046 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6373).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10046 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10046 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10046 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection281, reductionProjection10044, reductionProjection9392, reductionProjection9386, reductionProjection10045] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10046 (0 : Fin 5)) = canonicalInput13380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13380 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10046 (1 : Fin 5)) = (normalNode6387).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10044 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10046 (2 : Fin 5)) = canonicalInput12953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9392 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12953 hH))).trans (reductionSound9392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10046 (3 : Fin 5)) = canonicalInput12951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12951 hH))).trans (reductionSound9386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10046 (4 : Fin 5)) = (normalNode6378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10045 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10046 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10045 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6373).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10046 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6373).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10046 (j : Fin 5)))
      1 288 288 1 ![288, 18, 288, 288, 288] ![1, 16, 1, 1, 1] reductionProjection10046 ![reductionProjection281, reductionProjection10044, reductionProjection9392, reductionProjection9386, reductionProjection10045]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10047 : Integer.Sparse (Fin 1613) := [(1295, 1)]

theorem reductionSound10047 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1295).moment H =
      Integer.Sparse.eval reductionProjection10047 (momentVector H) := by
  have hc : coordinates (1295 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1295) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10047, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

end NoFourMUBs.Step2.SOS.Normalization

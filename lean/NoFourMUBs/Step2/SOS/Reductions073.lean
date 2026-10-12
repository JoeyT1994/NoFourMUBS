import NoFourMUBs.Step2.SOS.Canonical018
import NoFourMUBs.Step2.SOS.Canonical019
import NoFourMUBs.Step2.SOS.Canonical020
import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical041
import NoFourMUBs.Step2.SOS.Canonical042
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical203
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical283
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions072
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical100
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical173
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical237
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2336 : Integer.Sparse (Fin 1613) := [(0, -1), (13, -120), (19, -60), (94, 20), (108, 40), (228, -120), (231, -360), (241, 120), (242, -120), (247, -120), (333, 360), (545, 360), (554, 360), (1251, 25)]

def reductionPivot2336 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]

theorem reductionSound2336 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1227).moment H =
      Integer.Sparse.eval reductionProjection2336 (momentVector H) := by
  have heq : reductionPivot2336 = (fun u v => (normalNode1227).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1227).moment H = injectiveMoment H reductionPivot2336 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1227).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2336 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2336 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2336 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2333, reductionProjection2235, oldProjection1100, reductionProjection2335, oldProjection1556] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2336 (0 : Fin 5)) = canonicalInput1208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2333 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1208 hH))).trans (reductionSound2333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2336 (1 : Fin 5)) = (normalNode1171).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2235 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2336 (2 : Fin 5)) = canonicalInput2639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2639 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2336 (3 : Fin 5)) = (normalNode1272).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2335 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2336 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1556⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1556 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2336 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1227).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2336 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1227).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2336 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection2336 ![reductionProjection2333, reductionProjection2235, oldProjection1100, reductionProjection2335, oldProjection1556]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2337 : Integer.Sparse (Fin 1613) := [(38, 3), (42, -2), (82, 3), (90, -1), (238, 3), (241, -2), (243, -5), (698, -3), (700, -5), (704, -1), (1059, -2)]

def reductionPivot2337 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 1, -2, -1]]

theorem reductionSound2337 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1265).moment H =
      Integer.Sparse.eval reductionProjection2337 (momentVector H) := by
  have heq : reductionPivot2337 = (fun u v => (normalNode1265).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1265).moment H = injectiveMoment H reductionPivot2337 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1265).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2337 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2337 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2337 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection773, oldProjection777, oldProjection765, oldProjection774] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2337 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1092 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection773 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1092 hH))).trans (oldProjectionSound773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2337 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1513 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection777 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1513 hH))).trans (oldProjectionSound777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2337 (2 : Fin 4)) = canonicalInput2757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection765 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2757 hH))).trans (oldProjectionSound765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2337 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1627 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection774 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2337 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1627 hH))).trans (oldProjectionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1265).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2337 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1265).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2337 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection2337 ![oldProjection773, oldProjection777, oldProjection765, oldProjection774]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2338 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -36), (37, -48), (38, -192), (42, 48), (82, -48), (90, 16), (94, 22), (238, -96), (240, -48), (241, 208), (243, 224), (247, 64), (271, 144), (283, 288), (559, 144), (583, 144), (697, -144), (698, 208), (700, 128), (704, 80), (1059, 64), (1251, -5)]

def reductionPivot2338 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 1, -2, -1]]

theorem reductionSound2338 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1228).moment H =
      Integer.Sparse.eval reductionProjection2338 (momentVector H) := by
  have heq : reductionPivot2338 = (fun u v => (normalNode1228).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1228).moment H = injectiveMoment H reductionPivot2338 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1228).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2338 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2338 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2338 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1921, reductionProjection2236, reductionProjection2307, reductionProjection2337, oldProjection1557] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2338 (0 : Fin 5)) = canonicalInput1209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1921 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1209 hH))).trans (oldProjectionSound1921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2338 (1 : Fin 5)) = (normalNode1172).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2236 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2338 (2 : Fin 5)) = (normalNode1256).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2307 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2338 (3 : Fin 5)) = canonicalInput2648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2337 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2648 hH))).trans (reductionSound2337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2338 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1557⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1557 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2338 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1557 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1228).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2338 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1228).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2338 (j : Fin 5)))
      1 288 1440 5 ![1440, 2, 1440, 18, 1440] ![1, 720, 1, 80, 1] reductionProjection2338 ![oldProjection1921, reductionProjection2236, reductionProjection2307, reductionProjection2337, oldProjection1557]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2339 : Integer.Sparse (Fin 1613) := [(19, -4), (38, -24), (45, -24), (94, 1), (247, 8), (1251, 1)]

def reductionPivot2339 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![2, -1, 1, -2], ![0, 2, -4, 2]]

theorem reductionSound2339 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9552).moment H =
      Integer.Sparse.eval reductionProjection2339 (momentVector H) := by
  have heq : reductionPivot2339 = (fun u v => (normalNode9552).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9552).moment H = injectiveMoment H reductionPivot2339 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9552).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9552).entries)).symm
  have hshape : reductionPivot2339 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2339 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 24, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2339 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection85, oldProjection244, oldProjection89] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2339 (0 : Fin 3)) = canonicalInput5920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2339 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2339 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5920 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2339 (1 : Fin 3)) = canonicalInput19144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2339 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection244 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2339 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19144 hH))).trans (oldProjectionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2339 (2 : Fin 3)) = canonicalInput19150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2339 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2339 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19150 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9552).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2339 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9552).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2339 (j : Fin 3)))
      3 72 72 3 ![1, 24, 1] ![72, 3, 72] reductionProjection2339 ![oldProjection85, oldProjection244, oldProjection89]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2340 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (38, 480), (45, 240), (81, 240), (94, -35), (231, 240), (241, -160), (242, 240), (247, -240), (697, 480), (1251, -25)]

def reductionPivot2340 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, 0, -2]]

theorem reductionSound2340 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3294).moment H =
      Integer.Sparse.eval reductionProjection2340 (momentVector H) := by
  have heq : reductionPivot2340 = (fun u v => (normalNode3294).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3294).moment H = injectiveMoment H reductionPivot2340 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3294).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2340 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2340 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2340 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1007, oldProjection772, reductionProjection2331, reductionProjection2339] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2340 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3215 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3215 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2340 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3012 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection772 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection772 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3012 hH))).trans (oldProjectionSound772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2340 (2 : Fin 4)) = canonicalInput6318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2331 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6318 hH))).trans (reductionSound2331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2340 (3 : Fin 4)) = canonicalInput6317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2339 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2340 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6317 hH))).trans (reductionSound2339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3294).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2340 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3294).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2340 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 72] ![2, 10, 10, 20] reductionProjection2340 ![oldProjection1007, oldProjection772, reductionProjection2331, reductionProjection2339]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2341 : Integer.Sparse (Fin 1613) := [(0, 1), (13, 240), (19, 20), (38, 240), (76, 240), (81, 480), (94, -30), (228, 480), (231, 240), (686, 480), (698, -80), (704, -80), (1251, -35)]

def reductionPivot2341 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 2, -2, -1]]

theorem reductionSound2341 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1276).moment H =
      Integer.Sparse.eval reductionProjection2341 (momentVector H) := by
  have heq : reductionPivot2341 = (fun u v => (normalNode1276).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1276).moment H = injectiveMoment H reductionPivot2341 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1276).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2341 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2341 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2341 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection722, oldProjection756, reductionProjection2313, oldProjection894] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2341 (0 : Fin 4)) = canonicalInput1323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection722 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1323 hH))).trans (reductionSound722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2341 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1612 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection756 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1612 hH))).trans (oldProjectionSound756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2341 (2 : Fin 4)) = canonicalInput2820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2313 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2820 hH))).trans (reductionSound2313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2341 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2341 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1689 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1276).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2341 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1276).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2341 (j : Fin 4)))
      2 1440 1440 2 ![3, 3, 3, 720] ![480, 480, 480, 2] reductionProjection2341 ![reductionProjection722, oldProjection756, reductionProjection2313, oldProjection894]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2342 : Integer.Sparse (Fin 1613) := [(0, -11), (13, -240), (19, -320), (20, 5), (38, -960), (45, -240), (76, -240), (81, -960), (94, 225), (228, -960), (231, -480), (241, 320), (242, -240), (247, 720), (273, 720), (291, 1440), (554, 720), (555, 720), (686, -720), (697, -720), (698, 160), (704, 320), (1251, 195)]

def reductionPivot2342 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound2342 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1229).moment H =
      Integer.Sparse.eval reductionProjection2342 (momentVector H) := by
  have heq : reductionPivot2342 = (fun u v => (normalNode1229).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1229).moment H = injectiveMoment H reductionPivot2342 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1229).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2342 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2342 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2342 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2340, reductionProjection2237, reductionProjection2320, reductionProjection2341, oldProjection1559] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2342 (0 : Fin 5)) = canonicalInput1210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1210 hH))).trans (reductionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2342 (1 : Fin 5)) = (normalNode1173).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2237 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2342 (2 : Fin 5)) = (normalNode1262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2320 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2342 (3 : Fin 5)) = (normalNode1276).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2341 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2342 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1559⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1559 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2342 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1229).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2342 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1229).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2342 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1440, 1440, 288] ![1, 720, 1, 1, 5] reductionProjection2342 ![reductionProjection2340, reductionProjection2237, reductionProjection2320, reductionProjection2341, oldProjection1559]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2343 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -24), (94, 29), (243, 64), (244, 192), (692, -48), (700, 128), (701, 208), (704, 128), (793, 144), (1045, -48), (1053, -96), (1061, -192), (1251, 29)]

def reductionPivot2343 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound2343 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1230).moment H =
      Integer.Sparse.eval reductionProjection2343 (momentVector H) := by
  have heq : reductionPivot2343 = (fun u v => (normalNode1230).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1230).moment H = injectiveMoment H reductionPivot2343 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1230).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2343 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2343 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 72, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2343 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1939, reductionProjection2240, reductionProjection1255, oldProjection1617, oldProjection1617] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2343 (0 : Fin 5)) = canonicalInput1212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1939 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1212 hH))).trans (oldProjectionSound1939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2343 (1 : Fin 5)) = (normalNode1175).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2240 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2343 (2 : Fin 5)) = (normalNode1285).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1255 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2343 (3 : Fin 5)) = canonicalInput2652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1617 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2652 hH))).trans (oldProjectionSound1617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2343 (4 : Fin 5)) = canonicalInput2653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1617 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2343 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2653 hH))).trans (oldProjectionSound1617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1230).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2343 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1230).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2343 (j : Fin 5)))
      1 288 288 1 ![144, 72, 288, 288, 288] ![2, 4, 1, 1, 1] reductionProjection2343 ![oldProjection1939, reductionProjection2240, reductionProjection1255, oldProjection1617, oldProjection1617]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2344 : Integer.Sparse (Fin 1613) := [(282, 1)]

theorem reductionSound2344 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code282).moment H =
      Integer.Sparse.eval reductionProjection2344 (momentVector H) := by
  have hc : coordinates (282 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code282) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2344, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2345 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 1), (94, 3), (104, 16), (241, 16), (243, 16), (703, 16), (1251, 2)]

def reductionPivot2345 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![0, 2, 2, -4], ![1, 0, -2, 1]]

theorem reductionSound2345 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6498).moment H =
      Integer.Sparse.eval reductionProjection2345 (momentVector H) := by
  have heq : reductionPivot2345 = (fun u v => (normalNode6498).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6498).moment H = injectiveMoment H reductionPivot2345 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6498).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2345 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2345 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 12, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2345 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection201, oldProjection165, oldProjection281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2345 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5727 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2345 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection201 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2345 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5727 hH))).trans (oldProjectionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2345 (1 : Fin 3)) = canonicalInput13113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2345 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection165 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2345 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13113 hH))).trans (oldProjectionSound165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2345 (2 : Fin 3)) = canonicalInput13112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2345 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection281 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2345 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13112 hH))).trans (oldProjectionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6498).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2345 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6498).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2345 (j : Fin 3)))
      3 144 144 3 ![48, 12, 48] ![3, 12, 3] reductionProjection2345 ![oldProjection201, oldProjection165, oldProjection281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2346 : Integer.Sparse (Fin 1613) := [(3, 6), (19, -6), (94, 1), (104, -8), (241, -8), (243, -8), (282, -72), (703, -8), (1054, 24), (1223, 24), (1251, 1)]

def reductionPivot2346 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 1, 1, -4]]

theorem reductionSound2346 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1249).moment H =
      Integer.Sparse.eval reductionProjection2346 (momentVector H) := by
  have heq : reductionPivot2346 = (fun u v => (normalNode1249).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1249).moment H = injectiveMoment H reductionPivot2346 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1249).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2346 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2346 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2346 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1325, reductionProjection2344, reductionProjection2280, reductionProjection2345] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2346 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1051 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1325 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1325 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1051 hH))).trans (oldProjectionSound1325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2346 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code282).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2344 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2346 (2 : Fin 4)) = canonicalInput2728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2280 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2728 hH))).trans (reductionSound2280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2346 (3 : Fin 4)) = canonicalInput2736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2345 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2346 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2736 hH))).trans (reductionSound2345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1249).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2346 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1249).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2346 (j : Fin 4)))
      2 144 144 2 ![144, 1, 144, 144] ![1, 144, 1, 1] reductionProjection2346 ![oldProjection1325, reductionProjection2344, reductionProjection2280, reductionProjection2345]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2347 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 8), (20, -1), (94, 6), (104, -16), (241, -16), (243, -16), (703, -16), (1251, 7)]

def reductionPivot2347 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound2347 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6475).moment H =
      Integer.Sparse.eval reductionProjection2347 (momentVector H) := by
  have heq : reductionPivot2347 = (fun u v => (normalNode6475).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6475).moment H = injectiveMoment H reductionPivot2347 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6475).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2347 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2347 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2347 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1783, oldProjection281, oldProjection1177, reductionProjection2345] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2347 (0 : Fin 4)) = canonicalInput12866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1783 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12866 hH))).trans (reductionSound1783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2347 (1 : Fin 4)) = canonicalInput13059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection281 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13059 hH))).trans (oldProjectionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2347 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5602 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5602 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2347 (3 : Fin 4)) = (normalNode6498).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2345 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2347 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6475).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2347 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6475).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2347 (j : Fin 4)))
      2 288 288 2 ![144, 48, 144, 144] ![2, 6, 2, 2] reductionProjection2347 ![reductionProjection1783, oldProjection281, oldProjection1177, reductionProjection2345]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2348 : Integer.Sparse (Fin 1613) := [(3, -30), (19, 10), (20, 3), (94, -4), (104, 16), (241, 16), (243, 16), (282, 72), (703, 16), (1054, -48), (1223, -48), (1251, -7)]

def reductionPivot2348 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound2348 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1237).moment H =
      Integer.Sparse.eval reductionProjection2348 (momentVector H) := by
  have heq : reductionPivot2348 = (fun u v => (normalNode1237).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1237).moment H = injectiveMoment H reductionPivot2348 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1237).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2348 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2348 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 144, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2348 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection751, reductionProjection2281, reductionProjection2346, reductionProjection2280, reductionProjection2347] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2348 (0 : Fin 5)) = (normalNode411).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection751 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2348 (1 : Fin 5)) = (normalNode1198).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2281 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2348 (2 : Fin 5)) = canonicalInput2685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2346 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2685 hH))).trans (reductionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2348 (3 : Fin 5)) = canonicalInput2691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2280 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2691 hH))).trans (reductionSound2280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2348 (4 : Fin 5)) = canonicalInput2692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2347 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2348 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2692 hH))).trans (reductionSound2347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1237).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2348 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1237).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2348 (j : Fin 5)))
      1 144 288 2 ![288, 72, 144, 144, 288] ![1, 4, 2, 2, 1] reductionProjection2348 ![reductionProjection751, reductionProjection2281, reductionProjection2346, reductionProjection2280, reductionProjection2347]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2349 : Integer.Sparse (Fin 1613) := [(290, 1)]

theorem reductionSound2349 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code290).moment H =
      Integer.Sparse.eval reductionProjection2349 (momentVector H) := by
  have hc : coordinates (290 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code290) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2349, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2350 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 2), (243, 8), (246, 8), (698, 8), (703, 8), (704, 16), (1251, 1)]

def reductionPivot2350 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![0, 1, -2, 1], ![1, 1, 2, -4]]

theorem reductionSound2350 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode6494).moment H =
      Integer.Sparse.eval reductionProjection2350 (momentVector H) := by
  have heq : reductionPivot2350 = (fun u v => (normalNode6494).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6494).moment H = injectiveMoment H reductionPivot2350 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6494).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2350 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2350 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 24, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2350 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection206, oldProjection286, oldProjection172] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2350 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5705 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2350 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection206 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2350 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5705 hH))).trans (oldProjectionSound206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2350 (1 : Fin 3)) = canonicalInput13100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2350 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection286 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2350 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13100 hH))).trans (oldProjectionSound286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2350 (2 : Fin 3)) = canonicalInput13087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2350 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2350 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13087 hH))).trans (oldProjectionSound172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6494).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2350 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6494).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2350 (j : Fin 3)))
      3 72 72 3 ![3, 24, 3] ![24, 3, 24] reductionProjection2350 ![oldProjection206, oldProjection286, oldProjection172]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2351 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -5), (94, -13), (243, -16), (246, -16), (290, -144), (698, -16), (703, -16), (704, -48), (1054, 48), (1223, 48), (1251, -8), (1278, 48)]

def reductionPivot2351 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, 1, -4]]

theorem reductionSound2351 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1261).moment H =
      Integer.Sparse.eval reductionProjection2351 (momentVector H) := by
  have heq : reductionPivot2351 = (fun u v => (normalNode1261).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1261).moment H = injectiveMoment H reductionPivot2351 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1261).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2351 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2351 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2351 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1325, reductionProjection2349, oldProjection1324, reductionProjection2350] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2351 (0 : Fin 4)) = canonicalInput1271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1325 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1325 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1271 hH))).trans (oldProjectionSound1325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2351 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code290).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2349 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2351 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1609 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1324 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1609 hH))).trans (oldProjectionSound1324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2351 (3 : Fin 4)) = canonicalInput2749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2350 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2351 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2749 hH))).trans (reductionSound2350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1261).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2351 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1261).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2351 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 72] ![2, 288, 2, 4] reductionProjection2351 ![oldProjection1325, reductionProjection2349, oldProjection1324, reductionProjection2350]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2352 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 100), (4, -5), (19, 80), (20, -20), (94, -30), (243, -80), (246, -80), (698, -80), (703, -80), (704, -160), (1251, -25)]

def reductionPivot2352 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound2352 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6471).moment H =
      Integer.Sparse.eval reductionProjection2352 (momentVector H) := by
  have heq : reductionPivot2352 = (fun u v => (normalNode6471).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6471).moment H = injectiveMoment H reductionPivot2352 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6471).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2352 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2352 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 24, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2352 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1866, oldProjection286, reductionProjection2350, oldProjection1176] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2352 (0 : Fin 4)) = canonicalInput12865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1866 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1866 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12865 hH))).trans (reductionSound1866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2352 (1 : Fin 4)) = canonicalInput13055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection286 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13055 hH))).trans (oldProjectionSound286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2352 (2 : Fin 4)) = (normalNode6494).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2350 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2352 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2352 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5594 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6471).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2352 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6471).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2352 (j : Fin 4)))
      2 1440 1440 2 ![144, 24, 72, 720] ![10, 60, 20, 2] reductionProjection2352 ![reductionProjection1866, oldProjection286, reductionProjection2350, oldProjection1176]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2353 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -420), (4, 5), (19, -460), (20, 110), (94, 225), (243, 160), (246, 160), (290, 720), (698, 160), (703, 160), (704, 640), (1054, -480), (1223, -480), (1251, 140), (1278, -960)]

def reductionPivot2353 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, 1, -4]]

theorem reductionSound2353 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1238).moment H =
      Integer.Sparse.eval reductionProjection2353 (momentVector H) := by
  have heq : reductionPivot2353 = (fun u v => (normalNode1238).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1238).moment H = injectiveMoment H reductionPivot2353 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1238).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2353 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2353 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2353 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection751, reductionProjection2286, reductionProjection2351, reductionProjection2298, reductionProjection2352] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2353 (0 : Fin 5)) = canonicalInput1234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection751 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1234 hH))).trans (reductionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2353 (1 : Fin 5)) = (normalNode1203).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2286 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2353 (2 : Fin 5)) = canonicalInput2686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2351 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2686 hH))).trans (reductionSound2351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2353 (3 : Fin 5)) = canonicalInput2693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2298 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2693 hH))).trans (reductionSound2298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2353 (4 : Fin 5)) = canonicalInput2694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2352 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2353 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2694 hH))).trans (reductionSound2352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1238).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2353 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1238).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2353 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 288, 18, 1440] ![5, 2, 5, 80, 1] reductionProjection2353 ![reductionProjection751, reductionProjection2286, reductionProjection2351, reductionProjection2298, reductionProjection2352]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2354 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, -45), (247, -80), (252, -720), (293, -720), (294, -720), (704, -80), (1251, -45)]

def reductionPivot2354 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound2354 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1287).moment H =
      Integer.Sparse.eval reductionProjection2354 (momentVector H) := by
  have heq : reductionPivot2354 = (fun u v => (normalNode1287).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1287).moment H = injectiveMoment H reductionPivot2354 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1287).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2354 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2354 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2354 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1776, oldProjection1341, oldProjection453, oldProjection454] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2354 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code252).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1776 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2354 (1 : Fin 4)) = canonicalInput2656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2656 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2354 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2354 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node454⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2354 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1287).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2354 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1287).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2354 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection2354 ![reductionProjection1776, oldProjection1341, oldProjection453, oldProjection454]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2355 : Integer.Sparse (Fin 1613) := [(0, -1), (3, 40), (19, 100), (20, -15), (94, -20), (108, -160), (247, -160)]

def reductionPivot2355 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound2355 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6472).moment H =
      Integer.Sparse.eval reductionProjection2355 (momentVector H) := by
  have heq : reductionPivot2355 = (fun u v => (normalNode6472).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6472).moment H = injectiveMoment H reductionPivot2355 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6472).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2355 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2355 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2355 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection889, oldProjection253, oldProjection1176, oldProjection910] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2355 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5561 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection889 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection889 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5561 hH))).trans (oldProjectionSound889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2355 (1 : Fin 4)) = canonicalInput13056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13056 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2355 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5594 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2355 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5596 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection910 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2355 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5596 hH))).trans (oldProjectionSound910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6472).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2355 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6472).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2355 (j : Fin 4)))
      2 1440 1440 2 ![720, 240, 720, 720] ![2, 6, 2, 2] reductionProjection2355 ![oldProjection889, oldProjection253, oldProjection1176, oldProjection910]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2356 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 20), (19, 80), (20, -15), (94, -55), (104, -80), (108, -80), (247, -80), (698, -80), (700, -80), (701, -80), (703, -80), (704, -80), (1251, -35)]

def reductionPivot2356 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound2356 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6473).moment H =
      Integer.Sparse.eval reductionProjection2356 (momentVector H) := by
  have heq : reductionPivot2356 = (fun u v => (normalNode6473).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6473).moment H = injectiveMoment H reductionPivot2356 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6473).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2356 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2356 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 48, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2356 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1778, oldProjection246, oldProjection766, oldProjection767] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2356 (0 : Fin 4)) = (normalNode6317).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2356 (1 : Fin 4)) = canonicalInput13057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13057 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2356 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node766⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2356 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2356 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6473).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2356 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6473).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2356 (j : Fin 4)))
      2 1440 1440 2 ![72, 48, 720, 144] ![20, 30, 2, 10] reductionProjection2356 ![reductionProjection1778, oldProjection246, oldProjection766, oldProjection767]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2357 : Integer.Sparse (Fin 1613) := [(0, -11), (3, -60), (19, -480), (20, 55), (94, 260), (104, 80), (108, 560), (247, 560), (252, 720), (293, 720), (294, 720), (698, 80), (700, 80), (701, 80), (703, 80), (704, 320), (1061, -240), (1219, -240), (1251, 220), (1278, -480)]

def reductionPivot2357 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound2357 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1239).moment H =
      Integer.Sparse.eval reductionProjection2357 (momentVector H) := by
  have heq : reductionPivot2357 = (fun u v => (normalNode1239).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1239).moment H = injectiveMoment H reductionPivot2357 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1239).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2357 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2357 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2357 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection752, reductionProjection2288, reductionProjection2354, reductionProjection2355, reductionProjection2356] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2357 (0 : Fin 5)) = (normalNode412).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2357 (1 : Fin 5)) = (normalNode1205).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2288 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2357 (2 : Fin 5)) = canonicalInput2687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2354 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2687 hH))).trans (reductionSound2354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2357 (3 : Fin 5)) = canonicalInput2695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2355 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2695 hH))).trans (reductionSound2355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2357 (4 : Fin 5)) = canonicalInput2697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2356 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2357 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2697 hH))).trans (reductionSound2356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1239).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2357 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1239).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2357 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 1440, 1440, 1440] ![2, 2, 1, 1, 1] reductionProjection2357 ![reductionProjection752, reductionProjection2288, reductionProjection2354, reductionProjection2355, reductionProjection2356]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2358 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (94, 1), (104, 32), (692, -48), (703, 16), (704, 16), (1251, 1)]

def reductionPivot2358 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![1, 2, 1, -4], ![1, -2, -3, 4]]

theorem reductionSound2358 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9471).moment H =
      Integer.Sparse.eval reductionProjection2358 (momentVector H) := by
  have heq : reductionPivot2358 = (fun u v => (normalNode9471).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9471).moment H = injectiveMoment H reductionPivot2358 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9471).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9471).entries)).symm
  have hshape : reductionPivot2358 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2358 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 12] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2358 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection164, oldProjection166, oldProjection165] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2358 (0 : Fin 3)) = canonicalInput9465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2358 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2358 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9465 hH))).trans (oldProjectionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2358 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7592 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2358 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2358 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7592 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2358 (2 : Fin 3)) = canonicalInput22417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2358 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection165 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2358 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22417 hH))).trans (oldProjectionSound165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9471).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2358 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9471).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2358 (j : Fin 3)))
      3 144 144 3 ![1, 48, 12] ![144, 3, 12] reductionProjection2358 ![oldProjection164, oldProjection166, oldProjection165]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2359 : Integer.Sparse (Fin 1613) := [(3, 4), (19, -8), (20, -2), (94, -3), (104, -16), (692, 48), (703, -8), (704, -8), (1222, 24), (1223, 24), (1251, -1)]

def reductionPivot2359 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 3, -4]]

theorem reductionSound2359 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1347).moment H =
      Integer.Sparse.eval reductionProjection2359 (momentVector H) := by
  have heq : reductionPivot2359 = (fun u v => (normalNode1347).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1347).moment H = injectiveMoment H reductionPivot2359 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1347).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2359 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2359 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2359 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1787, reductionProjection2358, oldProjection957, oldProjection1108] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2359 (0 : Fin 4)) = canonicalInput2428.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1787 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2428 hH))).trans (reductionSound1787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2359 (1 : Fin 4)) = canonicalInput2789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2358 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2789 hH))).trans (reductionSound2358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2359 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1654 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection957 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection957 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1654 hH))).trans (oldProjectionSound957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2359 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1658 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1108 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2359 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1658 hH))).trans (oldProjectionSound1108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1347).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2359 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1347).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2359 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection2359 ![reductionProjection1787, reductionProjection2358, oldProjection957, oldProjection1108]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2360 : Integer.Sparse (Fin 1613) := [(3, -20), (19, -4), (20, 3), (104, 24), (241, 24), (243, 24), (692, -48), (703, 16), (704, 8), (1053, -48), (1054, -72), (1222, -24), (1223, -48), (1251, -3)]

def reductionPivot2360 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 2, -4]]

theorem reductionSound2360 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1240).moment H =
      Integer.Sparse.eval reductionProjection2360 (momentVector H) := by
  have heq : reductionPivot2360 = (fun u v => (normalNode1240).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1240).moment H = injectiveMoment H reductionPivot2360 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1240).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2360 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2360 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 288, 144, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2360 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection769, reductionProjection751, reductionProjection1196, reductionProjection2347, reductionProjection2359] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2360 (0 : Fin 5)) = (normalNode419).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection769 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2360 (1 : Fin 5)) = canonicalInput2634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection751 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2634 hH))).trans (reductionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2360 (2 : Fin 5)) = canonicalInput2688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1196 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2688 hH))).trans (reductionSound1196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2360 (3 : Fin 5)) = canonicalInput2699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2347 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2699 hH))).trans (reductionSound2347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2360 (4 : Fin 5)) = (normalNode1347).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2359 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2360 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1240).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2360 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1240).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2360 (j : Fin 5)))
      1 144 288 2 ![72, 288, 144, 288, 144] ![4, 1, 2, 1, 2] reductionProjection2360 ![reductionProjection769, reductionProjection751, reductionProjection1196, reductionProjection2347, reductionProjection2359]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2361 : Integer.Sparse (Fin 1613) := [(321, 1)]

theorem reductionSound2361 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code321).moment H =
      Integer.Sparse.eval reductionProjection2361 (momentVector H) := by
  have hc : coordinates (321 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code321) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2361, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2362 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 120), (20, -5), (23, 240), (94, -60), (104, -80), (108, -320), (228, 240), (241, -80), (247, -320), (321, -720), (704, -80), (1251, -65)]

def reductionPivot2362 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, 1, -3]]

theorem reductionSound2362 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1350).moment H =
      Integer.Sparse.eval reductionProjection2362 (momentVector H) := by
  have heq : reductionPivot2362 = (fun u v => (normalNode1350).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1350).moment H = injectiveMoment H reductionPivot2362 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1350).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2362 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2362 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2362 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1792, reductionProjection2361, oldProjection1341, oldProjection1100] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2362 (0 : Fin 4)) = canonicalInput2433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1792 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2433 hH))).trans (reductionSound1792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2362 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code321).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2361 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2362 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1665 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2362 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1666 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2362 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1666 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1350).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2362 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1350).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2362 (j : Fin 4)))
      2 1440 1440 2 ![9, 1, 720, 720] ![160, 1440, 2, 2] reductionProjection2362 ![reductionProjection1792, reductionProjection2361, oldProjection1341, oldProjection1100]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2363 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (45, 240), (94, -50), (104, -80), (108, -80), (247, -80), (694, 240), (704, -80), (1251, -60)]

def reductionPivot2363 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, -1, 4], ![0, 1, 1, -2], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound2363 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6484).moment H =
      Integer.Sparse.eval reductionProjection2363 (momentVector H) := by
  have heq : reductionPivot2363 = (fun u v => (normalNode6484).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6484).moment H = injectiveMoment H reductionPivot2363 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6484).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2363 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2363 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 360, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2363 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection675, oldProjection1170, oldProjection787, oldProjection788] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2363 (0 : Fin 4)) = (normalNode6335).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2363 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5627 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5627 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2363 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node787⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection787 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2363 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node788⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection788 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2363 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection788 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6484).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2363 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6484).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2363 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 360, 144] ![10, 2, 4, 10] reductionProjection2363 ![reductionProjection675, oldProjection1170, oldProjection787, oldProjection788]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2364 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -340), (20, 15), (23, -240), (45, -240), (94, 185), (104, 320), (108, 1040), (140, 720), (228, -240), (241, 160), (247, 560), (321, 720), (694, -240), (704, 240), (1251, 210)]

def reductionPivot2364 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, 1, -3]]

theorem reductionSound2364 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1241).moment H =
      Integer.Sparse.eval reductionProjection2364 (momentVector H) := by
  have heq : reductionPivot2364 = (fun u v => (normalNode1241).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1241).moment H = injectiveMoment H reductionPivot2364 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1241).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2364 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2364 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2364 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection774, reductionProjection2295, oldProjection761, reductionProjection2362, reductionProjection2363] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2364 (0 : Fin 5)) = (normalNode424).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection774 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2364 (1 : Fin 5)) = (normalNode1210).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2295 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2364 (2 : Fin 5)) = canonicalInput2689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2689 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2364 (3 : Fin 5)) = (normalNode1350).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2362 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2364 (4 : Fin 5)) = canonicalInput2700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2363 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2364 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2700 hH))).trans (reductionSound2363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1241).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2364 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1241).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2364 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 1440, 1440] ![1, 5, 2, 1, 1] reductionProjection2364 ![reductionProjection774, reductionProjection2295, oldProjection761, reductionProjection2362, reductionProjection2363]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2365 : Integer.Sparse (Fin 1613) := [(322, 1)]

theorem reductionSound2365 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code322).moment H =
      Integer.Sparse.eval reductionProjection2365 (momentVector H) := by
  have hc : coordinates (322 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code322) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2365, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2366 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (94, 5), (243, 16), (686, -48), (704, 16), (1251, 4)]

def reductionPivot2366 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-1, 4, -2, -1], ![3, -3, 1, -1]]

theorem reductionSound2366 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7922).moment H =
      Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
  have heq : reductionPivot2366 = (fun u v => (normalNode7922).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7922).moment H = injectiveMoment H reductionPivot2366 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7922).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7922).entries)).symm
  have hshape : reductionPivot2366 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2366 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2366 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection161, oldProjection247, oldProjection246] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2366 (0 : Fin 3)) = canonicalInput4665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2366 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2366 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4665 hH))).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2366 (1 : Fin 3)) = canonicalInput17998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2366 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2366 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17998 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2366 (2 : Fin 3)) = canonicalInput18150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2366 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2366 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18150 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7922).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2366 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7922).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2366 (j : Fin 3)))
      3 144 144 3 ![1, 48, 48] ![144, 3, 3] reductionProjection2366 ![oldProjection161, oldProjection247, oldProjection246]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2367 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 120), (20, -10), (94, -50), (101, 240), (104, -80), (105, -80), (108, -160), (228, 240), (241, -80), (243, -80), (247, -160), (322, -720), (686, 240), (704, -80), (1251, -45)]

def reductionPivot2367 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 1, 0, -2]]

theorem reductionSound2367 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1351).moment H =
      Integer.Sparse.eval reductionProjection2367 (momentVector H) := by
  have heq : reductionPivot2367 = (fun u v => (normalNode1351).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1351).moment H = injectiveMoment H reductionPivot2367 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1351).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2367 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2367 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2367 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1791, reductionProjection2365, oldProjection1100, reductionProjection2366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2367 (0 : Fin 4)) = canonicalInput2434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2434 hH))).trans (reductionSound1791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2367 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code322).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2367 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1666 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1666 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2367 (3 : Fin 4)) = canonicalInput2810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2367 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2810 hH))).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1351).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2367 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1351).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2367 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 720, 144] ![10, 1440, 2, 10] reductionProjection2367 ![reductionProjection1791, reductionProjection2365, oldProjection1100, reductionProjection2366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

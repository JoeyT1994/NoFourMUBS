import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical154
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical160
import NoFourMUBs.Step2.SOS.Canonical165
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions165
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions216
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions242
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions271
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical136
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8704 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -16), (17, 12), (19, -64), (20, 8), (93, 48), (94, 30), (108, 32), (236, -96), (242, -192), (247, 64), (694, -96), (697, -192), (1098, 144), (1250, 48), (1251, 19), (1294, -48), (1323, -144), (1389, -48)]

def reductionPivot8704 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound8704 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4932).moment H =
      Integer.Sparse.eval reductionProjection8704 (momentVector H) := by
  have heq : reductionPivot8704 = (fun u v => (normalNode4932).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4932).moment H = injectiveMoment H reductionPivot8704 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4932).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8704 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8704 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8704 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8492, oldProjection1210, reductionProjection8703, oldProjection2189, reductionProjection8600] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8704 (0 : Fin 5)) = (normalNode4773).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8492 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8704 (1 : Fin 5)) = canonicalInput9878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1210 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9878 hH))).trans (oldProjectionSound1210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8704 (2 : Fin 5)) = canonicalInput9910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9910 hH))).trans (reductionSound8703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8704 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2189 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8704 (4 : Fin 5)) = canonicalInput9912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8600 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8704 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9912 hH))).trans (reductionSound8600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4932).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8704 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4932).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8704 (j : Fin 5)))
      1 288 1440 5 ![1440, 720, 1440, 288, 1440] ![1, 2, 1, 5, 1] reductionProjection8704 ![reductionProjection8492, oldProjection1210, reductionProjection8703, oldProjection2189, reductionProjection8600]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8705 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -60), (4, 5), (17, 30), (19, -210), (20, 30), (93, 90), (94, 65), (108, 40), (236, -120), (246, 80), (247, 40), (694, -120), (698, 120), (704, 240), (1099, 360), (1250, 60), (1251, 50), (1290, -120), (1292, -120), (1319, -120), (1321, -240)]

def reductionPivot8705 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound8705 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4933).moment H =
      Integer.Sparse.eval reductionProjection8705 (momentVector H) := by
  have heq : reductionPivot8705 = (fun u v => (normalNode4933).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4933).moment H = injectiveMoment H reductionPivot8705 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4933).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8705 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8705 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8705 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8493, oldProjection1224, reductionProjection8661, reductionProjection8665, oldProjection2190] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8705 (0 : Fin 5)) = (normalNode4774).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8493 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8705 (1 : Fin 5)) = canonicalInput9879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9879 hH))).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8705 (2 : Fin 5)) = (normalNode4977).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8661 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8705 (3 : Fin 5)) = (normalNode4981).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8665 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8705 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2190⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2190 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8705 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4933).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8705 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4933).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8705 (j : Fin 5)))
      1 720 1440 2 ![288, 144, 1440, 1440, 1440] ![5, 10, 1, 1, 1] reductionProjection8705 ![reductionProjection8493, oldProjection1224, reductionProjection8661, reductionProjection8665, oldProjection2190]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8706 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -25), (247, -80), (1099, -720), (1100, -720), (1141, -720), (1251, -20), (1319, 240)]

def reductionPivot8706 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound8706 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4978).moment H =
      Integer.Sparse.eval reductionProjection8706 (momentVector H) := by
  have heq : reductionPivot8706 = (fun u v => (normalNode4978).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4978).moment H = injectiveMoment H reductionPivot8706 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4978).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8706 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8706 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8706 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection685, oldProjection1361, reductionProjection8673, reductionProjection8660] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8706 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node685⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection685 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8706 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4419 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4419 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8706 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1100).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8706 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1099).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8660 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8706 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4978).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8706 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4978).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8706 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection8706 ![oldProjection685, oldProjection1361, reductionProjection8673, reductionProjection8660]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8707 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -260), (20, 30), (93, 60), (94, 165), (108, 400), (225, -240), (247, 640), (1099, 720), (1100, 720), (1141, 720), (1250, 120), (1251, 75), (1290, -240), (1319, -960), (1388, -480)]

def reductionPivot8707 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound8707 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4934).moment H =
      Integer.Sparse.eval reductionProjection8707 (momentVector H) := by
  have heq : reductionPivot8707 = (fun u v => (normalNode4934).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4934).moment H = injectiveMoment H reductionPivot8707 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4934).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8707 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8707 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8707 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8494, oldProjection1361, reductionProjection8706, oldProjection2190, oldProjection2191] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8707 (0 : Fin 5)) = (normalNode4775).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8494 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8707 (1 : Fin 5)) = canonicalInput9880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9880 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8707 (2 : Fin 5)) = (normalNode4978).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8706 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8707 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2190⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2190 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8707 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2191⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2191 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8707 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4934).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8707 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4934).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8707 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 720] ![1, 2, 1, 1, 2] reductionProjection8707 ![reductionProjection8494, oldProjection1361, reductionProjection8706, oldProjection2190, oldProjection2191]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8708 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (17, -60), (19, 60), (20, -10), (93, -60), (94, -25), (236, 240), (694, 240), (1250, -120)]

def reductionPivot8708 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 3, -3]]

theorem reductionSound8708 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4935).moment H =
      Integer.Sparse.eval reductionProjection8708 (momentVector H) := by
  have heq : reductionPivot8708 = (fun u v => (normalNode4935).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4935).moment H = injectiveMoment H reductionPivot8708 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4935).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8708 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8708 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 24, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8708 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8478, oldProjection265, reductionProjection8692, oldProjection1219] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8708 (0 : Fin 4)) = canonicalInput9691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8478 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9691 hH))).trans (reductionSound8478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8708 (1 : Fin 4)) = canonicalInput9881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection265 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9881 hH))).trans (oldProjectionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8708 (2 : Fin 4)) = canonicalInput9911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8692 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9911 hH))).trans (reductionSound8692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8708 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4369 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1219 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8708 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4369 hH))).trans (oldProjectionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4935).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8708 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4935).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8708 (j : Fin 4)))
      2 1440 1440 2 ![72, 24, 72, 720] ![20, 60, 20, 2] reductionProjection8708 ![reductionProjection8478, oldProjection265, reductionProjection8692, oldProjection1219]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8709 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (94, -5), (240, 48), (242, 48), (246, -16), (697, 96), (698, -16), (704, -32), (1102, -144), (1250, -12), (1251, -7), (1323, 48)]

def reductionPivot8709 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 1, -2], ![1, -2, 3, -2], ![1, 0, -1, 0]]

theorem reductionSound8709 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4959).moment H =
      Integer.Sparse.eval reductionProjection8709 (momentVector H) := by
  have heq : reductionPivot8709 = (fun u v => (normalNode4959).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4959).moment H = injectiveMoment H reductionPivot8709 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4959).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8709 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8709 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8709 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6566, oldProjection1213, oldProjection1248, reductionProjection6950] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8709 (0 : Fin 4)) = canonicalInput9725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6566 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9725 hH))).trans (reductionSound6566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8709 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4422 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4422 hH))).trans (oldProjectionSound1213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8709 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4427 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1248 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4427 hH))).trans (oldProjectionSound1248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8709 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1102).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6950 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8709 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4959).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8709 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4959).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8709 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 1] ![2, 2, 4, 288] reductionProjection8709 ![reductionProjection6566, oldProjection1213, oldProjection1248, reductionProjection6950]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8710 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -80), (4, 5), (19, -320), (20, 40), (93, 240), (94, 160), (240, -480), (242, -960), (246, 160), (697, -1440), (698, 160), (704, 320), (1102, 720), (1250, 240), (1251, 50), (1294, -240), (1323, -720), (1389, -240)]

def reductionPivot8710 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -1, 0]]

theorem reductionSound8710 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4936).moment H =
      Integer.Sparse.eval reductionProjection8710 (momentVector H) := by
  have heq : reductionPivot8710 = (fun u v => (normalNode4936).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4936).moment H = injectiveMoment H reductionPivot8710 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4936).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8710 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8710 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8710 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8495, oldProjection1213, reductionProjection8600, oldProjection2192, reductionProjection8709] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8710 (0 : Fin 5)) = (normalNode4778).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8495 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8710 (1 : Fin 5)) = canonicalInput9882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9882 hH))).trans (oldProjectionSound1213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8710 (2 : Fin 5)) = canonicalInput9912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8600 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9912 hH))).trans (reductionSound8600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8710 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2192⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2192 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8710 (4 : Fin 5)) = canonicalInput9915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8709 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8710 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9915 hH))).trans (reductionSound8709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4936).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8710 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4936).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8710 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 1440, 1440, 288] ![5, 10, 1, 1, 5] reductionProjection8710 ![reductionProjection8495, oldProjection1213, reductionProjection8600, oldProjection2192, reductionProjection8709]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8711 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -8), (19, -64), (20, 8), (93, 24), (94, 36), (108, 48), (240, -48), (247, 96), (697, -48), (698, 16), (704, 16), (1103, 144), (1250, 36), (1251, 9), (1319, -96), (1321, -48), (1388, -48), (1389, -48)]

def reductionPivot8711 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]

theorem reductionSound8711 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4937).moment H =
      Integer.Sparse.eval reductionProjection8711 (momentVector H) := by
  have heq : reductionPivot8711 = (fun u v => (normalNode4937).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4937).moment H = injectiveMoment H reductionPivot8711 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4937).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8711 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8711 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8711 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection494, oldProjection1222, oldProjection2190, reductionProjection1050, oldProjection1506] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8711 (0 : Fin 5)) = (normalNode4779).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection494 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8711 (1 : Fin 5)) = canonicalInput9883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9883 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8711 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2190⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2190 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8711 (3 : Fin 5)) = (normalNode4983).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1050 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8711 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4372 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1506 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8711 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4372 hH))).trans (oldProjectionSound1506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4937).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8711 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4937).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8711 (j : Fin 5)))
      1 288 1440 5 ![1440, 720, 1440, 288, 1440] ![1, 2, 1, 5, 1] reductionProjection8711 ![reductionProjection494, oldProjection1222, oldProjection2190, reductionProjection1050, oldProjection1506]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8712 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (37, -240), (45, -240), (94, 35), (140, 720), (174, 720), (240, -240), (243, 160), (247, 80), (697, -1200), (698, 880), (704, 160), (1052, -480), (1055, -240), (1059, 160), (1214, -240), (1219, -960), (1223, -240), (1226, 320), (1227, 560), (1250, 60), (1251, -120)]

def reductionPivot8712 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, 0, -1]]

theorem reductionSound8712 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4938).moment H =
      Integer.Sparse.eval reductionProjection8712 (momentVector H) := by
  have heq : reductionPivot8712 = (fun u v => (normalNode4938).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4938).moment H = injectiveMoment H reductionPivot8712 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4938).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8712 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8712 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8712 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8463, oldProjection815, oldProjection1508, oldProjection1510, oldProjection2193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8712 (0 : Fin 5)) = (normalNode4782).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8463 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8463 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8712 (1 : Fin 5)) = canonicalInput9884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9884 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8712 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4370 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1508 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4370 hH))).trans (oldProjectionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8712 (3 : Fin 5)) = canonicalInput9917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9917 hH))).trans (oldProjectionSound1510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8712 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2193⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2193 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8712 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4938).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8712 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4938).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8712 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 288, 1440] ![1, 2, 2, 5, 1] reductionProjection8712 ![reductionProjection8463, oldProjection815, oldProjection1508, oldProjection1510, oldProjection2193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8713 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (694, 240), (794, -720), (1055, 240), (1091, -720), (1097, -720), (1250, -60), (1251, 10)]

def reductionPivot8713 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -2, 2, -1]]

theorem reductionSound8713 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4986).moment H =
      Integer.Sparse.eval reductionProjection8713 (momentVector H) := by
  have heq : reductionPivot8713 = (fun u v => (normalNode4986).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4986).moment H = injectiveMoment H reductionPivot8713 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4986).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8713 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8713 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8713 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1370, reductionProjection8657, oldProjection593, reductionProjection6934] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8713 (0 : Fin 4)) = canonicalInput22670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1370 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22670 hH))).trans (oldProjectionSound1370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8713 (1 : Fin 4)) = canonicalInput9974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8657 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9974 hH))).trans (reductionSound8657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8713 (2 : Fin 4)) = canonicalInput9930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection593 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection593 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9930 hH))).trans (oldProjectionSound593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8713 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1091).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6934 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8713 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4986).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8713 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4986).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8713 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection8713 ![oldProjection1370, reductionProjection8657, oldProjection593, reductionProjection6934]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8714 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 1), (33, -48), (45, -48), (93, 12), (94, 25), (104, 48), (108, 16), (233, -48), (240, -48), (241, 96), (247, 32), (317, 144), (478, 144), (690, -96), (694, -144), (697, -240), (698, 96), (704, 32), (794, 288), (1047, -48), (1055, -48), (1091, 144), (1097, 144), (1219, -48), (1227, 16), (1250, 36), (1251, -3), (1323, -48), (1389, -48)]

def reductionPivot8714 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, 0, -1]]

theorem reductionSound8714 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4941).moment H =
      Integer.Sparse.eval reductionProjection8714 (momentVector H) := by
  have heq : reductionPivot8714 = (fun u v => (normalNode4941).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4941).moment H = injectiveMoment H reductionPivot8714 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4941).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8714 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8714 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8714 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8497, oldProjection2189, reductionProjection8713, oldProjection2196, oldProjection2216] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8714 (0 : Fin 5)) = (normalNode4785).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8497 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8714 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2189 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8714 (2 : Fin 5)) = (normalNode4986).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8713 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8714 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2196⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2196 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8714 (4 : Fin 5)) = canonicalInput9925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2216 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8714 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9925 hH))).trans (oldProjectionSound2216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4941).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8714 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4941).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8714 (j : Fin 5)))
      1 288 1440 5 ![288, 288, 1440, 720, 720] ![5, 5, 1, 2, 2] reductionProjection8714 ![reductionProjection8497, oldProjection2189, reductionProjection8713, oldProjection2196, oldProjection2216]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8715 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (93, -60), (94, -35), (240, 240), (697, 240), (1091, -720), (1100, -720), (1250, -180), (1251, -20)]

def reductionPivot8715 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 2, -2]]

theorem reductionSound8715 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4987).moment H =
      Integer.Sparse.eval reductionProjection8715 (momentVector H) := by
  have heq : reductionPivot8715 = (fun u v => (normalNode4987).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4987).moment H = injectiveMoment H reductionPivot8715 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4987).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8715 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8715 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8715 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1219, reductionProjection8673, reductionProjection8584, reductionProjection6934] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8715 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1219 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8715 (1 : Fin 4)) = canonicalInput9970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9970 hH))).trans (reductionSound8673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8715 (2 : Fin 4)) = canonicalInput9929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8584 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9929 hH))).trans (reductionSound8584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8715 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1091).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6934 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8715 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4987).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8715 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4987).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8715 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 72, 1] ![2, 1440, 20, 1440] reductionProjection8715 ![oldProjection1219, reductionProjection8673, reductionProjection8584, reductionProjection6934]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8716 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (94, -30), (240, 240), (241, -80), (247, -80), (697, 480), (1079, -720), (1103, -720), (1250, -60), (1251, -15)]

def reductionPivot8716 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound8716 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4988).moment H =
      Integer.Sparse.eval reductionProjection8716 (momentVector H) := by
  have heq : reductionPivot8716 = (fun u v => (normalNode4988).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4988).moment H = injectiveMoment H reductionPivot8716 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4988).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8716 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8716 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8716 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6699, oldProjection676, reductionProjection8584, oldProjection1351] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8716 (0 : Fin 4)) = canonicalInput11839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6699 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11839 hH))).trans (reductionSound6699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8716 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node676⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection676 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8716 (2 : Fin 4)) = canonicalInput9929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8584 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9929 hH))).trans (reductionSound8584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8716 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4400 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1351 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8716 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4400 hH))).trans (oldProjectionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4988).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8716 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4988).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8716 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 72, 720] ![1440, 1440, 20, 2] reductionProjection8716 ![reductionProjection6699, oldProjection676, reductionProjection8584, oldProjection1351]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8717 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -8), (19, -56), (20, 3), (93, 24), (94, 35), (104, 32), (108, 48), (225, -48), (233, -48), (240, -144), (241, 80), (247, 112), (690, -48), (697, -192), (698, 32), (1079, 144), (1091, 144), (1100, 144), (1103, 144), (1250, 72), (1251, 7), (1319, -96)]

def reductionPivot8717 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]

theorem reductionSound8717 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4942).moment H =
      Integer.Sparse.eval reductionProjection8717 (momentVector H) := by
  have heq : reductionPivot8717 = (fun u v => (normalNode4942).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4942).moment H = injectiveMoment H reductionPivot8717 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4942).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8717 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8717 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8717 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6622, oldProjection2190, reductionProjection8715, reductionProjection8716, oldProjection2197] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8717 (0 : Fin 5)) = (normalNode4786).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6622 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6622 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8717 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2190⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2190 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8717 (2 : Fin 5)) = (normalNode4987).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8715 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8717 (3 : Fin 5)) = (normalNode4988).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8716 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8717 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2197⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2197 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8717 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4942).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8717 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4942).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8717 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection8717 ![reductionProjection6622, oldProjection2190, reductionProjection8715, reductionProjection8716, oldProjection2197]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8718 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (93, -60), (94, -35), (104, -80), (233, 240), (240, 240), (241, -160), (690, 240), (697, 240), (698, -80), (1091, -720), (1250, -120)]

def reductionPivot8718 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -2, 2, -2]]

theorem reductionSound8718 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4943).moment H =
      Integer.Sparse.eval reductionProjection8718 (momentVector H) := by
  have heq : reductionPivot8718 = (fun u v => (normalNode4943).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4943).moment H = injectiveMoment H reductionPivot8718 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4943).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8718 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8718 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8718 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6591, oldProjection1219, reductionProjection6934, oldProjection1315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8718 (0 : Fin 4)) = canonicalInput9699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6591 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9699 hH))).trans (reductionSound6591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8718 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4369 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1219 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4369 hH))).trans (oldProjectionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8718 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1091).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6934 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8718 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4391 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1315 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8718 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4391 hH))).trans (oldProjectionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4943).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8718 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4943).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8718 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 144] ![10, 2, 1440, 10] reductionProjection8718 ![reductionProjection6591, oldProjection1219, reductionProjection6934, oldProjection1315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8719 : Integer.Sparse (Fin 1613) := [(1188, 1)]

theorem reductionSound8719 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1188).moment H =
      Integer.Sparse.eval reductionProjection8719 (momentVector H) := by
  have hc : coordinates (1188 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1188) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8719, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8720 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (1047, 48), (1093, -144), (1096, -144), (1188, -144), (1219, 48), (1251, 1)]

def reductionPivot8720 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -2, 1, 0]]

theorem reductionSound8720 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4992).moment H =
      Integer.Sparse.eval reductionProjection8720 (momentVector H) := by
  have heq : reductionPivot8720 = (fun u v => (normalNode4992).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4992).moment H = injectiveMoment H reductionPivot8720 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4992).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8720 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8720 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8720 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1369, reductionProjection6834, reductionProjection8719, reductionProjection8697] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8720 (0 : Fin 4)) = canonicalInput22676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22676 hH))).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8720 (1 : Fin 4)) = canonicalInput9975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6834 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9975 hH))).trans (reductionSound6834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8720 (2 : Fin 4)) = canonicalInput9936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9936 hH))).trans (reductionSound8719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8720 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1093).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8697 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8720 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4992).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8720 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4992).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8720 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection8720 ![oldProjection1369, reductionProjection6834, reductionProjection8719, reductionProjection8697]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8721 : Integer.Sparse (Fin 1613) := [(19, 2), (20, -1), (105, -8), (243, -24), (700, -8), (1044, 24), (1047, 24), (1052, 24), (1188, -72), (1219, 24), (1226, -8), (1251, -1)]

def reductionPivot8721 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, -2, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound8721 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5456).moment H =
      Integer.Sparse.eval reductionProjection8721 (momentVector H) := by
  have heq : reductionPivot8721 = (fun u v => (normalNode5456).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5456).moment H = injectiveMoment H reductionPivot8721 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5456).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8721 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8721 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8721 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1321, oldProjection1369, reductionProjection7895, reductionProjection8719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8721 (0 : Fin 4)) = canonicalInput12164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1321 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12164 hH))).trans (oldProjectionSound1321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8721 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4832 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4832 hH))).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8721 (2 : Fin 4)) = canonicalInput10596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7895 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10596 hH))).trans (reductionSound7895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8721 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1188).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8721 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5456).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8721 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5456).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8721 (j : Fin 4)))
      2 144 144 2 ![144, 144, 72, 1] ![1, 1, 2, 144] reductionProjection8721 ![oldProjection1321, oldProjection1369, reductionProjection7895, reductionProjection8719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8722 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -100), (20, 25), (32, -240), (37, -240), (94, -35), (105, 240), (241, 160), (243, 640), (478, 720), (690, -240), (697, -240), (698, 320), (700, 240), (704, 80), (1042, -240), (1044, -480), (1047, -720), (1052, -480), (1060, -240), (1093, 720), (1095, 720), (1096, 720), (1150, 720), (1188, 1440), (1214, -240), (1219, -720), (1223, -240), (1226, 240), (1227, 80), (1251, 10)]

def reductionPivot8722 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 0, -1]]

theorem reductionSound8722 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4944).moment H =
      Integer.Sparse.eval reductionProjection8722 (momentVector H) := by
  have heq : reductionPivot8722 = (fun u v => (normalNode4944).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4944).moment H = injectiveMoment H reductionPivot8722 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4944).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8722 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8722 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8722 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8472, oldProjection2196, reductionProjection8720, reductionProjection8623, reductionProjection8721] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8722 (0 : Fin 5)) = (normalNode4790).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8472 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8722 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2196⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2196 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8722 (2 : Fin 5)) = (normalNode4992).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8720 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8722 (3 : Fin 5)) = (normalNode4994).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8623 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8722 (4 : Fin 5)) = canonicalInput9933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8721 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8722 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9933 hH))).trans (reductionSound8721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4944).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8722 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4944).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8722 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 288, 288, 144] ![5, 2, 5, 5, 10] reductionProjection8722 ![reductionProjection8472, oldProjection2196, reductionProjection8720, reductionProjection8623, reductionProjection8721]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8723 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (93, -12), (94, 1), (242, 48), (700, -16), (704, -16), (1093, -144), (1099, -144), (1251, -8)]

def reductionPivot8723 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -1, 1, -1]]

theorem reductionSound8723 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4993).moment H =
      Integer.Sparse.eval reductionProjection8723 (momentVector H) := by
  have heq : reductionPivot8723 = (fun u v => (normalNode4993).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4993).moment H = injectiveMoment H reductionPivot8723 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4993).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8723 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8723 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8723 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1224, reductionProjection8660, oldProjection1342, reductionProjection8697] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8723 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8723 (1 : Fin 4)) = canonicalInput9971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8660 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9971 hH))).trans (reductionSound8660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8723 (2 : Fin 4)) = canonicalInput9935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1342 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9935 hH))).trans (oldProjectionSound1342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8723 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1093).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8697 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8723 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4993).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8723 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4993).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8723 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 1] ![2, 288, 2, 288] reductionProjection8723 ![oldProjection1224, reductionProjection8660, oldProjection1342, reductionProjection8697]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8724 : Integer.Sparse (Fin 1613) := [(1371, 1)]

theorem reductionSound8724 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1371).moment H =
      Integer.Sparse.eval reductionProjection8724 (momentVector H) := by
  have hc : coordinates (1371 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1371) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8724, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8725 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -3), (94, 3), (242, 48), (243, -16), (700, -32), (704, -32), (1105, -144), (1251, -6), (1371, -144)]

def reductionPivot8725 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound8725 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4995).moment H =
      Integer.Sparse.eval reductionProjection8725 (momentVector H) := by
  have heq : reductionPivot8725 = (fun u v => (normalNode4995).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4995).moment H = injectiveMoment H reductionPivot8725 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4995).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8725 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8725 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8725 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8724, oldProjection677, oldProjection1342, oldProjection1072] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8725 (0 : Fin 4)) = canonicalInput11841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8724 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11841 hH))).trans (reductionSound8724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8725 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node677⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection677 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8725 (2 : Fin 4)) = canonicalInput9935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1342 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9935 hH))).trans (oldProjectionSound1342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8725 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4411 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1072 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8725 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4411 hH))).trans (oldProjectionSound1072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4995).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8725 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4995).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8725 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 144] ![288, 288, 2, 2] reductionProjection8725 ![reductionProjection8724, oldProjection677, oldProjection1342, oldProjection1072]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8726 : Integer.Sparse (Fin 1613) := [(0, -7), (3, -60), (19, -300), (20, 55), (32, -240), (37, -240), (93, 120), (94, 50), (105, 160), (108, 160), (241, 160), (242, -480), (243, 400), (247, 160), (690, -240), (697, -240), (698, 160), (700, 400), (704, 240), (1044, -240), (1052, -240), (1093, 720), (1099, 720), (1105, 720), (1251, 90), (1290, -240), (1319, -240), (1371, 720)]

def reductionPivot8726 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound8726 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4945).moment H =
      Integer.Sparse.eval reductionProjection8726 (momentVector H) := by
  have heq : reductionPivot8726 = (fun u v => (normalNode4945).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4945).moment H = injectiveMoment H reductionPivot8726 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4945).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8726 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8726 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8726 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6630, oldProjection2197, reductionProjection8723, reductionProjection8725, oldProjection2200] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8726 (0 : Fin 5)) = (normalNode4791).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6630 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8726 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2197⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2197 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8726 (2 : Fin 5)) = (normalNode4993).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8726 (3 : Fin 5)) = (normalNode4995).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8725 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8726 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2200⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2200 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8726 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4945).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8726 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4945).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8726 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 288, 288] ![5, 1, 5, 5, 5] reductionProjection8726 ![reductionProjection6630, oldProjection2197, reductionProjection8723, reductionProjection8725, oldProjection2200]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8727 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (72, 24), (94, 1), (100, 24), (229, 24), (243, -16), (700, -24), (704, -16), (1040, 24), (1094, -72), (1251, -2)]

def reductionPivot8727 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![1, -2, -1, 2], ![1, 0, 0, -1]]

theorem reductionSound8727 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4996).moment H =
      Integer.Sparse.eval reductionProjection8727 (momentVector H) := by
  have heq : reductionPivot8727 = (fun u v => (normalNode4996).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4996).moment H = injectiveMoment H reductionPivot8727 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4996).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8727 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8727 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8727 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection729, reductionProjection7760, oldProjection1072, reductionProjection505] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8727 (0 : Fin 4)) = canonicalInput11941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection729 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11941 hH))).trans (oldProjectionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8727 (1 : Fin 4)) = canonicalInput9959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7760 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9959 hH))).trans (reductionSound7760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8727 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4411 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1072 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4411 hH))).trans (oldProjectionSound1072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8727 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1094).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8727 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4996).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8727 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4996).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8727 (j : Fin 4)))
      2 144 144 2 ![72, 144, 144, 1] ![2, 1, 1, 144] reductionProjection8727 ![oldProjection729, reductionProjection7760, oldProjection1072, reductionProjection505]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8728 : Integer.Sparse (Fin 1613) := [(19, 2), (20, -1), (72, 24), (243, -24), (700, -16), (1040, 24), (1058, 24), (1095, -72), (1223, 24), (1225, -8), (1251, -1)]

def reductionPivot8728 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, -1, 0]]

theorem reductionSound8728 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4997).moment H =
      Integer.Sparse.eval reductionProjection8728 (momentVector H) := by
  have heq : reductionPivot8728 = (fun u v => (normalNode4997).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4997).moment H = injectiveMoment H reductionPivot8728 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4997).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8728 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8728 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8728 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1017, oldProjection1020, oldProjection1062, oldProjection675] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8728 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5300 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5300 hH))).trans (oldProjectionSound1017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8728 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4433 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1020 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4433 hH))).trans (oldProjectionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8728 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4412 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4412 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8728 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node675⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection675 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8728 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4997).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8728 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4997).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8728 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 1] ![1, 1, 1, 144] reductionProjection8728 ![oldProjection1017, oldProjection1020, oldProjection1062, oldProjection675]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8729 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -120), (20, 35), (72, -480), (94, -40), (100, -240), (105, 80), (169, 720), (229, -240), (241, 80), (243, 800), (698, 320), (700, 640), (704, 240), (1040, -480), (1044, -480), (1045, -240), (1050, -240), (1052, -480), (1058, -480), (1059, 80), (1060, -480), (1077, 720), (1094, 720), (1095, 1440), (1218, -240), (1223, -720), (1225, 160), (1226, 160), (1251, 35)]

def reductionPivot8729 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 0, -1]]

theorem reductionSound8729 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4946).moment H =
      Integer.Sparse.eval reductionProjection8729 (momentVector H) := by
  have heq : reductionPivot8729 = (fun u v => (normalNode4946).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4946).moment H = injectiveMoment H reductionPivot8729 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4946).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8729 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8729 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8729 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8498, oldProjection1501, reductionProjection8623, reductionProjection8727, reductionProjection8728] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8729 (0 : Fin 5)) = (normalNode4792).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8498 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8729 (1 : Fin 5)) = canonicalInput9926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1501 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9926 hH))).trans (oldProjectionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8729 (2 : Fin 5)) = (normalNode4994).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8623 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8729 (3 : Fin 5)) = (normalNode4996).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8727 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8729 (4 : Fin 5)) = (normalNode4997).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8728 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8729 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4946).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8729 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4946).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8729 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 288, 144, 144] ![5, 2, 5, 10, 10] reductionProjection8729 ![reductionProjection8498, oldProjection1501, reductionProjection8623, reductionProjection8727, reductionProjection8728]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8730 : Integer.Sparse (Fin 1613) := [(20, -1), (72, 48), (94, 8), (105, -16), (241, -16), (243, -48), (698, -16), (700, -32), (1040, 48), (1044, 96), (1045, 48), (1050, 48), (1052, 96), (1251, 1)]

def reductionPivot8730 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -2, 0, 0]]

theorem reductionSound8730 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4947).moment H =
      Integer.Sparse.eval reductionProjection8730 (momentVector H) := by
  have heq : reductionPivot8730 = (fun u v => (normalNode4947).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4947).moment H = injectiveMoment H reductionPivot8730 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4947).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8730 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8730 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8730 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1184, oldProjection808, oldProjection1321, oldProjection727] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8730 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4276 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1184 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4276 hH))).trans (oldProjectionSound1184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8730 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4394 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection808 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4394 hH))).trans (oldProjectionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8730 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4406 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1321 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4406 hH))).trans (oldProjectionSound1321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8730 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4409 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection727 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8730 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4409 hH))).trans (oldProjectionSound727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4947).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8730 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4947).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8730 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection8730 ![oldProjection1184, oldProjection808, oldProjection1321, oldProjection727]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8731 : Integer.Sparse (Fin 1613) := [(3, 4), (19, -4), (20, 1), (236, 24), (244, -8), (246, -16), (701, -8), (704, -16), (745, -72), (1251, -1)]

def reductionPivot8731 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, 0, 4, -4], ![0, 1, -2, 1], ![1, -1, 0, 0]]

theorem reductionSound8731 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4998).moment H =
      Integer.Sparse.eval reductionProjection8731 (momentVector H) := by
  have heq : reductionPivot8731 = (fun u v => (normalNode4998).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4998).moment H = injectiveMoment H reductionPivot8731 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4998).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8731 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8731 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8731 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1227, reductionProjection6836, reductionProjection4719, reductionProjection6511] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8731 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1227 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8731 (1 : Fin 4)) = canonicalInput9972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6836 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9972 hH))).trans (reductionSound6836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8731 (2 : Fin 4)) = canonicalInput9944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9944 hH))).trans (reductionSound4719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8731 (3 : Fin 4)) = canonicalInput9938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8731 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9938 hH))).trans (reductionSound6511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4998).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8731 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4998).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8731 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 1] ![1, 1, 1, 144] reductionProjection8731 ![oldProjection1227, reductionProjection6836, reductionProjection4719, reductionProjection6511]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8732 : Integer.Sparse (Fin 1613) := [(3, -20), (4, 4), (17, 12), (19, -56), (93, 12), (94, 11), (106, 32), (236, -48), (243, 32), (244, 112), (246, 64), (700, 32), (701, 80), (704, 128), (745, 144), (1039, -96), (1040, -96), (1041, -48), (1044, -48), (1045, -48), (1052, -48), (1251, 7), (1292, -96)]

def reductionPivot8732 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound8732 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4949).moment H =
      Integer.Sparse.eval reductionProjection8732 (momentVector H) := by
  have heq : reductionPivot8732 = (fun u v => (normalNode4949).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4949).moment H = injectiveMoment H reductionPivot8732 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4949).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8732 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8732 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 144, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8732 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6637, oldProjection2200, reductionProjection8731, reductionProjection8630, reductionProjection8630] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8732 (0 : Fin 5)) = (normalNode4793).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6637 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8732 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2200⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2200 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8732 (2 : Fin 5)) = (normalNode4998).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8731 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8732 (3 : Fin 5)) = (normalNode5000).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8732 (4 : Fin 5)) = canonicalInput9939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8732 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9939 hH))).trans (reductionSound8630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4949).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8732 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4949).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8732 (j : Fin 5)))
      1 288 288 1 ![144, 288, 144, 144, 144] ![2, 1, 2, 2, 2] reductionProjection8732 ![reductionProjection6637, oldProjection2200, reductionProjection8731, reductionProjection8630, reductionProjection8630]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8733 : Integer.Sparse (Fin 1613) := [(169, -1), (638, -1), (1092, -1), (1094, -1)]

def reductionPivot8733 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, -2, -1, 2], ![1, 1, 0, -2]]

theorem reductionSound8733 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4974).moment H =
      Integer.Sparse.eval reductionProjection8733 (momentVector H) := by
  have heq : reductionPivot8733 = (fun u v => (normalNode4974).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4974).moment H = injectiveMoment H reductionPivot8733 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4974).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8733 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8733 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8733 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection518, reductionProjection505, oldProjection408, reductionProjection5288] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8733 (0 : Fin 4)) = canonicalInput10291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10291 hH))).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8733 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1094).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8733 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4398 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4398 hH))).trans (oldProjectionSound408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8733 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1092).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5288 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8733 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4974).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8733 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4974).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8733 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8733 ![oldProjection518, reductionProjection505, oldProjection408, reductionProjection5288]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8734 : Integer.Sparse (Fin 1613) := [(0, -1), (100, -60), (169, 540), (228, -180), (638, 540), (697, -60), (698, 260), (1092, 540), (1094, 360), (1219, -180), (1223, -180), (1226, 180), (1227, 80), (1251, -15)]

def reductionPivot8734 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, 0, -2]]

theorem reductionSound8734 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode4965).moment H =
      Integer.Sparse.eval reductionProjection8734 (momentVector H) := by
  have heq : reductionPivot8734 = (fun u v => (normalNode4965).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4965).moment H = injectiveMoment H reductionPivot8734 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4965).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8734 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8734 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 720, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8734 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3099, reductionProjection8733, reductionProjection8733, oldProjection1511, reductionProjection8612] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8734 (0 : Fin 5)) = canonicalInput10260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3099 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10260 hH))).trans (reductionSound3099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8734 (1 : Fin 5)) = canonicalInput9923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8733 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9923 hH))).trans (reductionSound8733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8734 (2 : Fin 5)) = (normalNode4974).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8733 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8734 (3 : Fin 5)) = canonicalInput9906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1511 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9906 hH))).trans (oldProjectionSound1511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8734 (4 : Fin 5)) = (normalNode4972).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8612 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8734 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4965).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8734 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4965).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8734 (j : Fin 5)))
      1 360 720 2 ![720, 2, 2, 720, 6] ![1, 360, 360, 1, 120] reductionProjection8734 ![reductionProjection3099, reductionProjection8733, reductionProjection8733, oldProjection1511, reductionProjection8612]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8735 : Integer.Sparse (Fin 1613) := [(0, 1), (169, 1080), (478, 1080), (602, 1080), (697, -360), (698, 360), (1095, 720), (1219, -360), (1223, -120), (1226, 120), (1227, 160), (1251, -65), (1323, -120), (1389, -360)]

def reductionPivot8735 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, -1, -1]]

theorem reductionSound8735 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4966).moment H =
      Integer.Sparse.eval reductionProjection8735 (momentVector H) := by
  have heq : reductionPivot8735 = (fun u v => (normalNode4966).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4966).moment H = injectiveMoment H reductionPivot8735 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4966).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8735 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8735 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 2, 2, 36, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8735 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1829, oldProjection2188, oldProjection2188, oldProjection2185, oldProjection1511] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8735 (0 : Fin 5)) = canonicalInput10261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1829 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10261 hH))).trans (oldProjectionSound1829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8735 (1 : Fin 5)) = canonicalInput9924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2188 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9924 hH))).trans (oldProjectionSound2188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8735 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2188⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2188 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8735 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2185⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2185 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8735 (4 : Fin 5)) = canonicalInput9906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1511 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8735 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9906 hH))).trans (oldProjectionSound1511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4966).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8735 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4966).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8735 (j : Fin 5)))
      1 720 720 1 ![360, 2, 2, 36, 720] ![2, 360, 360, 20, 1] reductionProjection8735 ![oldProjection1829, oldProjection2188, oldProjection2188, oldProjection2185, oldProjection1511]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

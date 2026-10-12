import NoFourMUBs.Step2.SOS.Canonical003
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical166
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical189
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions279
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions300
import NoFourMUBs.Step2.SOS.Reductions301
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical148
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical149
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical166
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical167
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical169
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical257
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9664 : Integer.Sparse (Fin 1613) := [(227, -1), (682, -1), (1209, -1)]

def reductionPivot9664 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 1, 2], ![-1, 2, -2, 1], ![4, -1, 1, -4]]

theorem reductionSound9664 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6448).moment H =
      Integer.Sparse.eval reductionProjection9664 (momentVector H) := by
  have heq : reductionPivot9664 = (fun u v => (normalNode6448).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6448).moment H = injectiveMoment H reductionPivot9664 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6448).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6448).entries)).symm
  have hshape : reductionPivot9664 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9664 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9664 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9149, reductionProjection1693, oldProjection159] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9664 (0 : Fin 3)) = canonicalInput236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9664 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9149 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9664 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound236 hH))).trans (reductionSound9149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9664 (1 : Fin 3)) = canonicalInput4646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9664 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9664 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4646 hH))).trans (reductionSound1693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9664 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2145 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9664 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9664 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2145 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6448).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9664 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6448).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9664 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9664 ![reductionProjection9149, reductionProjection1693, oldProjection159]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9665 : Integer.Sparse (Fin 1613) := [(227, 2), (282, -3), (682, 2), (1209, 1), (1292, 1), (1321, 2), (1389, 1)]

def reductionPivot9665 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 4, -4]]

theorem reductionSound9665 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5900).moment H =
      Integer.Sparse.eval reductionProjection9665 (momentVector H) := by
  have heq : reductionPivot9665 = (fun u v => (normalNode5900).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5900).moment H = injectiveMoment H reductionPivot9665 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5900).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9665 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9665 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9665 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9587, reductionProjection2344, reductionProjection9664, oldProjection941] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9665 (0 : Fin 4)) = canonicalInput11914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9587 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11914 hH))).trans (reductionSound9587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9665 (1 : Fin 4)) = canonicalInput12024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2344 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12024 hH))).trans (reductionSound2344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9665 (2 : Fin 4)) = canonicalInput12048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9664 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12048 hH))).trans (reductionSound9664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9665 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5349 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection941 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9665 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5349 hH))).trans (oldProjectionSound941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5900).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9665 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5900).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9665 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection9665 ![reductionProjection9587, reductionProjection2344, reductionProjection9664, oldProjection941]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9666 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -180), (20, 40), (81, -960), (94, 120), (227, -480), (229, -960), (241, 80), (243, 480), (282, 720), (285, 720), (293, 1440), (682, -960), (698, 560), (704, 560), (1040, -720), (1058, -480), (1060, -240), (1209, -240), (1223, -240), (1225, 80), (1226, 160), (1227, 160), (1251, 55), (1292, -240), (1321, -960), (1389, -720)]

def reductionPivot9666 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 3, -4]]

theorem reductionSound9666 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5874).moment H =
      Integer.Sparse.eval reductionProjection9666 (momentVector H) := by
  have heq : reductionPivot9666 = (fun u v => (normalNode5874).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5874).moment H = injectiveMoment H reductionPivot9666 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5874).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9666 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9666 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 1440, 1440, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9666 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2845, oldProjection2349, oldProjection2349, oldProjection2278, reductionProjection9665] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9666 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4758 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2845 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4758 hH))).trans (oldProjectionSound2845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9666 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2349⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2349 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9666 (2 : Fin 5)) = canonicalInput12028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2349 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12028 hH))).trans (oldProjectionSound2349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9666 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5335 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2278 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5335 hH))).trans (oldProjectionSound2278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9666 (4 : Fin 5)) = (normalNode5900).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9665 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9666 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5874).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9666 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5874).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9666 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 1440, 1440, 6] ![10, 1, 1, 1, 240] reductionProjection9666 ![oldProjection2845, oldProjection2349, oldProjection2349, oldProjection2278, reductionProjection9665]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9667 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -80), (20, 5), (81, -1200), (93, 60), (94, 115), (241, 80), (682, -480), (690, -240), (697, -480), (698, 880), (775, 720), (1047, -240), (1055, -480), (1058, -960), (1226, 160), (1227, 480), (1250, 240), (1251, -225), (1321, -480), (1389, -960)]

def reductionPivot9667 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound9667 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5875).moment H =
      Integer.Sparse.eval reductionProjection9667 (momentVector H) := by
  have heq : reductionPivot9667 = (fun u v => (normalNode5875).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5875).moment H = injectiveMoment H reductionPivot9667 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5875).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9667 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9667 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9667 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2812, oldProjection1635, oldProjection1635, reductionProjection2710, oldProjection2357] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9667 (0 : Fin 5)) = canonicalInput10649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2812 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10649 hH))).trans (oldProjectionSound2812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9667 (1 : Fin 5)) = canonicalInput11988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1635 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11988 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9667 (2 : Fin 5)) = canonicalInput12029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1635 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12029 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9667 (3 : Fin 5)) = canonicalInput12035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2710 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12035 hH))).trans (reductionSound2710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9667 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2357⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2357 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9667 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5875).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9667 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5875).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9667 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 1440] ![1, 1, 1, 5, 1] reductionProjection9667 ![oldProjection2812, oldProjection1635, oldProjection1635, reductionProjection2710, oldProjection2357]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9668 : Integer.Sparse (Fin 1613) := [(0, 24), (81, -480), (94, 65), (546, 720), (563, 720), (682, -240), (698, 800), (1055, -240), (1058, -240), (1059, 160), (1221, -240), (1226, 80), (1227, 720), (1250, 60), (1251, -295), (1321, -240), (1389, -960)]

def reductionPivot9668 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]

theorem reductionSound9668 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5876).moment H =
      Integer.Sparse.eval reductionProjection9668 (momentVector H) := by
  have heq : reductionPivot9668 = (fun u v => (normalNode5876).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5876).moment H = injectiveMoment H reductionPivot9668 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5876).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9668 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9668 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9668 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4819, oldProjection1847, reductionProjection4825, reductionProjection3872, oldProjection2359] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9668 (0 : Fin 5)) = canonicalInput10656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4819 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10656 hH))).trans (reductionSound4819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9668 (1 : Fin 5)) = canonicalInput11990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11990 hH))).trans (oldProjectionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9668 (2 : Fin 5)) = canonicalInput12031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12031 hH))).trans (reductionSound4825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9668 (3 : Fin 5)) = canonicalInput12040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3872 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12040 hH))).trans (reductionSound3872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9668 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2359⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2359 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9668 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5876).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9668 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5876).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9668 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 1440, 1440] ![1, 5, 2, 1, 1] reductionProjection9668 ![reductionProjection4819, oldProjection1847, reductionProjection4825, reductionProjection3872, oldProjection2359]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9669 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (81, 48), (227, 48), (229, 48), (243, -48), (682, 96), (698, -16), (704, -32), (1040, 96), (1209, 48), (1225, -16), (1226, -16), (1251, 1)]

def reductionPivot9669 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 0, 3, -4]]

theorem reductionSound9669 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5877).moment H =
      Integer.Sparse.eval reductionProjection9669 (momentVector H) := by
  have heq : reductionPivot9669 = (fun u v => (normalNode5877).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5877).moment H = injectiveMoment H reductionPivot9669 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5877).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9669 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9669 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9669 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection892, oldProjection758, oldProjection757, reductionProjection9664] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9669 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4784 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection892 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4784 hH))).trans (oldProjectionSound892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9669 (1 : Fin 4)) = canonicalInput11991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection758 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11991 hH))).trans (oldProjectionSound758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9669 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5348 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection757 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5348 hH))).trans (oldProjectionSound757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9669 (3 : Fin 4)) = canonicalInput12048.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9664 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9669 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12048 hH))).trans (reductionSound9664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5877).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9669 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5877).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9669 (j : Fin 4)))
      2 288 288 2 ![144, 144, 3, 3] ![2, 2, 96, 96] reductionProjection9669 ![oldProjection892, oldProjection758, oldProjection757, reductionProjection9664]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9670 : Integer.Sparse (Fin 1613) := [(430, -1), (563, -1), (1263, -2)]

def reductionPivot9670 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, -1, 2, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]

theorem reductionSound9670 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5886).moment H =
      Integer.Sparse.eval reductionProjection9670 (momentVector H) := by
  have heq : reductionPivot9670 = (fun u v => (normalNode5886).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5886).moment H = injectiveMoment H reductionPivot9670 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5886).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9670 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9670 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9670 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection475, reductionProjection1048, reductionProjection1046, reductionProjection1048] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9670 (0 : Fin 4)) = canonicalInput12148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12148 hH))).trans (oldProjectionSound475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9670 (1 : Fin 4)) = canonicalInput12008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1048 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12008 hH))).trans (reductionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9670 (2 : Fin 4)) = canonicalInput12004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12004 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9670 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1048 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9670 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5886).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9670 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5886).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9670 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9670 ![oldProjection475, reductionProjection1048, reductionProjection1046, reductionProjection1048]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9671 : Integer.Sparse (Fin 1613) := [(682, -1), (1209, -1), (1217, -1)]

def reductionPivot9671 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -2, 2, -1], ![-3, 1, -1, 3], ![3, 1, -1, -3]]

theorem reductionSound9671 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode10956).moment H =
      Integer.Sparse.eval reductionProjection9671 (momentVector H) := by
  have heq : reductionPivot9671 = (fun u v => (normalNode10956).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10956).moment H = injectiveMoment H reductionPivot9671 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10956).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10956).entries)).symm
  have hshape : reductionPivot9671 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9671 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9671 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection220, reductionProjection9149, oldProjection159] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9671 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8225 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9671 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection220 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9671 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8225 hH))).trans (oldProjectionSound220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9671 (1 : Fin 3)) = canonicalInput32907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9671 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9149 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9671 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32907 hH))).trans (reductionSound9149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9671 (2 : Fin 3)) = canonicalInput32913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9671 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9671 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32913 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10956).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9671 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10956).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9671 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9671 ![oldProjection220, reductionProjection9149, oldProjection159]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9672 : Integer.Sparse (Fin 1613) := [(682, 3), (1209, 1), (1217, 2), (1221, 2), (1268, -3), (1389, 1)]

def reductionPivot9672 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, -1, 2, -2]]

theorem reductionSound9672 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5910).moment H =
      Integer.Sparse.eval reductionProjection9672 (momentVector H) := by
  have heq : reductionPivot9672 = (fun u v => (normalNode5910).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5910).moment H = injectiveMoment H reductionPivot9672 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5910).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9672 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9672 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9672 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1188, reductionProjection1115, oldProjection822, reductionProjection9671] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9672 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5439 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1188 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5439 hH))).trans (oldProjectionSound1188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9672 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1268).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9672 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5367 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection822 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5367 hH))).trans (oldProjectionSound822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9672 (3 : Fin 4)) = canonicalInput12056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9671 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9672 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12056 hH))).trans (reductionSound9671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5910).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9672 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5910).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9672 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection9672 ![oldProjection1188, reductionProjection1115, oldProjection822, reductionProjection9671]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9673 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (20, 5), (81, -480), (94, -30), (160, 720), (243, 240), (430, 1440), (563, 1440), (682, -720), (697, -240), (698, 640), (704, 80), (1040, -240), (1052, -480), (1058, -240), (1059, 160), (1209, -240), (1217, -480), (1221, -480), (1223, -240), (1225, 80), (1226, 320), (1227, 320), (1251, -100), (1263, 2880), (1268, 720), (1389, -240)]

def reductionPivot9673 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]

theorem reductionSound9673 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5879).moment H =
      Integer.Sparse.eval reductionProjection9673 (momentVector H) := by
  have heq : reductionPivot9673 = (fun u v => (normalNode5879).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5879).moment H = injectiveMoment H reductionPivot9673 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5879).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9673 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9673 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 2, 1440, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9673 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9202, reductionProjection9670, reductionProjection9670, oldProjection2184, reductionProjection9672] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9673 (0 : Fin 5)) = canonicalInput10697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9202 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10697 hH))).trans (reductionSound9202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9673 (1 : Fin 5)) = (normalNode5886).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9670 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9673 (2 : Fin 5)) = canonicalInput12050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9670 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12050 hH))).trans (reductionSound9670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9673 (3 : Fin 5)) = canonicalInput12052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2184 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12052 hH))).trans (oldProjectionSound2184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9673 (4 : Fin 5)) = (normalNode5910).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9672 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9673 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5879).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9673 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5879).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9673 (j : Fin 5)))
      1 1440 1440 1 ![288, 2, 2, 1440, 6] ![5, 720, 720, 1, 240] reductionProjection9673 ![reductionProjection9202, reductionProjection9670, reductionProjection9670, oldProjection2184, reductionProjection9672]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9674 : Integer.Sparse (Fin 1613) := [(0, 18), (81, -960), (94, 55), (553, 720), (563, 1440), (682, -720), (698, 1440), (1059, 480), (1221, -1200), (1226, 320), (1227, 960), (1251, -375), (1389, -1200)]

def reductionPivot9674 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 0, 0, -1]]

theorem reductionSound9674 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5880).moment H =
      Integer.Sparse.eval reductionProjection9674 (momentVector H) := by
  have heq : reductionPivot9674 = (fun u v => (normalNode5880).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5880).moment H = injectiveMoment H reductionPivot9674 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5880).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9674 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9674 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9674 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2450, reductionProjection5452, reductionProjection5452, oldProjection1791, oldProjection2360] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9674 (0 : Fin 5)) = canonicalInput10698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10698 hH))).trans (oldProjectionSound2450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9674 (1 : Fin 5)) = canonicalInput12003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12003 hH))).trans (reductionSound5452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9674 (2 : Fin 5)) = canonicalInput12051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12051 hH))).trans (reductionSound5452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9674 (3 : Fin 5)) = canonicalInput12053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1791 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12053 hH))).trans (oldProjectionSound1791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9674 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2360⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2360 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9674 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5880).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9674 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5880).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9674 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 288] ![1, 1, 1, 1, 5] reductionProjection9674 ![oldProjection2450, reductionProjection5452, reductionProjection5452, oldProjection1791, oldProjection2360]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9675 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -10), (94, 60), (546, 720), (563, 720), (694, -240), (698, 240), (1055, -480), (1128, 720), (1227, 400), (1250, 150), (1251, -225), (1389, -480)]

def reductionPivot9675 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound9675 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5884).moment H =
      Integer.Sparse.eval reductionProjection9675 (momentVector H) := by
  have heq : reductionPivot9675 = (fun u v => (normalNode5884).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5884).moment H = injectiveMoment H reductionPivot9675 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5884).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9675 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9675 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9675 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2339, oldProjection1751, reductionProjection3877, reductionProjection4825, oldProjection1751] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9675 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2339⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2339 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9675 (1 : Fin 5)) = canonicalInput11998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11998 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9675 (2 : Fin 5)) = (normalNode5883).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3877 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9675 (3 : Fin 5)) = (normalNode5885).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9675 (4 : Fin 5)) = canonicalInput12002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9675 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12002 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5884).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9675 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5884).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9675 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 1440, 720, 720] ![1, 2, 1, 2, 2] reductionProjection9675 ![oldProjection2339, oldProjection1751, reductionProjection3877, reductionProjection4825, oldProjection1751]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9676 : Integer.Sparse (Fin 1613) := [(758, -1), (1255, -1), (1264, -1), (1266, -1)]

def reductionPivot9676 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![2, -2, 1, -1]]

theorem reductionSound9676 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5887).moment H =
      Integer.Sparse.eval reductionProjection9676 (momentVector H) := by
  have heq : reductionPivot9676 = (fun u v => (normalNode5887).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5887).moment H = injectiveMoment H reductionPivot9676 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5887).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9676 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9676 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9676 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection587, oldProjection719, reductionProjection9241, reductionProjection8944] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9676 (0 : Fin 4)) = canonicalInput12158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection587 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12158 hH))).trans (oldProjectionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9676 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node719⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9676 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1264).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9241 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9676 (3 : Fin 4)) = canonicalInput12015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8944 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9676 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12015 hH))).trans (reductionSound8944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5887).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9676 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5887).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9676 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9676 ![oldProjection587, oldProjection719, reductionProjection9241, reductionProjection8944]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9677 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (690, -240), (758, 720), (864, 360), (1050, -480), (1221, -240), (1250, 90), (1251, 80), (1254, 360), (1255, 720), (1264, 360), (1266, 720)]

def reductionPivot9677 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, 1, -1]]

theorem reductionSound9677 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5889).moment H =
      Integer.Sparse.eval reductionProjection9677 (momentVector H) := by
  have heq : reductionPivot9677 = (fun u v => (normalNode5889).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5889).moment H = injectiveMoment H reductionPivot9677 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5889).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9677 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9677 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1, 12, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9677 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9611, reductionProjection9676, oldProjection719, oldProjection2351, oldProjection2352] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9677 (0 : Fin 5)) = (normalNode5806).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9611 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9611 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9677 (1 : Fin 5)) = (normalNode5887).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9676 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9677 (2 : Fin 5)) = canonicalInput12021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12021 hH))).trans (oldProjectionSound719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9677 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2351⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2351 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9677 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2352⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2352 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9677 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5889).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9677 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5889).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9677 (j : Fin 5)))
      1 720 1440 2 ![1440, 2, 1, 12, 1440] ![1, 720, 1440, 120, 1] reductionProjection9677 ![reductionProjection9611, reductionProjection9676, oldProjection719, oldProjection2351, oldProjection2352]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9678 : Integer.Sparse (Fin 1613) := [(3, 8), (19, -4), (20, 2), (32, 48), (94, 7), (227, 48), (233, 48), (282, -144), (682, 48), (690, 48), (1209, 48), (1251, 5)]

def reductionPivot9678 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound9678 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5890).moment H =
      Integer.Sparse.eval reductionProjection9678 (momentVector H) := by
  have heq : reductionPivot9678 = (fun u v => (normalNode5890).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5890).moment H = injectiveMoment H reductionPivot9678 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5890).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9678 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9678 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9678 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8930, reductionProjection9657, reductionProjection2344, oldProjection1303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9678 (0 : Fin 4)) = canonicalInput11885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8930 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11885 hH))).trans (reductionSound8930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9678 (1 : Fin 4)) = canonicalInput12018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9657 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12018 hH))).trans (reductionSound9657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9678 (2 : Fin 4)) = canonicalInput12024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2344 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12024 hH))).trans (reductionSound2344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9678 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5330 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9678 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5330 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5890).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9678 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5890).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9678 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 72] ![2, 4, 288, 4] reductionProjection9678 ![reductionProjection8930, reductionProjection9657, reductionProjection2344, oldProjection1303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9679 : Integer.Sparse (Fin 1613) := [(19, 2), (94, 1), (682, 24), (690, 24), (1085, -72), (1114, -72), (1251, 3), (1265, -72)]

def reductionPivot9679 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, -1, 3, -3]]

theorem reductionSound9679 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5891).moment H =
      Integer.Sparse.eval reductionProjection9679 (momentVector H) := by
  have heq : reductionPivot9679 = (fun u v => (normalNode5891).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5891).moment H = injectiveMoment H reductionPivot9679 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5891).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9679 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9679 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9679 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6854, reductionProjection9660, oldProjection1303, oldProjection678] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9679 (0 : Fin 4)) = canonicalInput11886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6854 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11886 hH))).trans (reductionSound6854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9679 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1265).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9660 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9679 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5330 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5330 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9679 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5331 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection678 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9679 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5331 hH))).trans (oldProjectionSound678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5891).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9679 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5891).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9679 (j : Fin 4)))
      2 144 144 2 ![1, 1, 72, 1] ![144, 144, 2, 144] reductionProjection9679 ![reductionProjection6854, reductionProjection9660, oldProjection1303, oldProjection678]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9680 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 1), (94, 2), (282, -72), (1251, 1), (1267, -72), (1271, -72)]

def reductionPivot9680 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, -1, 1], ![0, 0, -2, 2], ![0, 0, 4, -4], ![1, -1, -1, 1]]

theorem reductionSound9680 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5892).moment H =
      Integer.Sparse.eval reductionProjection9680 (momentVector H) := by
  have heq : reductionPivot9680 = (fun u v => (normalNode5892).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5892).moment H = injectiveMoment H reductionPivot9680 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5892).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9680 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9680 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9680 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2227, reductionProjection9299, reductionProjection2344, reductionProjection2228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9680 (0 : Fin 4)) = (normalNode11119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2227 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9680 (1 : Fin 4)) = canonicalInput12075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12075 hH))).trans (reductionSound9299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9680 (2 : Fin 4)) = canonicalInput12025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2344 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12025 hH))).trans (reductionSound2344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9680 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1267).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2228 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9680 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5892).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9680 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5892).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9680 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection9680 ![reductionProjection2227, reductionProjection9299, reductionProjection2344, reductionProjection2228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9681 : Integer.Sparse (Fin 1613) := [(0, 3), (3, -100), (4, 5), (17, 60), (19, 60), (20, -15), (32, -480), (93, 180), (94, -80), (227, -1440), (233, -720), (282, 2160), (682, -1440), (690, -720), (1209, -720), (1250, 180), (1251, -95), (1292, -720), (1321, -1440), (1389, -720)]

def reductionPivot9681 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound9681 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5893).moment H =
      Integer.Sparse.eval reductionProjection9681 (momentVector H) := by
  have heq : reductionPivot9681 = (fun u v => (normalNode5893).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5893).moment H = injectiveMoment H reductionPivot9681 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5893).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9681 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9681 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9681 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9588, reductionProjection9678, reductionProjection9678, reductionProjection9665, oldProjection2357] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9681 (0 : Fin 5)) = (normalNode5812).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9681 (1 : Fin 5)) = (normalNode5890).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9678 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9681 (2 : Fin 5)) = canonicalInput12033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9678 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12033 hH))).trans (reductionSound9678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9681 (3 : Fin 5)) = (normalNode5900).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9665 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9681 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2357⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2357 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9681 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5893).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9681 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5893).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9681 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 6, 1440] ![1, 5, 5, 240, 1] reductionProjection9681 ![reductionProjection9588, reductionProjection9678, reductionProjection9678, reductionProjection9665, oldProjection2357]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9682 : Integer.Sparse (Fin 1613) := [(0, 18), (19, -60), (20, 15), (93, 180), (94, -10), (682, -960), (690, -720), (1085, 2160), (1114, 2160), (1250, 360), (1251, -155), (1265, 1440), (1290, -240), (1319, -720), (1321, -720), (1388, -720), (1389, -720)]

def reductionPivot9682 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -1, 3, -3]]

theorem reductionSound9682 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5894).moment H =
      Integer.Sparse.eval reductionProjection9682 (momentVector H) := by
  have heq : reductionPivot9682 = (fun u v => (normalNode5894).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5894).moment H = injectiveMoment H reductionPivot9682 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5894).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9682 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9682 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9682 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9591, reductionProjection9679, reductionProjection9679, oldProjection2357, reductionProjection9648] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9682 (0 : Fin 5)) = (normalNode5813).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9591 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9682 (1 : Fin 5)) = (normalNode5891).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9679 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9682 (2 : Fin 5)) = canonicalInput12034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9679 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12034 hH))).trans (reductionSound9679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9682 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2357⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2357 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9682 (4 : Fin 5)) = (normalNode5901).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9648 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9682 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5894).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9682 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5894).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9682 (j : Fin 5)))
      1 1440 1440 1 ![720, 144, 144, 1440, 1440] ![2, 10, 10, 1, 1] reductionProjection9682 ![reductionProjection9591, reductionProjection9679, reductionProjection9679, oldProjection2357, reductionProjection9648]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9683 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 5), (869, 120), (1114, 240), (1250, 40), (1251, -5), (1319, -80), (1388, -40), (1389, -80)]

def reductionPivot9683 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]

theorem reductionSound9683 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode5895).moment H =
      Integer.Sparse.eval reductionProjection9683 (momentVector H) := by
  have heq : reductionPivot9683 = (fun u v => (normalNode5895).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5895).moment H = injectiveMoment H reductionPivot9683 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5895).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9683 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9683 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 720, 360, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9683 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2343, oldProjection2354, oldProjection1360, oldProjection1748, oldProjection1748] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9683 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2343⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2343 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9683 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2354⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2354 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9683 (2 : Fin 5)) = canonicalInput12038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1360 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12038 hH))).trans (oldProjectionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9683 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5344 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5344 hH))).trans (oldProjectionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9683 (4 : Fin 5)) = canonicalInput12041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9683 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12041 hH))).trans (oldProjectionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5895).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9683 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5895).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9683 (j : Fin 5)))
      1 240 1440 6 ![144, 720, 360, 288, 288] ![10, 2, 4, 5, 5] reductionProjection9683 ![oldProjection2343, oldProjection2354, oldProjection1360, oldProjection1748, oldProjection1748]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9684 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -20), (94, 35), (541, 1440), (553, 1440), (690, -240), (1050, -480), (1114, 720), (1221, -720), (1250, 300), (1251, -45), (1266, 720), (1319, -240), (1388, -480), (1389, -1200)]

def reductionPivot9684 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound9684 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5896).moment H =
      Integer.Sparse.eval reductionProjection9684 (momentVector H) := by
  have heq : reductionPivot9684 = (fun u v => (normalNode5896).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5896).moment H = injectiveMoment H reductionPivot9684 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5896).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9684 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9684 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 288, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9684 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2344, oldProjection2355, oldProjection1748, reductionProjection4799, oldProjection1752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9684 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2344⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9684 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2355⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2355 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9684 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5344 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5344 hH))).trans (oldProjectionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9684 (3 : Fin 5)) = (normalNode5902).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4799 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9684 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5346 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9684 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5346 hH))).trans (oldProjectionSound1752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5896).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9684 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5896).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9684 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 288, 288, 720] ![1, 2, 5, 5, 2] reductionProjection9684 ![oldProjection2344, oldProjection2355, oldProjection1748, reductionProjection4799, oldProjection1752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9685 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -20), (20, 5), (72, -840), (93, 30), (94, -45), (682, -480), (690, -120), (758, 360), (1044, -120), (1050, -240), (1221, -480), (1250, 60), (1251, -50), (1270, 720), (1321, -480), (1389, -480)]

def reductionPivot9685 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound9685 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5897).moment H =
      Integer.Sparse.eval reductionProjection9685 (momentVector H) := by
  have heq : reductionPivot9685 = (fun u v => (normalNode5897).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5897).moment H = injectiveMoment H reductionPivot9685 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5897).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9685 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9685 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 720, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9685 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9575, oldProjection2356, oldProjection1752, reductionProjection2903, reductionProjection2903] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9685 (0 : Fin 5)) = (normalNode5819).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9575 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9685 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2356⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2356 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9685 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5346 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5346 hH))).trans (oldProjectionSound1752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9685 (3 : Fin 5)) = (normalNode5904).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2903 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9685 (4 : Fin 5)) = canonicalInput12043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2903 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9685 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12043 hH))).trans (reductionSound2903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5897).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9685 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5897).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9685 (j : Fin 5)))
      1 720 720 1 ![720, 144, 720, 720, 720] ![1, 5, 1, 1, 1] reductionProjection9685 ![reductionProjection9575, oldProjection2356, oldProjection1752, reductionProjection2903, reductionProjection2903]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9686 : Integer.Sparse (Fin 1613) := [(10, 48), (19, -4), (20, 4), (72, 48), (94, 5), (227, 48), (682, 48), (1039, 48), (1209, 48), (1251, 1), (1271, -144)]

def reductionPivot9686 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, 4, -4], ![1, -1, -2, 2], ![1, -1, 0, 0]]

theorem reductionSound9686 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5905).moment H =
      Integer.Sparse.eval reductionProjection9686 (momentVector H) := by
  have heq : reductionPivot9686 = (fun u v => (normalNode5905).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5905).moment H = injectiveMoment H reductionPivot9686 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5905).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9686 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9686 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9686 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8951, oldProjection989, reductionProjection9150, reductionProjection9299] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9686 (0 : Fin 4)) = canonicalInput11944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8951 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11944 hH))).trans (reductionSound8951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9686 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5373 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection989 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5373 hH))).trans (oldProjectionSound989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9686 (2 : Fin 4)) = canonicalInput12063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9150 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12063 hH))).trans (reductionSound9150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9686 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1271).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9686 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5905).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9686 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5905).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9686 (j : Fin 4)))
      2 288 288 2 ![72, 144, 72, 1] ![4, 2, 4, 288] reductionProjection9686 ![reductionProjection8951, oldProjection989, reductionProjection9150, reductionProjection9299]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9687 : Integer.Sparse (Fin 1613) := [(0, 1), (10, -240), (19, 100), (20, -25), (72, -480), (94, -60), (227, -240), (282, 360), (682, -240), (1039, -240), (1209, -120), (1221, -120), (1251, -40), (1259, 720), (1267, 360), (1270, 720), (1271, 1440), (1292, -120), (1321, -240), (1389, -120)]

def reductionPivot9687 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound9687 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5899).moment H =
      Integer.Sparse.eval reductionProjection9687 (momentVector H) := by
  have heq : reductionPivot9687 = (fun u v => (normalNode5899).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5899).moment H = injectiveMoment H reductionPivot9687 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5899).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9687 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9687 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 720, 288, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9687 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9577, reductionProjection9680, reductionProjection2903, reductionProjection9686, reductionProjection9654] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9687 (0 : Fin 5)) = (normalNode5820).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9577 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9687 (1 : Fin 5)) = (normalNode5892).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9680 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9687 (2 : Fin 5)) = (normalNode5904).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2903 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9687 (3 : Fin 5)) = (normalNode5905).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9686 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9687 (4 : Fin 5)) = (normalNode5906).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9654 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9687 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5899).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9687 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5899).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9687 (j : Fin 5)))
      1 720 1440 2 ![288, 144, 720, 288, 2] ![5, 10, 2, 5, 720] reductionProjection9687 ![reductionProjection9577, reductionProjection9680, reductionProjection2903, reductionProjection9686, reductionProjection9654]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9688 : Integer.Sparse (Fin 1613) := [(72, 48), (94, 5), (553, -144), (682, 48), (1251, 1), (1258, -144), (1269, -144)]

def reductionPivot9688 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -1, 1], ![0, 0, 3, -3], ![1, -1, -2, 2], ![1, -1, 1, -1]]

theorem reductionSound9688 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5903).moment H =
      Integer.Sparse.eval reductionProjection9688 (momentVector H) := by
  have heq : reductionPivot9688 = (fun u v => (normalNode5903).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5903).moment H = injectiveMoment H reductionPivot9688 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5903).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9688 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9688 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9688 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9621, oldProjection503, reductionProjection9659, oldProjection989] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9688 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1258).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9688 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5370 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5370 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9688 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1269).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9659 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9688 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5373 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection989 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9688 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5373 hH))).trans (oldProjectionSound989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5903).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9688 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5903).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9688 (j : Fin 4)))
      2 288 288 2 ![1, 1, 1, 144] ![288, 288, 288, 2] reductionProjection9688 ![reductionProjection9621, oldProjection503, reductionProjection9659, oldProjection989]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9689 : Integer.Sparse (Fin 1613) := [(418, -1), (553, -1), (1268, -1), (1269, -1)]

def reductionPivot9689 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, 0, 2, -2], ![1, -1, -3, 3], ![1, -1, 1, -1]]

theorem reductionSound9689 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5911).moment H =
      Integer.Sparse.eval reductionProjection9689 (momentVector H) := by
  have heq : reductionPivot9689 = (fun u v => (normalNode5911).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5911).moment H = injectiveMoment H reductionPivot9689 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5911).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9689 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9689 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9689 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection471, reductionProjection9659, oldProjection503, reductionProjection1115] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9689 (0 : Fin 4)) = canonicalInput12174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection471 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12174 hH))).trans (oldProjectionSound471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9689 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1269).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9659 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9689 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5370 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5370 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9689 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1268).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9689 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5911).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9689 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5911).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9689 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9689 ![oldProjection471, reductionProjection9659, oldProjection503, reductionProjection1115]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9690 : Integer.Sparse (Fin 1613) := [(0, 12), (94, 5), (418, 2160), (553, 2160), (682, -1440), (1209, -240), (1217, -720), (1221, -1440), (1251, -155), (1268, 2160), (1269, 1440), (1321, -240), (1389, -1440)]

def reductionPivot9690 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -3, 3], ![1, -1, 1, -1]]

theorem reductionSound9690 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5907).moment H =
      Integer.Sparse.eval reductionProjection9690 (momentVector H) := by
  have heq : reductionPivot9690 = (fun u v => (normalNode5907).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5907).moment H = injectiveMoment H reductionPivot9690 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5907).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9690 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9690 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 288, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9690 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2373, reductionProjection9689, reductionProjection9689, oldProjection2360, reductionProjection9672] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9690 (0 : Fin 5)) = canonicalInput12171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2373 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12171 hH))).trans (oldProjectionSound2373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9690 (1 : Fin 5)) = canonicalInput12057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9689 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12057 hH))).trans (reductionSound9689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9690 (2 : Fin 5)) = (normalNode5911).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9689 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9690 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2360⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2360 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9690 (4 : Fin 5)) = (normalNode5910).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9672 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9690 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5907).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9690 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5907).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9690 (j : Fin 5)))
      1 1440 1440 1 ![720, 2, 2, 288, 6] ![2, 720, 720, 5, 240] reductionProjection9690 ![oldProjection2373, reductionProjection9689, reductionProjection9689, oldProjection2360, reductionProjection9672]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9691 : Integer.Sparse (Fin 1613) := [(0, 4), (72, -96), (94, 1), (553, 432), (682, -144), (1050, -144), (1221, -432), (1250, 12), (1251, -35), (1389, -432)]

def reductionPivot9691 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, -1, 0, 0]]

theorem reductionSound9691 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5908).moment H =
      Integer.Sparse.eval reductionProjection9691 (momentVector H) := by
  have heq : reductionPivot9691 = (fun u v => (normalNode5908).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5908).moment H = injectiveMoment H reductionPivot9691 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5908).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9691 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9691 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9691 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1752, oldProjection2361, oldProjection2361, oldProjection1823, oldProjection2360] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9691 (0 : Fin 5)) = canonicalInput12172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12172 hH))).trans (oldProjectionSound1752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9691 (1 : Fin 5)) = canonicalInput12058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2361 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12058 hH))).trans (oldProjectionSound2361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9691 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2361⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2361 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9691 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5362 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5362 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9691 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2360⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2360 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9691 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5908).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9691 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5908).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9691 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 1440, 720, 288] ![2, 1, 1, 2, 5] reductionProjection9691 ![oldProjection1752, oldProjection2361, oldProjection2361, oldProjection1823, oldProjection2360]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9692 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 5), (869, 180), (1221, -120), (1251, -25), (1270, 120), (1388, -20), (1389, -160)]

def reductionPivot9692 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, -1, 1]]

theorem reductionSound9692 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * (normalNode5909).moment H =
      Integer.Sparse.eval reductionProjection9692 (momentVector H) := by
  have heq : reductionPivot9692 = (fun u v => (normalNode5909).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5909).moment H = injectiveMoment H reductionPivot9692 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5909).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9692 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9692 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 360, 360, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9692 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2014, oldProjection2362, oldProjection2362, oldProjection1823, oldProjection1823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9692 (0 : Fin 5)) = canonicalInput12173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2014 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12173 hH))).trans (oldProjectionSound2014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9692 (1 : Fin 5)) = canonicalInput12059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2362 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12059 hH))).trans (oldProjectionSound2362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9692 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2362⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2362 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9692 (3 : Fin 5)) = canonicalInput12054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12054 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9692 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5362 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9692 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5362 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5909).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9692 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5909).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9692 (j : Fin 5)))
      1 120 720 6 ![360, 360, 360, 720, 720] ![2, 2, 2, 1, 1] reductionProjection9692 ![oldProjection2014, oldProjection2362, oldProjection2362, oldProjection1823, oldProjection1823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9693 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 3), (46, 16), (94, 3), (701, 32), (703, 32), (704, 16), (1033, -48)]

def reductionPivot9693 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 3, -1], ![-1, -4, 5], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound9693 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5967).moment H =
      Integer.Sparse.eval reductionProjection9693 (momentVector H) := by
  have heq : reductionPivot9693 = (fun u v => (normalNode5967).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5967).moment H = injectiveMoment H reductionPivot9693 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5967).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9693 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9693 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 48, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9693 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection235, oldProjection190, reductionProjection621, reductionProjection6113] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9693 (0 : Fin 4)) = canonicalInput23781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23781 hH))).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9693 (1 : Fin 4)) = canonicalInput12288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection190 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12288 hH))).trans (oldProjectionSound190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9693 (2 : Fin 4)) = canonicalInput12286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12286 hH))).trans (reductionSound621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9693 (3 : Fin 4)) = canonicalInput12284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6113 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9693 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12284 hH))).trans (reductionSound6113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5967).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9693 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5967).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9693 (j : Fin 4)))
      2 96 96 2 ![24, 48, 1, 3] ![4, 2, 96, 32] reductionProjection9693 ![oldProjection235, oldProjection190, reductionProjection621, reductionProjection6113]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9694 : Integer.Sparse (Fin 1613) := [(679, -2), (1061, -1), (1278, -1)]

def reductionPivot9694 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 2, 0], ![-1, -4, 5], ![1, 1, -2], ![1, 1, -2]]

theorem reductionSound9694 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5914).moment H =
      Integer.Sparse.eval reductionProjection9694 (momentVector H) := by
  have heq : reductionPivot9694 = (fun u v => (normalNode5914).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5914).moment H = injectiveMoment H reductionPivot9694 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5914).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9694 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9694 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9694 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection234, oldProjection218, reductionProjection2513, reductionProjection2513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9694 (0 : Fin 4)) = canonicalInput23476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23476 hH))).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9694 (1 : Fin 4)) = canonicalInput12097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection218 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12097 hH))).trans (oldProjectionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9694 (2 : Fin 4)) = canonicalInput12089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12089 hH))).trans (reductionSound2513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9694 (3 : Fin 4)) = canonicalInput12087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9694 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12087 hH))).trans (reductionSound2513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5914).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9694 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5914).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9694 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9694 ![oldProjection234, oldProjection218, reductionProjection2513, reductionProjection2513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9695 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -6), (20, 1), (94, 1), (243, 8), (244, 16), (245, 8), (246, 16), (1031, -24)]

def reductionPivot9695 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 2, 0], ![-1, -4, 5], ![1, 0, -1], ![1, 2, -3]]

theorem reductionSound9695 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5913).moment H =
      Integer.Sparse.eval reductionProjection9695 (momentVector H) := by
  have heq : reductionPivot9695 = (fun u v => (normalNode5913).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5913).moment H = injectiveMoment H reductionPivot9695 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5913).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9695 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9695 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9695 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection233, oldProjection217, reductionProjection6206, reductionProjection1692] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9695 (0 : Fin 4)) = canonicalInput23475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23475 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9695 (1 : Fin 4)) = canonicalInput12096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12096 hH))).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9695 (2 : Fin 4)) = canonicalInput12088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6206 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12088 hH))).trans (reductionSound6206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9695 (3 : Fin 4)) = canonicalInput12085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1692 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9695 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12085 hH))).trans (reductionSound1692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5913).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9695 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5913).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9695 (j : Fin 4)))
      2 48 48 2 ![48, 48, 1, 3] ![1, 1, 48, 16] reductionProjection9695 ![oldProjection233, oldProjection217, reductionProjection6206, reductionProjection1692]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

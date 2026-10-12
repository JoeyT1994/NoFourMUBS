import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical041
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical227
import NoFourMUBs.Step2.SOS.Canonical229
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical300
import NoFourMUBs.Step2.SOS.Canonical301
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical306
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions076
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical259
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical260
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical262
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical79
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2464 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -10), (19, -120), (20, 10), (38, -240), (82, -120), (88, 120), (94, 35), (105, 40), (108, 40), (228, -120), (231, -360), (241, 320), (242, -240), (243, 360), (247, 200), (297, 360), (301, 720), (302, 720), (333, 360), (697, -240), (698, 120), (1057, -120), (1226, 80), (1251, 25)]

def reductionPivot2464 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound2464 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1312).moment H =
      Integer.Sparse.eval reductionProjection2464 (momentVector H) := by
  have heq : reductionPivot2464 = (fun u v => (normalNode1312).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1312).moment H = injectiveMoment H reductionPivot2464 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1312).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2464 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2464 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 18, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2464 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2459, reductionProjection2460, reductionProjection2461, reductionProjection2462, reductionProjection2463] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2464 (0 : Fin 5)) = canonicalInput6187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2459 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6187 hH))).trans (reductionSound2459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2464 (1 : Fin 5)) = canonicalInput2761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2460 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2761 hH))).trans (reductionSound2460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2464 (2 : Fin 5)) = (normalNode1328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2461 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2461 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2464 (3 : Fin 5)) = canonicalInput2666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2462 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2462 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2666 hH))).trans (reductionSound2462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2464 (4 : Fin 5)) = (normalNode1318).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2463 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2464 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2463 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1312).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2464 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1312).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2464 (j : Fin 5)))
      1 720 1440 2 ![288, 1440, 18, 144, 1440] ![5, 1, 80, 10, 1] reductionProjection2464 ![reductionProjection2459, reductionProjection2460, reductionProjection2461, reductionProjection2462, reductionProjection2463]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2465 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -5), (88, -32), (94, 12), (105, -16), (243, -80), (1226, -32), (1251, -3)]

def reductionPivot2465 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, 0, -3, 2]]

theorem reductionSound2465 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10839).moment H =
      Integer.Sparse.eval reductionProjection2465 (momentVector H) := by
  have heq : reductionPivot2465 = (fun u v => (normalNode10839).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10839).moment H = injectiveMoment H reductionPivot2465 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10839).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot2465 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2465 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2465 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection898, oldProjection898, oldProjection905, oldProjection145] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2465 (0 : Fin 4)) = canonicalInput18202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18202 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2465 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8350 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8350 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2465 (2 : Fin 4)) = canonicalInput25584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection905 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25584 hH))).trans (oldProjectionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2465 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8397 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection145 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2465 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8397 hH))).trans (oldProjectionSound145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10839).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2465 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10839).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2465 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 24] ![2, 2, 2, 12] reductionProjection2465 ![oldProjection898, oldProjection898, oldProjection905, oldProjection145]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2466 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -180), (20, 40), (82, -720), (88, 320), (90, 320), (94, 30), (105, 80), (241, 320), (243, 1200), (297, 720), (303, 1440), (686, -960), (692, -240), (698, 880), (700, 160), (704, 320), (1226, 640), (1251, -15)]

def reductionPivot2466 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound2466 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1313).moment H =
      Integer.Sparse.eval reductionProjection2466 (momentVector H) := by
  have heq : reductionPivot2466 = (fun u v => (normalNode1313).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1313).moment H = injectiveMoment H reductionPivot2466 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1313).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2466 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2466 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2466 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2465, oldProjection2403, reductionProjection2212, reductionProjection2439, reductionProjection2439] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2466 (0 : Fin 5)) = canonicalInput6188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2465 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6188 hH))).trans (reductionSound2465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2466 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1620 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2403 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1620 hH))).trans (oldProjectionSound2403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2466 (2 : Fin 5)) = (normalNode1329).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2212 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2466 (3 : Fin 5)) = canonicalInput2667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2439 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2439 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2667 hH))).trans (reductionSound2439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2466 (4 : Fin 5)) = (normalNode1319).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2439 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2466 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2439 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1313).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2466 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1313).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2466 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 18, 1440, 1440] ![5, 1, 80, 1, 1] reductionProjection2466 ![reductionProjection2465, oldProjection2403, reductionProjection2212, reductionProjection2439, reductionProjection2439]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2467 : Integer.Sparse (Fin 1613) := [(19, 2), (82, 24), (88, -16), (94, -1), (105, -8), (243, -40), (297, -72), (698, -16), (1251, 1)]

def reductionPivot2467 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, 0, 0, -2]]

theorem reductionSound2467 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1314).moment H =
      Integer.Sparse.eval reductionProjection2467 (momentVector H) := by
  have heq : reductionPivot2467 = (fun u v => (normalNode1314).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1314).moment H = injectiveMoment H reductionPivot2467 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1314).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2467 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2467 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2467 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1297, oldProjection775, oldProjection455, oldProjection1090] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2467 (0 : Fin 4)) = canonicalInput6189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1297 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1297 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6189 hH))).trans (oldProjectionSound1297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2467 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1621 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection775 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1621 hH))).trans (oldProjectionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2467 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node455⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection455 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2467 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1512 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1090 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2467 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1090 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1512 hH))).trans (oldProjectionSound1090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1314).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2467 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1314).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2467 (j : Fin 4)))
      2 144 144 2 ![9, 72, 1, 9] ![16, 2, 144, 16] reductionProjection2467 ![oldProjection1297, oldProjection775, oldProjection455, oldProjection1090]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2468 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -180), (20, 20), (42, 160), (82, -720), (88, 320), (90, 320), (94, 50), (228, -480), (241, 480), (243, 880), (247, 160), (298, 720), (302, 720), (303, 720), (686, -480), (698, 720), (700, 480), (701, 80), (704, 400), (1223, -240), (1225, 80), (1226, 480), (1227, 80), (1251, 45)]

def reductionPivot2468 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound2468 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1315).moment H =
      Integer.Sparse.eval reductionProjection2468 (momentVector H) := by
  have heq : reductionPivot2468 = (fun u v => (normalNode1315).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1315).moment H = injectiveMoment H reductionPivot2468 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1315).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2468 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2468 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2468 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2751, oldProjection2402, reductionProjection2443, reductionProjection2275, reductionProjection2271] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2468 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2934 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2751 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2934 hH))).trans (oldProjectionSound2751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2468 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1626 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2402 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1626 hH))).trans (oldProjectionSound2402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2468 (2 : Fin 5)) = (normalNode1330).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2443 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2468 (3 : Fin 5)) = canonicalInput2668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2275 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2668 hH))).trans (reductionSound2275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2468 (4 : Fin 5)) = (normalNode1325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2271 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2468 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1315).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2468 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1315).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2468 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 1440, 1440] ![1, 5, 80, 1, 1] reductionProjection2468 ![oldProjection2751, oldProjection2402, reductionProjection2443, reductionProjection2275, reductionProjection2271]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2469 : Integer.Sparse (Fin 1613) := [(19, 24), (20, -1), (88, -16), (94, -4), (231, 48), (238, 48), (241, -64), (243, -64), (244, -16), (247, -48), (700, -16), (1251, -11)]

def reductionPivot2469 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 0, -2, 1]]

theorem reductionSound2469 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9862).moment H =
      Integer.Sparse.eval reductionProjection2469 (momentVector H) := by
  have heq : reductionPivot2469 = (fun u v => (normalNode9862).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9862).moment H = injectiveMoment H reductionPivot2469 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9862).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2469 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2469 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2469 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1243, oldProjection1174, oldProjection1194, oldProjection1004] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2469 (0 : Fin 4)) = canonicalInput22628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1243 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22628 hH))).trans (oldProjectionSound1243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2469 (1 : Fin 4)) = canonicalInput19610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19610 hH))).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2469 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1194⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1194 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2469 (3 : Fin 4)) = canonicalInput19556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1004 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2469 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1004 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19556 hH))).trans (oldProjectionSound1004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9862).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2469 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9862).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2469 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 144] ![2, 2, 32, 2] reductionProjection2469 ![oldProjection1243, oldProjection1174, oldProjection1194, oldProjection1004]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2470 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (38, 240), (94, -55), (238, 240), (241, -320), (243, -80), (247, -320), (698, -160), (700, -80), (1059, -80), (1251, -15)]

def reductionPivot2470 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound2470 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6500).moment H =
      Integer.Sparse.eval reductionProjection2470 (momentVector H) := by
  have heq : reductionPivot2470 = (fun u v => (normalNode6500).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6500).moment H = injectiveMoment H reductionPivot2470 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6500).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2470 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2470 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2470 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection914, oldProjection786, oldProjection773, oldProjection771] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2470 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2470 (1 : Fin 4)) = canonicalInput13103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13103 hH))).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2470 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node773⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection773 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2470 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node771⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2470 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6500).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2470 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6500).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2470 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 9, 720] ![2, 4, 160, 2] reductionProjection2470 ![oldProjection914, oldProjection786, oldProjection773, oldProjection771]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2471 : Integer.Sparse (Fin 1613) := [(82, 3), (88, -2), (228, 6), (241, -3), (243, -2), (299, -9), (698, -3), (1226, -2)]

def reductionPivot2471 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -1, 0]]

theorem reductionSound2471 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1332).moment H =
      Integer.Sparse.eval reductionProjection2471 (momentVector H) := by
  have heq : reductionPivot2471 = (fun u v => (normalNode1332).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1332).moment H = injectiveMoment H reductionPivot2471 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1332).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2471 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2471 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2471 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection903, oldProjection1234, oldProjection988, oldProjection457] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2471 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node903⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection903 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2471 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1736 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1736 hH))).trans (oldProjectionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2471 (2 : Fin 4)) = canonicalInput2676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection988 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2676 hH))).trans (oldProjectionSound988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2471 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node457⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection457 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2471 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1332).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2471 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1332).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2471 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection2471 ![oldProjection903, oldProjection1234, oldProjection988, oldProjection457]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2472 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -2), (231, 48), (243, -16), (296, -144), (302, -144), (327, -144), (1251, -1), (1323, 48)]

def reductionPivot2472 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound2472 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1327).moment H =
      Integer.Sparse.eval reductionProjection2472 (momentVector H) := by
  have heq : reductionPivot2472 = (fun u v => (normalNode1327).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1327).moment H = injectiveMoment H reductionPivot2472 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1327).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2472 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2472 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2472 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection900, oldProjection465, oldProjection458, reductionProjection814] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2472 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node900⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection900 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2472 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1733 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection465 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1733 hH))).trans (oldProjectionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2472 (2 : Fin 4)) = canonicalInput2673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2673 hH))).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2472 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code296).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection814 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2472 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1327).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2472 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1327).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2472 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection2472 ![oldProjection900, oldProjection465, oldProjection458, reductionProjection814]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2473 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -280), (20, 15), (38, -240), (82, -240), (88, 240), (94, 95), (228, -480), (231, -720), (238, -480), (241, 880), (243, 720), (244, 80), (247, 560), (296, 1440), (299, 720), (302, 1440), (327, 1440), (698, 400), (700, 160), (1059, 80), (1226, 160), (1251, 80), (1323, -480)]

def reductionPivot2473 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound2473 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1317).moment H =
      Integer.Sparse.eval reductionProjection2473 (momentVector H) := by
  have heq : reductionPivot2473 = (fun u v => (normalNode1317).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1317).moment H = injectiveMoment H reductionPivot2473 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1317).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2473 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2473 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2473 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2469, reductionProjection2470, reductionProjection2471, reductionProjection2472, reductionProjection2472] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2473 (0 : Fin 5)) = canonicalInput6193.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2469 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2469 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6193 hH))).trans (reductionSound2469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2473 (1 : Fin 5)) = canonicalInput2763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2470 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2763 hH))).trans (reductionSound2470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2473 (2 : Fin 5)) = (normalNode1332).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2471 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2473 (3 : Fin 5)) = canonicalInput2670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2472 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2670 hH))).trans (reductionSound2472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2473 (4 : Fin 5)) = (normalNode1327).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2472 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2473 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1317).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2473 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1317).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2473 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 18, 288, 288] ![5, 1, 80, 5, 5] reductionProjection2473 ![reductionProjection2469, reductionProjection2470, reductionProjection2471, reductionProjection2472, reductionProjection2472]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2474 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (40, 48), (42, -16), (94, 1), (242, 48), (243, -16), (244, -16), (246, -16), (700, -16), (701, -32), (703, -16), (704, -16), (1251, -1)]

def reductionPivot2474 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, -1, 4], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound2474 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6504).moment H =
      Integer.Sparse.eval reductionProjection2474 (momentVector H) := by
  have heq : reductionPivot2474 = (fun u v => (normalNode6504).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6504).moment H = injectiveMoment H reductionPivot2474 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6504).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2474 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2474 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2474 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection977, reductionProjection762, oldProjection781, oldProjection778] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2474 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection977 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2474 (1 : Fin 4)) = canonicalInput13107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection762 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13107 hH))).trans (reductionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2474 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node781⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection781 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2474 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node778⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2474 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6504).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2474 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6504).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2474 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 72] ![2, 2, 32, 4] reductionProjection2474 ![oldProjection977, reductionProjection762, oldProjection781, oldProjection778]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2475 : Integer.Sparse (Fin 1613) := [(335, 1)]

theorem reductionSound2475 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code335).moment H =
      Integer.Sparse.eval reductionProjection2475 (momentVector H) := by
  have hc : coordinates (335 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code335) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2475, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2476 : Integer.Sparse (Fin 1613) := [(76, 3), (243, -1), (299, -9), (300, -9), (335, -9), (698, -1), (1058, 3), (1226, -1)]

def reductionPivot2476 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound2476 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1331).moment H =
      Integer.Sparse.eval reductionProjection2476 (momentVector H) := by
  have heq : reductionPivot2476 = (fun u v => (normalNode1331).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1331).moment H = injectiveMoment H reductionPivot2476 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1331).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot2476 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2476 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2476 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection953, reductionProjection2475, reductionProjection2434, oldProjection457] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2476 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2476 (1 : Fin 4)) = canonicalInput2863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2863 hH))).trans (reductionSound2475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2476 (2 : Fin 4)) = canonicalInput2677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2434 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2434 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2677 hH))).trans (reductionSound2434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2476 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node457⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection457 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2476 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1331).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2476 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1331).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2476 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection2476 ![oldProjection953, reductionProjection2475, reductionProjection2434, oldProjection457]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2477 : Integer.Sparse (Fin 1613) := [(40, 12), (76, 12), (94, -1), (242, 12), (300, -36), (302, -36), (697, 12), (700, -8), (704, -8), (1251, -1)]

def reductionPivot2477 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound2477 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1324).moment H =
      Integer.Sparse.eval reductionProjection2477 (momentVector H) := by
  have heq : reductionPivot2477 = (fun u v => (normalNode1324).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1324).moment H = injectiveMoment H reductionPivot2477 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1324).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2477 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2477 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2477 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1011, oldProjection778, oldProjection458, reductionProjection2434] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2477 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3102 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3102 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2477 (1 : Fin 4)) = canonicalInput2776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2776 hH))).trans (oldProjectionSound778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2477 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2477 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code300).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2434 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2477 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2434 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1324).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2477 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1324).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2477 (j : Fin 4)))
      2 72 72 2 ![72, 72, 1, 1] ![1, 1, 72, 72] reductionProjection2477 ![oldProjection1011, oldProjection778, oldProjection458, reductionProjection2434]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2478 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 15), (40, -480), (42, 160), (76, -720), (82, -240), (90, 240), (94, 60), (242, -480), (243, 240), (244, 80), (246, 80), (299, 720), (300, 1440), (302, 1440), (335, 720), (686, -240), (697, -480), (698, 640), (700, 640), (701, 240), (703, 80), (704, 400), (1058, -240), (1059, 80), (1226, 160), (1251, 45)]

def reductionPivot2478 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound2478 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1321).moment H =
      Integer.Sparse.eval reductionProjection2478 (momentVector H) := by
  have heq : reductionPivot2478 = (fun u v => (normalNode1321).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1321).moment H = injectiveMoment H reductionPivot2478 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1321).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2478 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2478 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2478 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2753, reductionProjection2474, reductionProjection2476, reductionProjection2275, reductionProjection2477] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2478 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3093 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2753 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3093 hH))).trans (oldProjectionSound2753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2478 (1 : Fin 5)) = canonicalInput2772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2474 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2474 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2772 hH))).trans (reductionSound2474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2478 (2 : Fin 5)) = (normalNode1331).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2476 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2478 (3 : Fin 5)) = canonicalInput2668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2275 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2668 hH))).trans (reductionSound2275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2478 (4 : Fin 5)) = (normalNode1324).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2477 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2478 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1321).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2478 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1321).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2478 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 1440, 72] ![1, 5, 80, 1, 20] reductionProjection2478 ![oldProjection2753, reductionProjection2474, reductionProjection2476, reductionProjection2275, reductionProjection2477]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2479 : Integer.Sparse (Fin 1613) := [(19, 10), (20, -1), (42, -16), (243, -32), (244, -8), (701, -8), (704, -16), (1251, -1)]

def reductionPivot2479 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound2479 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6506).moment H =
      Integer.Sparse.eval reductionProjection2479 (momentVector H) := by
  have heq : reductionPivot2479 = (fun u v => (normalNode6506).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6506).moment H = injectiveMoment H reductionPivot2479 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6506).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2479 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2479 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2479 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection919, oldProjection1171, oldProjection781, oldProjection779] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2479 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2479 (1 : Fin 4)) = canonicalInput13105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13105 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2479 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node781⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection781 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2479 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node779⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection779 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2479 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6506).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2479 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6506).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2479 (j : Fin 4)))
      2 144 144 2 ![144, 144, 9, 144] ![1, 1, 16, 1] reductionProjection2479 ![oldProjection919, oldProjection1171, oldProjection781, oldProjection779]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2480 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -140), (20, 20), (42, 320), (82, -720), (88, 320), (90, 320), (94, 5), (228, -960), (241, 240), (243, 960), (244, 80), (299, 720), (303, 1440), (698, 960), (700, 320), (701, 80), (704, 320), (1059, 80), (1226, 640)]

def reductionPivot2480 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound2480 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1322).moment H =
      Integer.Sparse.eval reductionProjection2480 (momentVector H) := by
  have heq : reductionPivot2480 = (fun u v => (normalNode1322).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1322).moment H = injectiveMoment H reductionPivot2480 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1322).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2480 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2480 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2480 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2699, reductionProjection2479, reductionProjection2471, reductionProjection2271, reductionProjection2271] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2480 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3094 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2699 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3094 hH))).trans (oldProjectionSound2699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2480 (1 : Fin 5)) = canonicalInput2773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2479 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2773 hH))).trans (reductionSound2479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2480 (2 : Fin 5)) = (normalNode1332).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2471 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2480 (3 : Fin 5)) = canonicalInput2669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2271 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2669 hH))).trans (reductionSound2271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2480 (4 : Fin 5)) = (normalNode1325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2271 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2480 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1322).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2480 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1322).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2480 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 18, 1440, 1440] ![5, 10, 80, 1, 1] reductionProjection2480 ![oldProjection2699, reductionProjection2479, reductionProjection2471, reductionProjection2271, reductionProjection2271]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2481 : Integer.Sparse (Fin 1613) := [(42, -2), (82, 3), (90, -2), (243, -2), (244, -1), (299, -9), (698, -3), (701, -1), (1059, -1)]

def reductionPivot2481 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]

theorem reductionSound2481 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1323).moment H =
      Integer.Sparse.eval reductionProjection2481 (momentVector H) := by
  have heq : reductionPivot2481 = (fun u v => (normalNode1323).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1323).moment H = injectiveMoment H reductionPivot2481 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1323).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2481 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2481 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2481 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1193, oldProjection781, oldProjection457, oldProjection777] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2481 (0 : Fin 4)) = canonicalInput6595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1193 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6595 hH))).trans (oldProjectionSound1193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2481 (1 : Fin 4)) = canonicalInput2775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection781 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2775 hH))).trans (oldProjectionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2481 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node457⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection457 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2481 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1513 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection777 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2481 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1513 hH))).trans (oldProjectionSound777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1323).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2481 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1323).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2481 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection2481 ![oldProjection1193, oldProjection781, oldProjection457, oldProjection777]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2482 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, 4), (20, -3), (244, 16), (246, 16)]

def reductionPivot2482 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -2, 4], ![0, 0, 4, -4], ![0, 1, -2, 1]]

theorem reductionSound2482 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7477).moment H =
      Integer.Sparse.eval reductionProjection2482 (momentVector H) := by
  have heq : reductionPivot2482 = (fun u v => (normalNode7477).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7477).moment H = injectiveMoment H reductionPivot2482 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7477).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot2482 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2482 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2482 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection59, oldProjection142, oldProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2482 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8302 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2482 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection59 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2482 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection59 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8302 hH))).trans (oldProjectionSound59 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2482 (1 : Fin 3)) = canonicalInput14658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2482 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection142 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2482 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection142 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14658 hH))).trans (oldProjectionSound142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2482 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6095 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2482 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2482 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6095 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7477).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2482 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7477).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2482 (j : Fin 3)))
      3 144 144 3 ![16, 48, 24] ![9, 3, 6] reductionProjection2482 ![oldProjection59, oldProjection142, oldProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2483 : Integer.Sparse (Fin 1613) := [(91, 1), (106, 1), (243, -1), (244, 1), (1225, 1)]

def reductionPivot2483 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -2, 4], ![0, -1, 4, -3], ![0, 2, -2, 0]]

theorem reductionSound2483 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7435).moment H =
      Integer.Sparse.eval reductionProjection2483 (momentVector H) := by
  have heq : reductionPivot2483 = (fun u v => (normalNode7435).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7435).moment H = injectiveMoment H reductionPivot2483 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7435).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot2483 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2483 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2483 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection32, reductionProjection1742, oldProjection137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2483 (0 : Fin 3)) = canonicalInput24599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2483 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection32 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2483 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection32 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24599 hH))).trans (oldProjectionSound32 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2483 (1 : Fin 3)) = canonicalInput14657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2483 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1742 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2483 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14657 hH))).trans (reductionSound1742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2483 (2 : Fin 3)) = canonicalInput14535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2483 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2483 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14535 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7435).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2483 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7435).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2483 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection2483 ![oldProjection32, reductionProjection1742, oldProjection137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2484 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (91, 16), (243, 32), (244, 16), (1225, 16), (1251, 1)]

def reductionPivot2484 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![0, -1, 4, -3], ![1, 1, -2, 0]]

theorem reductionSound2484 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7434).moment H =
      Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
  have heq : reductionPivot2484 = (fun u v => (normalNode7434).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7434).moment H = injectiveMoment H reductionPivot2484 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7434).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot2484 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2484 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 24, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2484 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection155, oldProjection157, oldProjection137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2484 (0 : Fin 3)) = canonicalInput19612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2484 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2484 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19612 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2484 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6095 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2484 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2484 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6095 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2484 (2 : Fin 3)) = canonicalInput14535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2484 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2484 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14535 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7434).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2484 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7434).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2484 (j : Fin 3)))
      3 144 144 3 ![48, 24, 3] ![3, 6, 48] reductionProjection2484 ![oldProjection155, oldProjection157, oldProjection137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2485 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 8), (20, 5), (91, -32), (94, -2), (106, -16), (243, -32), (244, -48), (246, -16), (1225, -32)]

def reductionPivot2485 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -3, 4], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound2485 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9656).moment H =
      Integer.Sparse.eval reductionProjection2485 (momentVector H) := by
  have heq : reductionPivot2485 = (fun u v => (normalNode9656).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9656).moment H = injectiveMoment H reductionPivot2485 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9656).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2485 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2485 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2485 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2482, oldProjection919, reductionProjection2483, reductionProjection2484] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2485 (0 : Fin 4)) = canonicalInput22489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2482 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22489 hH))).trans (reductionSound2482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2485 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7002 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7002 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2485 (2 : Fin 4)) = canonicalInput19257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2483 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19257 hH))).trans (reductionSound2483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2485 (3 : Fin 4)) = canonicalInput19256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2484 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2485 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19256 hH))).trans (reductionSound2484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9656).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2485 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9656).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2485 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 144] ![2, 2, 32, 2] reductionProjection2485 ![reductionProjection2482, oldProjection919, reductionProjection2483, reductionProjection2484]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2486 : Integer.Sparse (Fin 1613) := [(6, -3), (42, 1), (43, -3), (243, 1), (704, 1)]

def reductionPivot2486 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 3, 0], ![0, 1, -4, 3], ![2, 1, 1, -4]]

theorem reductionSound2486 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode8899).moment H =
      Integer.Sparse.eval reductionProjection2486 (momentVector H) := by
  have heq : reductionPivot2486 = (fun u v => (normalNode8899).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8899).moment H = injectiveMoment H reductionPivot2486 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8899).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode8899).entries)).symm
  have hshape : reductionPivot2486 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2486 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2486 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9, reductionProjection258, oldProjection87] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2486 (0 : Fin 3)) = canonicalInput2247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2486 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2486 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2247 hH))).trans (reductionSound9 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2486 (1 : Fin 3)) = canonicalInput14157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2486 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2486 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14157 hH))).trans (reductionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2486 (2 : Fin 3)) = canonicalInput14168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2486 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2486 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14168 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8899).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2486 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8899).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2486 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection2486 ![reductionProjection9, reductionProjection258, oldProjection87]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2487 : Integer.Sparse (Fin 1613) := [(304, 1)]

theorem reductionSound2487 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code304).moment H =
      Integer.Sparse.eval reductionProjection2487 (momentVector H) := by
  have hc : coordinates (304 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code304) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2487, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2488 : Integer.Sparse (Fin 1613) := [(6, 3), (42, -1), (43, 3), (91, -1), (106, -1), (243, -1), (244, -1), (304, -9), (686, 3), (692, 3), (698, -1), (700, -1), (704, -1), (1225, -1)]

def reductionPivot2488 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, 0, 0, -1]]

theorem reductionSound2488 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1338).moment H =
      Integer.Sparse.eval reductionProjection2488 (momentVector H) := by
  have heq : reductionPivot2488 = (fun u v => (normalNode1338).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1338).moment H = injectiveMoment H reductionPivot2488 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1338).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2488 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2488 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2488 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2483, oldProjection1166, reductionProjection2486, reductionProjection2487] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2488 (0 : Fin 4)) = (normalNode7435).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2483 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2488 (1 : Fin 4)) = canonicalInput2861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1166 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2861 hH))).trans (oldProjectionSound1166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2488 (2 : Fin 4)) = canonicalInput2683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2486 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2683 hH))).trans (reductionSound2486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2488 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code304).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2488 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1338).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2488 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1338).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2488 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection2488 ![reductionProjection2483, oldProjection1166, reductionProjection2486, reductionProjection2487]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2489 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (91, 16), (94, -1), (243, 32), (244, 32), (246, 16), (1251, 1)]

def reductionPivot2489 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, 0, 2], ![0, 2, -4, 2], ![1, 0, 3, -4]]

theorem reductionSound2489 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8983).moment H =
      Integer.Sparse.eval reductionProjection2489 (momentVector H) := by
  have heq : reductionPivot2489 = (fun u v => (normalNode8983).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8983).moment H = injectiveMoment H reductionPivot2489 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8983).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot2489 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2489 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2489 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection138, oldProjection155, oldProjection156] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2489 (0 : Fin 3)) = canonicalInput13929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2489 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection138 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2489 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13929 hH))).trans (oldProjectionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2489 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6525 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2489 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2489 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6525 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2489 (2 : Fin 3)) = canonicalInput17380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2489 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection156 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2489 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17380 hH))).trans (oldProjectionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8983).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2489 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8983).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2489 (j : Fin 3)))
      3 144 144 3 ![3, 48, 48] ![48, 3, 3] reductionProjection2489 ![oldProjection138, oldProjection155, oldProjection156]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2490 : Integer.Sparse (Fin 1613) := [(306, 1)]

theorem reductionSound2490 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code306).moment H =
      Integer.Sparse.eval reductionProjection2490 (momentVector H) := by
  have hc : coordinates (306 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code306) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2490, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2491 : Integer.Sparse (Fin 1613) := [(6, 48), (19, 12), (20, -3), (42, -32), (43, 48), (91, -16), (94, 1), (243, -64), (244, -32), (246, -16), (306, -144), (700, -32), (701, -16), (704, -32), (1251, -4)]

def reductionPivot2491 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound2491 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1336).moment H =
      Integer.Sparse.eval reductionProjection2491 (momentVector H) := by
  have heq : reductionPivot2491 = (fun u v => (normalNode1336).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1336).moment H = injectiveMoment H reductionPivot2491 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1336).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2491 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2491 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2491 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2489, oldProjection780, reductionProjection2490, reductionProjection2486] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2491 (0 : Fin 4)) = canonicalInput6208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2489 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6208 hH))).trans (reductionSound2489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2491 (1 : Fin 4)) = canonicalInput2778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2778 hH))).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2491 (2 : Fin 4)) = canonicalInput2682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2682 hH))).trans (reductionSound2490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2491 (3 : Fin 4)) = canonicalInput2681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2486 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2491 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2681 hH))).trans (reductionSound2486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1336).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2491 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1336).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2491 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 9] ![2, 2, 288, 32] reductionProjection2491 ![reductionProjection2489, oldProjection780, reductionProjection2490, reductionProjection2486]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2492 : Integer.Sparse (Fin 1613) := [(6, -3), (91, 1), (243, 1), (686, -3), (1225, 1)]

def reductionPivot2492 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![-1, 4, -1, -2], ![4, -3, -1, 0]]

theorem reductionSound2492 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6465).moment H =
      Integer.Sparse.eval reductionProjection2492 (momentVector H) := by
  have heq : reductionPivot2492 = (fun u v => (normalNode6465).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6465).moment H = injectiveMoment H reductionPivot2492 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6465).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6465).entries)).symm
  have hshape : reductionPivot2492 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2492 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2492 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9, oldProjection137, oldProjection161] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2492 (0 : Fin 3)) = canonicalInput323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2492 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2492 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound323 hH))).trans (reductionSound9 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2492 (1 : Fin 3)) = canonicalInput5498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2492 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2492 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5498 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2492 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2531 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2492 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2492 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2531 hH))).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6465).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2492 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6465).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2492 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection2492 ![reductionProjection9, oldProjection137, oldProjection161]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2493 : Integer.Sparse (Fin 1613) := [(6, 48), (19, 12), (42, -16), (91, -32), (94, 3), (243, -80), (244, -16), (306, -144), (686, 48), (700, -16), (704, -16), (1225, -32), (1251, -5)]

def reductionPivot2493 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound2493 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1335).moment H =
      Integer.Sparse.eval reductionProjection2493 (momentVector H) := by
  have heq : reductionPivot2493 = (fun u v => (normalNode1335).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1335).moment H = injectiveMoment H reductionPivot2493 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1335).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2493 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2493 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2493 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2484, oldProjection779, reductionProjection2490, reductionProjection2492] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2493 (0 : Fin 4)) = canonicalInput6207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2484 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6207 hH))).trans (reductionSound2484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2493 (1 : Fin 4)) = canonicalInput2777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection779 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2777 hH))).trans (oldProjectionSound779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2493 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code306).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2493 (3 : Fin 4)) = canonicalInput2680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2492 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2493 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2680 hH))).trans (reductionSound2492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1335).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2493 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1335).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2493 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 9] ![2, 2, 288, 32] reductionProjection2493 ![reductionProjection2484, oldProjection779, reductionProjection2490, reductionProjection2492]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2494 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (4, 5), (6, -720), (19, -180), (20, -5), (42, 480), (43, -480), (91, 480), (94, 20), (106, 160), (243, 1040), (244, 560), (246, 160), (304, 720), (306, 1440), (686, -480), (692, -240), (698, 160), (700, 560), (701, 160), (704, 560), (1225, 400), (1251, 75)]

def reductionPivot2494 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound2494 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1333).moment H =
      Integer.Sparse.eval reductionProjection2494 (momentVector H) := by
  have heq : reductionPivot2494 = (fun u v => (normalNode1333).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1333).moment H = injectiveMoment H reductionPivot2494 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1333).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2494 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2494 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2494 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2485, reductionProjection850, reductionProjection2488, reductionProjection2491, reductionProjection2493] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2494 (0 : Fin 5)) = canonicalInput6203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2485 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6203 hH))).trans (reductionSound2485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2494 (1 : Fin 5)) = canonicalInput2770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection850 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2770 hH))).trans (reductionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2494 (2 : Fin 5)) = (normalNode1338).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2488 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2494 (3 : Fin 5)) = canonicalInput2678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2491 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2678 hH))).trans (reductionSound2491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2494 (4 : Fin 5)) = (normalNode1335).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2493 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2494 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1333).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2494 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1333).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2494 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 18, 288, 288] ![5, 1, 80, 5, 5] reductionProjection2494 ![reductionProjection2485, reductionProjection850, reductionProjection2488, reductionProjection2491, reductionProjection2493]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2495 : Integer.Sparse (Fin 1613) := [(20, 5), (94, -10), (1225, 16), (1251, 1)]

def reductionPivot2495 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -3, 4], ![0, -1, 4, -3], ![1, 0, -1, 0]]

theorem reductionSound2495 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9727).moment H =
      Integer.Sparse.eval reductionProjection2495 (momentVector H) := by
  have heq : reductionPivot2495 = (fun u v => (normalNode9727).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9727).moment H = injectiveMoment H reductionPivot2495 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9727).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot2495 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2495 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 16, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2495 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection255, oldProjection54, oldProjection249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2495 (0 : Fin 3)) = canonicalInput22551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2495 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection255 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2495 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22551 hH))).trans (oldProjectionSound255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2495 (1 : Fin 3)) = canonicalInput19320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2495 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2495 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19320 hH))).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2495 (2 : Fin 3)) = canonicalInput19293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2495 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2495 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19293 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9727).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2495 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9727).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2495 (j : Fin 3)))
      3 144 144 3 ![48, 16, 24] ![3, 9, 6] reductionProjection2495 ![oldProjection255, oldProjection54, oldProjection249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

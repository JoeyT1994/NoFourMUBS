import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical306
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical385
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical132
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical226
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical92
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6528 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (88, -16), (94, 1), (105, -32), (241, -16), (243, -32), (698, -32), (732, -144), (1047, 48), (1226, -16), (1251, 2)]

def reductionPivot6528 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, -1, 0, -1]]

theorem reductionSound6528 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3254).moment H =
      Integer.Sparse.eval reductionProjection6528 (momentVector H) := by
  have heq : reductionPivot6528 = (fun u v => (normalNode3254).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3254).moment H = injectiveMoment H reductionPivot6528 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3254).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6528 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6528 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6528 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2624, oldProjection775, oldProjection581, oldProjection903] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6528 (0 : Fin 4)) = canonicalInput9670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2624 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2624 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9670 hH))).trans (reductionSound2624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6528 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2979 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection775 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2979 hH))).trans (oldProjectionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6528 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection581 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6528 (3 : Fin 4)) = canonicalInput6192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection903 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6528 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6192 hH))).trans (oldProjectionSound903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3254).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6528 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3254).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6528 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 9] ![2, 4, 288, 32] reductionProjection6528 ![reductionProjection2624, oldProjection775, oldProjection581, oldProjection903]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6529 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -140), (20, 5), (88, 80), (94, 85), (104, 160), (105, 160), (127, 1440), (228, -240), (241, 640), (243, 640), (247, 160), (309, 720), (426, 720), (694, -240), (698, 960), (704, 80), (729, 720), (732, 720), (1047, -240), (1055, -480), (1226, 160), (1227, 80), (1251, -110)]

def reductionPivot6529 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1]]

theorem reductionSound6529 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3232).moment H =
      Integer.Sparse.eval reductionProjection6529 (momentVector H) := by
  have heq : reductionPivot6529 = (fun u v => (normalNode3232).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3232).moment H = injectiveMoment H reductionPivot6529 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3232).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6529 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6529 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6529 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3040, reductionProjection6528, oldProjection1461, oldProjection1910, reductionProjection2303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6529 (0 : Fin 5)) = canonicalInput6575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6575 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6529 (1 : Fin 5)) = (normalNode3254).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6528 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6528 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6529 (2 : Fin 5)) = canonicalInput6167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1461 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1461 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6167 hH))).trans (oldProjectionSound1461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6529 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1910⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1910 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6529 (4 : Fin 5)) = (normalNode3240).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2303 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6529 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3232).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6529 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3232).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6529 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 144, 1440, 1440] ![5, 5, 10, 1, 1] reductionProjection6529 ![reductionProjection3040, reductionProjection6528, oldProjection1461, oldProjection1910, reductionProjection2303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6530 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -64), (20, 3), (38, -48), (81, -48), (88, 48), (94, 29), (228, -192), (231, -48), (241, 192), (243, 160), (247, 112), (327, 144), (548, 144), (549, 144), (697, -48), (698, 208), (704, 32), (1226, 112), (1227, 64), (1251, -1), (1323, -48), (1389, -48)]

def reductionPivot6530 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound6530 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3233).moment H =
      Integer.Sparse.eval reductionProjection6530 (momentVector H) := by
  have heq : reductionPivot6530 = (fun u v => (normalNode3233).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3233).moment H = injectiveMoment H reductionPivot6530 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3233).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6530 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6530 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6530 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1690, oldProjection1916, oldProjection1912, oldProjection1911, oldProjection1468] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6530 (0 : Fin 5)) = canonicalInput6579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6579 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6530 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1916⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1916 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6530 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1912⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1912 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1912 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6530 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1911⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1911 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6530 (4 : Fin 5)) = canonicalInput6168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1468 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6530 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6168 hH))).trans (oldProjectionSound1468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3233).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6530 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3233).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6530 (j : Fin 5)))
      1 288 1440 5 ![288, 288, 1440, 1440, 1440] ![5, 5, 1, 1, 1] reductionProjection6530 ![oldProjection1690, oldProjection1916, oldProjection1912, oldProjection1911, oldProjection1468]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6531 : Integer.Sparse (Fin 1613) := [(728, -1), (729, -1), (731, -1), (775, -1)]

def reductionPivot6531 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound6531 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3234).moment H =
      Integer.Sparse.eval reductionProjection6531 (momentVector H) := by
  have heq : reductionPivot6531 = (fun u v => (normalNode3234).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3234).moment H = injectiveMoment H reductionPivot6531 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3234).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6531 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6531 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6531 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection588, reductionProjection6464, oldProjection579, reductionProjection6459] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6531 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6531 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code731).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6531 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection579 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6531 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code728).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6531 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3234).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6531 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3234).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6531 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6531 ![oldProjection588, reductionProjection6464, oldProjection579, reductionProjection6459]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6532 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -120), (20, 5), (38, -240), (81, -240), (88, 160), (94, 55), (127, 720), (228, -480), (231, -240), (238, -240), (241, 400), (243, 640), (247, 240), (333, 720), (426, 720), (548, 720), (698, 800), (700, 80), (704, 80), (729, 1440), (732, 720), (751, 720), (1057, -240), (1058, -240), (1059, 80), (1219, -240), (1223, -240), (1225, 80), (1226, 480), (1227, 320), (1251, -15)]

def reductionPivot6532 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6532 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3235).moment H =
      Integer.Sparse.eval reductionProjection6532 (momentVector H) := by
  have heq : reductionPivot6532 = (fun u v => (normalNode3235).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3235).moment H = injectiveMoment H reductionPivot6532 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3235).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6532 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6532 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6532 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1655, oldProjection1917, oldProjection1476, oldProjection1914, oldProjection1913] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6532 (0 : Fin 5)) = canonicalInput6583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6583 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6532 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1917⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1917 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6532 (2 : Fin 5)) = canonicalInput6173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1476 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6173 hH))).trans (oldProjectionSound1476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6532 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1914⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1914 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6532 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1913⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6532 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3235).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6532 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3235).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6532 (j : Fin 5)))
      1 1440 1440 1 ![72, 288, 1440, 1440, 1440] ![20, 5, 1, 1, 1] reductionProjection6532 ![oldProjection1655, oldProjection1917, oldProjection1476, oldProjection1914, oldProjection1913]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6533 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (108, 16), (225, -48), (236, -48), (247, 16), (1251, 1)]

def reductionPivot6533 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![-2, -1, 2, 1], ![4, 2, -4, -2]]

theorem reductionSound6533 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7377).moment H =
      Integer.Sparse.eval reductionProjection6533 (momentVector H) := by
  have heq : reductionPivot6533 = (fun u v => (normalNode7377).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7377).moment H = injectiveMoment H reductionPivot6533 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7377).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7377).entries)).symm
  have hshape : reductionPivot6533 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6533 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6533 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1688, reductionProjection1721, oldProjection144] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6533 (0 : Fin 3)) = canonicalInput5494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6533 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6533 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5494 hH))).trans (reductionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6533 (1 : Fin 3)) = canonicalInput18698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6533 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1721 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6533 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18698 hH))).trans (reductionSound1721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6533 (2 : Fin 3)) = canonicalInput18705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6533 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6533 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18705 hH))).trans (oldProjectionSound144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7377).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6533 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7377).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6533 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6533 ![reductionProjection1688, reductionProjection1721, oldProjection144]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6534 : Integer.Sparse (Fin 1613) := [(1082, 1)]

theorem reductionSound6534 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1082).moment H =
      Integer.Sparse.eval reductionProjection6534 (momentVector H) := by
  have hc : coordinates (1082 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1082) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6534, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6535 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 10), (19, 70), (20, -5), (94, -25), (104, -40), (108, -120), (225, 120), (236, 120), (247, -120), (704, -40), (1082, -360), (1251, -25)]

def reductionPivot6535 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -3, 4], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound6535 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4752).moment H =
      Integer.Sparse.eval reductionProjection6535 (momentVector H) := by
  have heq : reductionPivot6535 = (fun u v => (normalNode4752).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4752).moment H = injectiveMoment H reductionPivot6535 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4752).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6535 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6535 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6535 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6533, reductionProjection6400, oldProjection762, reductionProjection6534] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6535 (0 : Fin 4)) = canonicalInput11795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6533 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6533 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11795 hH))).trans (reductionSound6533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6535 (1 : Fin 4)) = canonicalInput9696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9696 hH))).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6535 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4252 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection762 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4252 hH))).trans (oldProjectionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6535 (3 : Fin 4)) = canonicalInput9667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6534 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6535 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9667 hH))).trans (reductionSound6534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4752).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6535 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4752).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6535 (j : Fin 4)))
      2 720 720 2 ![144, 720, 720, 1] ![5, 1, 1, 720] reductionProjection6535 ![reductionProjection6533, reductionProjection6400, oldProjection762, reductionProjection6534]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6536 : Integer.Sparse (Fin 1613) := [(748, 1)]

theorem reductionSound6536 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code748).moment H =
      Integer.Sparse.eval reductionProjection6536 (momentVector H) := by
  have hc : coordinates (748 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code748) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6536, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6537 : Integer.Sparse (Fin 1613) := [(628, -3), (728, -3), (748, -3), (1047, 1), (1055, 1), (1058, 1)]

def reductionPivot6537 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, -1, 2, -2]]

theorem reductionSound6537 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode3246).moment H =
      Integer.Sparse.eval reductionProjection6537 (momentVector H) := by
  have heq : reductionPivot6537 = (fun u v => (normalNode3246).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3246).moment H = injectiveMoment H reductionPivot6537 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3246).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6537 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6537 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6537 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1319, reductionProjection6536, reductionProjection1442, reductionProjection6459] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6537 (0 : Fin 4)) = canonicalInput19597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1319 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19597 hH))).trans (oldProjectionSound1319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6537 (1 : Fin 4)) = canonicalInput6377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6536 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6377 hH))).trans (reductionSound6536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6537 (2 : Fin 4)) = canonicalInput6181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6181 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6537 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code728).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6537 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3246).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6537 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3246).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6537 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection6537 ![oldProjection1319, reductionProjection6536, reductionProjection1442, reductionProjection6459]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6538 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (20, -5), (94, -45), (228, 240), (241, -160), (243, -80), (247, -240), (628, -720), (698, -80), (1082, -720), (1251, -50)]

def reductionPivot6538 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound6538 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3242).moment H =
      Integer.Sparse.eval reductionProjection6538 (momentVector H) := by
  have heq : reductionPivot6538 = (fun u v => (normalNode3242).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3242).moment H = injectiveMoment H reductionPivot6538 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3242).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6538 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6538 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6538 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6534, oldProjection921, oldProjection1100, reductionProjection1442] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6538 (0 : Fin 4)) = canonicalInput9667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6534 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9667 hH))).trans (reductionSound6534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6538 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2973 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection921 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2973 hH))).trans (oldProjectionSound921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6538 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2930 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2930 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6538 (3 : Fin 4)) = canonicalInput6176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6538 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6176 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3242).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6538 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3242).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6538 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 720, 1] ![1440, 2, 2, 1440] reductionProjection6538 ![reductionProjection6534, oldProjection921, oldProjection1100, reductionProjection1442]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6539 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -180), (20, 15), (94, 75), (104, 80), (108, 200), (225, -120), (228, -240), (236, -120), (241, 280), (243, 120), (247, 280), (628, 720), (698, 120), (704, 80), (728, 360), (748, 360), (1047, -120), (1055, -120), (1058, -120), (1082, 720), (1251, 50)]

def reductionPivot6539 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound6539 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3237).moment H =
      Integer.Sparse.eval reductionProjection6539 (momentVector H) := by
  have heq : reductionPivot6539 = (fun u v => (normalNode3237).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3237).moment H = injectiveMoment H reductionPivot6539 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3237).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6539 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6539 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 6, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6539 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6535, reductionProjection6401, reductionProjection6537, reductionProjection6341, reductionProjection6538] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6539 (0 : Fin 5)) = (normalNode4752).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6535 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6539 (1 : Fin 5)) = canonicalInput6255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6401 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6255 hH))).trans (reductionSound6401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6539 (2 : Fin 5)) = (normalNode3246).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6537 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6537 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6539 (3 : Fin 5)) = canonicalInput6164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6341 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6164 hH))).trans (reductionSound6341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6539 (4 : Fin 5)) = (normalNode3242).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6538 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6539 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6538 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3237).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6539 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3237).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6539 (j : Fin 5)))
      1 720 1440 2 ![720, 288, 6, 288, 1440] ![2, 5, 240, 5, 1] reductionProjection6539 ![reductionProjection6535, reductionProjection6401, reductionProjection6537, reductionProjection6341, reductionProjection6538]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6540 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -16), (20, 3), (94, 7), (104, 16), (108, 16), (704, 16), (1251, 4)]

def reductionPivot6540 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -1, 2], ![0, 1, 3, -4], ![1, -2, -2, 3]]

theorem reductionSound6540 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10359).moment H =
      Integer.Sparse.eval reductionProjection6540 (momentVector H) := by
  have heq : reductionPivot6540 = (fun u v => (normalNode10359).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10359).moment H = injectiveMoment H reductionPivot6540 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10359).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot6540 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6540 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 12, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6540 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection245, oldProjection126, oldProjection149] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6540 (0 : Fin 3)) = canonicalInput22794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6540 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6540 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22794 hH))).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6540 (1 : Fin 3)) = canonicalInput20363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6540 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection126 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6540 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20363 hH))).trans (oldProjectionSound126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6540 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7246 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6540 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection149 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6540 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7246 hH))).trans (oldProjectionSound149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10359).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6540 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10359).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6540 (j : Fin 3)))
      3 144 144 3 ![48, 12, 48] ![3, 12, 3] reductionProjection6540 ![oldProjection245, oldProjection126, oldProjection149]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6541 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -3), (94, -11), (104, -32), (108, -48), (241, -16), (247, -32), (694, 48), (704, -16), (1082, -144), (1251, -8), (1319, 48)]

def reductionPivot6541 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -3, 4], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound6541 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4753).moment H =
      Integer.Sparse.eval reductionProjection6541 (momentVector H) := by
  have heq : reductionPivot6541 = (fun u v => (normalNode4753).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4753).moment H = injectiveMoment H reductionPivot6541 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4753).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6541 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6541 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6541 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1279, reductionProjection2598, reductionProjection6540, reductionProjection6534] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6541 (0 : Fin 4)) = canonicalInput11815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1279 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11815 hH))).trans (oldProjectionSound1279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6541 (1 : Fin 4)) = canonicalInput9702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9702 hH))).trans (reductionSound2598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6541 (2 : Fin 4)) = canonicalInput9668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6540 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9668 hH))).trans (reductionSound6540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6541 (3 : Fin 4)) = canonicalInput9667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6534 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6541 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9667 hH))).trans (reductionSound6534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4753).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6541 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4753).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6541 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection6541 ![oldProjection1279, reductionProjection2598, reductionProjection6540, reductionProjection6534]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6542 : Integer.Sparse (Fin 1613) := [(628, -3), (729, -3), (751, -3), (1214, 1), (1219, 1), (1223, 1)]

def reductionPivot6542 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, 2, -2]]

theorem reductionSound6542 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode3247).moment H =
      Integer.Sparse.eval reductionProjection6542 (momentVector H) := by
  have heq : reductionPivot6542 = (fun u v => (normalNode3247).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3247).moment H = injectiveMoment H reductionPivot6542 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3247).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6542 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6542 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6542 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1172, oldProjection585, reductionProjection1442, oldProjection579] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6542 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1172⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1172 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6542 (1 : Fin 4)) = canonicalInput6376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection585 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6376 hH))).trans (oldProjectionSound585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6542 (2 : Fin 4)) = canonicalInput6181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6181 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6542 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection579 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6542 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3247).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6542 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3247).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6542 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection6542 ![oldProjection1172, oldProjection585, reductionProjection1442, oldProjection579]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6543 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (20, -5), (94, -65), (228, 240), (243, -80), (247, -80), (698, -80), (704, -80), (1251, -60)]

def reductionPivot6543 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, 0, -2, 1]]

theorem reductionSound6543 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10568).moment H =
      Integer.Sparse.eval reductionProjection6543 (momentVector H) := by
  have heq : reductionPivot6543 = (fun u v => (normalNode10568).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10568).moment H = injectiveMoment H reductionPivot6543 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10568).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot6543 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6543 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6543 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection940, oldProjection1100, oldProjection1050, oldProjection153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6543 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node940⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection940 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6543 (1 : Fin 4)) = canonicalInput24686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24686 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6543 (2 : Fin 4)) = canonicalInput24734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1050 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24734 hH))).trans (oldProjectionSound1050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6543 (3 : Fin 4)) = canonicalInput24737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection153 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6543 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24737 hH))).trans (oldProjectionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10568).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6543 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10568).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6543 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 48] ![10, 2, 2, 30] reductionProjection6543 ![oldProjection940, oldProjection1100, oldProjection1050, oldProjection153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6544 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -5), (229, 48), (238, 48), (240, 96), (241, -16), (247, -16), (628, -144), (1249, -144), (1251, -4)]

def reductionPivot6544 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound6544 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3244).moment H =
      Integer.Sparse.eval reductionProjection6544 (momentVector H) := by
  have heq : reductionPivot6544 = (fun u v => (normalNode3244).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3244).moment H = injectiveMoment H reductionPivot6544 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3244).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6544 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6544 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6544 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection714, oldProjection1055, oldProjection1014, reductionProjection1442] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6544 (0 : Fin 4)) = canonicalInput9834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection714 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9834 hH))).trans (oldProjectionSound714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6544 (1 : Fin 4)) = canonicalInput6283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6283 hH))).trans (oldProjectionSound1055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6544 (2 : Fin 4)) = canonicalInput6178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6178 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6544 (3 : Fin 4)) = canonicalInput6176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6544 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6176 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3244).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6544 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3244).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6544 (j : Fin 4)))
      2 288 288 2 ![1, 144, 144, 1] ![288, 2, 2, 288] reductionProjection6544 ![oldProjection714, oldProjection1055, oldProjection1014, reductionProjection1442]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6545 : Integer.Sparse (Fin 1613) := [(0, -8), (3, -40), (19, -300), (20, 25), (94, 170), (104, 160), (108, 240), (228, -240), (229, -240), (238, -240), (240, -480), (241, 400), (243, 160), (247, 560), (628, 1440), (694, -240), (698, 160), (704, 160), (729, 720), (751, 720), (1082, 720), (1214, -240), (1219, -240), (1223, -240), (1249, 720), (1251, 125), (1319, -240)]

def reductionPivot6545 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound6545 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3239).moment H =
      Integer.Sparse.eval reductionProjection6545 (momentVector H) := by
  have heq : reductionPivot6545 = (fun u v => (normalNode3239).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3239).moment H = injectiveMoment H reductionPivot6545 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3239).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6545 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6545 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 6, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6545 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6541, oldProjection2768, reductionProjection6542, reductionProjection6543, reductionProjection6544] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6545 (0 : Fin 5)) = (normalNode4753).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6541 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6545 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2958 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2958 hH))).trans (oldProjectionSound2768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6545 (2 : Fin 5)) = (normalNode3247).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6542 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6545 (3 : Fin 5)) = canonicalInput6170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6543 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6170 hH))).trans (reductionSound6543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6545 (4 : Fin 5)) = (normalNode3244).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6544 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6545 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3239).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6545 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3239).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6545 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 6, 1440, 288] ![5, 1, 240, 1, 5] reductionProjection6545 ![reductionProjection6541, oldProjection2768, reductionProjection6542, reductionProjection6543, reductionProjection6544]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6546 : Integer.Sparse (Fin 1613) := [(19, 10), (20, -1), (91, -24), (232, 24), (242, 24), (243, -48), (244, -24), (246, -16), (700, -8), (1225, -8), (1251, -1)]

def reductionPivot6546 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound6546 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3272).moment H =
      Integer.Sparse.eval reductionProjection6546 (momentVector H) := by
  have heq : reductionPivot6546 = (fun u v => (normalNode3272).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3272).moment H = injectiveMoment H reductionPivot6546 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3272).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6546 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6546 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6546 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1064, reductionProjection2630, reductionProjection2489, reductionProjection5661] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6546 (0 : Fin 4)) = canonicalInput9848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9848 hH))).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6546 (1 : Fin 4)) = canonicalInput6302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6302 hH))).trans (reductionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6546 (2 : Fin 4)) = canonicalInput6208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2489 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6208 hH))).trans (reductionSound2489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6546 (3 : Fin 4)) = canonicalInput6206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5661 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6546 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6206 hH))).trans (reductionSound5661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3272).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6546 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3272).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6546 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 9] ![1, 1, 1, 16] reductionProjection6546 ![oldProjection1064, reductionProjection2630, reductionProjection2489, reductionProjection5661]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6547 : Integer.Sparse (Fin 1613) := [(740, 1)]

theorem reductionSound6547 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code740).moment H =
      Integer.Sparse.eval reductionProjection6547 (momentVector H) := by
  have hc : coordinates (740 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code740) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6547, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6548 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -3), (231, 144), (238, 48), (241, -16), (242, 48), (243, -32), (244, -16), (247, -16), (700, -16), (740, -144), (1251, -2), (1323, 48)]

def reductionPivot6548 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound6548 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3263).moment H =
      Integer.Sparse.eval reductionProjection6548 (momentVector H) := by
  have heq : reductionPivot6548 = (fun u v => (normalNode3263).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3263).moment H = injectiveMoment H reductionPivot6548 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3263).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6548 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6548 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6548 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection900, reductionProjection6547, reductionProjection2331, oldProjection1194] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6548 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node900⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection900 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6548 (1 : Fin 4)) = canonicalInput6371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6547 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6371 hH))).trans (reductionSound6547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6548 (2 : Fin 4)) = canonicalInput6198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2331 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6198 hH))).trans (reductionSound2331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6548 (3 : Fin 4)) = canonicalInput6194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1194 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6548 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6194 hH))).trans (oldProjectionSound1194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3263).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6548 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3263).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6548 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 9] ![2, 288, 2, 32] reductionProjection6548 ![oldProjection900, reductionProjection6547, reductionProjection2331, oldProjection1194]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6549 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, 1), (231, 48), (241, -16), (242, 96), (243, -32), (244, -16), (247, -16), (627, -144), (700, -16), (1248, -144), (1251, -2)]

def reductionPivot6549 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound6549 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3262).moment H =
      Integer.Sparse.eval reductionProjection6549 (momentVector H) := by
  have heq : reductionPivot6549 = (fun u v => (normalNode3262).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3262).moment H = injectiveMoment H reductionPivot6549 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3262).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6549 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6549 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6549 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection713, oldProjection1064, reductionProjection2331, reductionProjection5841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6549 (0 : Fin 4)) = canonicalInput9840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection713 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9840 hH))).trans (oldProjectionSound713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6549 (1 : Fin 4)) = canonicalInput6297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6297 hH))).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6549 (2 : Fin 4)) = canonicalInput6198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2331 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6198 hH))).trans (reductionSound2331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6549 (3 : Fin 4)) = canonicalInput6196.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6549 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6196 hH))).trans (reductionSound5841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3262).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6549 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3262).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6549 (j : Fin 4)))
      2 288 288 2 ![1, 144, 144, 1] ![288, 2, 2, 288] reductionProjection6549 ![oldProjection713, oldProjection1064, reductionProjection2331, reductionProjection5841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6550 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -280), (20, 35), (76, -240), (88, 240), (90, 240), (91, 240), (94, 15), (231, -1200), (232, -240), (238, -240), (241, 320), (242, -960), (243, 1120), (244, 400), (246, 160), (247, 160), (627, 720), (697, -240), (698, 560), (700, 480), (704, 160), (740, 720), (1059, 80), (1225, 80), (1226, 400), (1248, 720), (1251, 50), (1323, -480)]

def reductionPivot6550 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound6550 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3249).moment H =
      Integer.Sparse.eval reductionProjection6550 (momentVector H) := by
  have heq : reductionPivot6550 = (fun u v => (normalNode3249).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3249).moment H = injectiveMoment H reductionPivot6550 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3249).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6550 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6550 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6550 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1948, reductionProjection6546, reductionProjection6548, reductionProjection6549, oldProjection1916] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6550 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6550 (1 : Fin 5)) = (normalNode3272).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6546 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6550 (2 : Fin 5)) = (normalNode3263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6548 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6550 (3 : Fin 5)) = (normalNode3262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6549 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6550 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1916⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1916 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6550 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3249).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6550 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3249).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6550 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 288, 288, 288] ![1, 10, 5, 5, 5] reductionProjection6550 ![oldProjection1948, reductionProjection6546, reductionProjection6548, reductionProjection6549, oldProjection1916]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6551 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 2), (33, -48), (94, 3), (236, -48), (1251, 1)]

def reductionPivot6551 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![0, -3, 2, 1], ![2, 4, -4, -2]]

theorem reductionSound6551 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8913).moment H =
      Integer.Sparse.eval reductionProjection6551 (momentVector H) := by
  have heq : reductionPivot6551 = (fun u v => (normalNode8913).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8913).moment H = injectiveMoment H reductionPivot6551 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8913).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode8913).entries)).symm
  have hshape : reductionPivot6551 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6551 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6551 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection234, reductionProjection1721, oldProjection143] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6551 (0 : Fin 3)) = canonicalInput5510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6551 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6551 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5510 hH))).trans (reductionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6551 (1 : Fin 3)) = canonicalInput18711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6551 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1721 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6551 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18711 hH))).trans (reductionSound1721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6551 (2 : Fin 3)) = canonicalInput18740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6551 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection143 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6551 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18740 hH))).trans (oldProjectionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8913).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6551 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8913).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6551 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6551 ![reductionProjection234, reductionProjection1721, oldProjection143]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6552 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -5), (33, 48), (94, -4), (104, -16), (105, -32), (108, -32), (236, 48), (241, -48), (242, 48), (243, -48), (247, -32), (1251, -3)]

def reductionPivot6552 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -3, 4], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound6552 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4756).moment H =
      Integer.Sparse.eval reductionProjection6552 (momentVector H) := by
  have heq : reductionPivot6552 = (fun u v => (normalNode4756).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4756).moment H = injectiveMoment H reductionPivot6552 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4756).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6552 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6552 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6552 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6551, oldProjection994, reductionProjection6398, oldProjection1026] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6552 (0 : Fin 4)) = canonicalInput11796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6551 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11796 hH))).trans (reductionSound6551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6552 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4272 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection994 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4272 hH))).trans (oldProjectionSound994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6552 (2 : Fin 4)) = canonicalInput9673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6398 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9673 hH))).trans (reductionSound6398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6552 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4254 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1026 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6552 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1026 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4254 hH))).trans (oldProjectionSound1026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4756).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6552 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4756).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6552 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 144] ![2, 2, 4, 2] reductionProjection6552 ![reductionProjection6551, oldProjection994, reductionProjection6398, oldProjection1026]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6553 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (104, -80), (108, -80), (241, 160), (247, 160), (1251, 5)]

def reductionPivot6553 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 2, -4], ![1, -1, 0, 0]]

theorem reductionSound6553 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10833).moment H =
      Integer.Sparse.eval reductionProjection6553 (momentVector H) := by
  have heq : reductionPivot6553 = (fun u v => (normalNode10833).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10833).moment H = injectiveMoment H reductionPivot6553 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10833).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot6553 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6553 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6553 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1037, oldProjection998, oldProjection994, oldProjection153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6553 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1037⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1037 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6553 (1 : Fin 4)) = canonicalInput24696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection998 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24696 hH))).trans (oldProjectionSound998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6553 (2 : Fin 4)) = canonicalInput24748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection994 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24748 hH))).trans (oldProjectionSound994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6553 (3 : Fin 4)) = canonicalInput24752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection153 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6553 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24752 hH))).trans (oldProjectionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10833).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6553 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10833).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6553 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 48] ![10, 2, 10, 30] reductionProjection6553 ![oldProjection1037, oldProjection998, oldProjection994, oldProjection153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6554 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (231, 96), (241, -16), (242, 48), (243, -16), (247, -16), (698, -16), (731, -144), (746, -144), (1057, 48), (1226, -16), (1251, -1)]

def reductionPivot6554 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, 0, 1, -2]]

theorem reductionSound6554 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3264).moment H =
      Integer.Sparse.eval reductionProjection6554 (momentVector H) := by
  have heq : reductionPivot6554 = (fun u v => (normalNode3264).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3264).moment H = injectiveMoment H reductionPivot6554 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3264).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6554 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6554 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6554 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection901, reductionProjection6342, reductionProjection2331, reductionProjection6464] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6554 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node901⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection901 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection901 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6554 (1 : Fin 4)) = canonicalInput6372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6372 hH))).trans (reductionSound6342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6554 (2 : Fin 4)) = canonicalInput6199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2331 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6199 hH))).trans (reductionSound2331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6554 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code731).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6554 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3264).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6554 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3264).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6554 (j : Fin 4)))
      2 288 288 2 ![9, 1, 144, 1] ![32, 288, 2, 288] reductionProjection6554 ![oldProjection901, reductionProjection6342, reductionProjection2331, reductionProjection6464]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6555 : Integer.Sparse (Fin 1613) := [(19, 10), (20, -1), (88, -24), (105, -8), (231, 24), (241, -24), (242, 24), (243, -48), (247, -16), (1226, -8), (1251, -1)]

def reductionPivot6555 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound6555 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3256).moment H =
      Integer.Sparse.eval reductionProjection6555 (momentVector H) := by
  have heq : reductionPivot6555 = (fun u v => (normalNode3256).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3256).moment H = injectiveMoment H reductionPivot6555 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3256).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6555 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6555 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6555 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1026, oldProjection1037, oldProjection1004, oldProjection1076] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6555 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4254 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1026 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1026 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4254 hH))).trans (oldProjectionSound1026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6555 (1 : Fin 4)) = canonicalInput6282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1037 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6282 hH))).trans (oldProjectionSound1037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6555 (2 : Fin 4)) = canonicalInput6197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1004 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1004 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6197 hH))).trans (oldProjectionSound1004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6555 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2937 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1076 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6555 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2937 hH))).trans (oldProjectionSound1076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3256).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6555 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3256).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6555 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 9] ![1, 1, 1, 16] reductionProjection6555 ![oldProjection1026, oldProjection1037, oldProjection1004, oldProjection1076]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6556 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -60), (19, -280), (20, 50), (33, -240), (88, 320), (94, 40), (104, 160), (105, 320), (108, 320), (231, -960), (236, -240), (241, 480), (242, -960), (243, 1040), (247, 240), (698, 80), (731, 720), (746, 720), (1057, -240), (1226, 160), (1251, 35)]

def reductionPivot6556 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound6556 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3250).moment H =
      Integer.Sparse.eval reductionProjection6556 (momentVector H) := by
  have heq : reductionPivot6556 = (fun u v => (normalNode3250).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3250).moment H = injectiveMoment H reductionPivot6556 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3250).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6556 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6556 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6556 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6552, reductionProjection6553, reductionProjection6554, reductionProjection2459, reductionProjection6555] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6556 (0 : Fin 5)) = (normalNode4756).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6552 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6556 (1 : Fin 5)) = canonicalInput6272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6553 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6272 hH))).trans (reductionSound6553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6556 (2 : Fin 5)) = (normalNode3264).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6554 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6554 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6556 (3 : Fin 5)) = canonicalInput6187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2459 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6187 hH))).trans (reductionSound2459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6556 (4 : Fin 5)) = (normalNode3256).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6555 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6556 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3250).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6556 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3250).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6556 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 288, 144] ![5, 1, 5, 5, 10] reductionProjection6556 ![reductionProjection6552, reductionProjection6553, reductionProjection6554, reductionProjection2459, reductionProjection6555]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6557 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (33, -48), (94, 3), (108, 16), (1251, 2), (1290, -48)]

def reductionPivot6557 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-2, -1, 3, 0], ![4, 2, -4, -2]]

theorem reductionSound6557 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7376).moment H =
      Integer.Sparse.eval reductionProjection6557 (momentVector H) := by
  have heq : reductionPivot6557 = (fun u v => (normalNode7376).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7376).moment H = injectiveMoment H reductionPivot6557 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7376).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7376).entries)).symm
  have hshape : reductionPivot6557 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6557 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6557 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection234, reductionProjection6517, oldProjection241] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6557 (0 : Fin 3)) = canonicalInput4645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6557 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6557 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4645 hH))).trans (reductionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6557 (1 : Fin 3)) = canonicalInput17989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6557 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6557 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17989 hH))).trans (reductionSound6517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6557 (2 : Fin 3)) = canonicalInput17995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6557 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection241 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6557 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17995 hH))).trans (oldProjectionSound241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7376).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6557 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7376).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6557 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6557 ![reductionProjection234, reductionProjection6517, oldProjection241]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6558 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 20), (20, -5), (33, 48), (94, 1), (104, -16), (105, -16), (108, -32), (241, -32), (243, -16), (1251, 2), (1290, 48), (1330, -144)]

def reductionPivot6558 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -3, 4], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound6558 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4757).moment H =
      Integer.Sparse.eval reductionProjection6558 (momentVector H) := by
  have heq : reductionPivot6558 = (fun u v => (normalNode4757).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4757).moment H = injectiveMoment H reductionPivot6558 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4757).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6558 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6558 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6558 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6557, oldProjection764, oldProjection905, reductionProjection6467] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6558 (0 : Fin 4)) = canonicalInput11797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6557 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6557 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11797 hH))).trans (reductionSound6557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6558 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4273 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection764 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4273 hH))).trans (oldProjectionSound764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6558 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4255 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection905 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4255 hH))).trans (oldProjectionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6558 (3 : Fin 4)) = canonicalInput9672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6558 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9672 hH))).trans (reductionSound6467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4757).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6558 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4757).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6558 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection6558 ![reductionProjection6557, oldProjection764, oldProjection905, reductionProjection6467]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6559 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (243, -16), (627, -144), (698, -32), (731, -144), (747, -144), (1047, 48), (1226, -16), (1251, 3)]

def reductionPivot6559 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -2, 4], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, -1, 1, -1]]

theorem reductionSound6559 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3265).moment H =
      Integer.Sparse.eval reductionProjection6559 (momentVector H) := by
  have heq : reductionPivot6559 = (fun u v => (normalNode3265).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3265).moment H = injectiveMoment H reductionPivot6559 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3265).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6559 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6559 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6559 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1318, reductionProjection6514, reductionProjection5841, reductionProjection6464] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6559 (0 : Fin 4)) = canonicalInput19605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1318 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19605 hH))).trans (oldProjectionSound1318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6559 (1 : Fin 4)) = canonicalInput6378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6378 hH))).trans (reductionSound6514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6559 (2 : Fin 4)) = canonicalInput6201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6201 hH))).trans (reductionSound5841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6559 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code731).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6559 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3265).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6559 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3265).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6559 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6559 ![oldProjection1318, reductionProjection6514, reductionProjection5841, reductionProjection6464]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

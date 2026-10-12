import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical011
import NoFourMUBs.Step2.SOS.Canonical014
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical024
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical180
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical283
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions032
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical131
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical155
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical157
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical158
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical235
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical304
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical311
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical61
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical64
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical79
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical82
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1056 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -10), (241, -40), (690, 120), (691, 120), (694, 120), (698, -40), (1050, 120), (1052, 120), (1125, -360), (1250, -30), (1251, 15)]

def reductionPivot1056 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 1, -1, -2]]

theorem reductionSound1056 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode501).moment H =
      Integer.Sparse.eval reductionProjection1056 (momentVector H) := by
  have heq : reductionPivot1056 = (fun u v => (normalNode501).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode501).moment H = injectiveMoment H reductionPivot1056 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode501).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1056 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1056 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1056 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1055, reductionProjection1030, oldProjection1222, oldProjection808] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1056 (0 : Fin 4)) = canonicalInput933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1055 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound933 hH))).trans (reductionSound1055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1056 (1 : Fin 4)) = canonicalInput1479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1479 hH))).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1056 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1211 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1211 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1056 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection808 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1056 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1218 hH))).trans (oldProjectionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode501).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1056 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode501).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1056 (j : Fin 4)))
      2 720 720 2 ![3, 1, 720, 144] ![240, 720, 1, 5] reductionProjection1056 ![reductionProjection1055, reductionProjection1030, oldProjection1222, oldProjection808]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1057 : Integer.Sparse (Fin 1613) := [(149, 1)]

theorem reductionSound1057 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code149).moment H =
      Integer.Sparse.eval reductionProjection1057 (momentVector H) := by
  have hc : coordinates (149 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code149) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1057, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1058 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -25), (174, -720), (175, -720), (247, -80), (616, -720), (697, 240), (1251, -25)]

def reductionPivot1058 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound1058 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode657).moment H =
      Integer.Sparse.eval reductionProjection1058 (momentVector H) := by
  have heq : reductionPivot1058 = (fun u v => (normalNode657).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode657).moment H = injectiveMoment H reductionPivot1058 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode657).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1058 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1058 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1058 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection566, oldProjection995, reductionProjection833, oldProjection409] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1058 (0 : Fin 4)) = canonicalInput2056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2056 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1058 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1252 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1252 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1058 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code175).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1058 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1058 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode657).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1058 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode657).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1058 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection1058 ![reductionProjection566, oldProjection995, reductionProjection833, oldProjection409]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1059 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (94, -25), (241, -160), (247, -160), (541, -720), (697, 240), (698, -80), (1105, -720), (1251, 20)]

def reductionPivot1059 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound1059 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4990).moment H =
      Integer.Sparse.eval reductionProjection1059 (momentVector H) := by
  have heq : reductionPivot1059 = (fun u v => (normalNode4990).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4990).moment H = injectiveMoment H reductionPivot1059 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4990).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1059 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1059 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1059 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection497, oldProjection677, oldProjection1083, oldProjection1351] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1059 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5298 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5298 hH))).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1059 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node677⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection677 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1059 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4403 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4403 hH))).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1059 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4400 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1351 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1059 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4400 hH))).trans (oldProjectionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4990).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1059 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4990).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1059 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 720] ![1440, 1440, 2, 2] reductionProjection1059 ![oldProjection497, oldProjection677, oldProjection1083, oldProjection1351]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1060 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -100), (94, 50), (149, -1440), (153, 720), (169, 720), (174, 720), (175, 720), (241, 240), (247, 240), (408, 720), (541, 720), (616, 720), (621, 720), (690, -240), (697, -480), (698, 320), (1050, -240), (1052, -240), (1058, -240), (1059, 80), (1105, 720), (1223, -240), (1226, 80), (1251, -25), (1319, -240)]

def reductionPivot1060 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound1060 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode502).moment H =
      Integer.Sparse.eval reductionProjection1060 (momentVector H) := by
  have heq : reductionPivot1060 = (fun u v => (normalNode502).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode502).moment H = injectiveMoment H reductionPivot1060 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode502).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1060 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1060 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1060 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection556, reductionProjection1057, reductionProjection1058, reductionProjection1059, oldProjection1501] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1060 (0 : Fin 5)) = (normalNode286).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection556 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1060 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code149).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1057 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1060 (2 : Fin 5)) = canonicalInput1576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1058 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1576 hH))).trans (reductionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1060 (3 : Fin 5)) = canonicalInput1583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1059 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1583 hH))).trans (reductionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1060 (4 : Fin 5)) = canonicalInput1584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1501 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1060 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1584 hH))).trans (oldProjectionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode502).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1060 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode502).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1060 (j : Fin 5)))
      1 1440 1440 1 ![144, 1, 1440, 1440, 720] ![10, 1440, 1, 1, 2] reductionProjection1060 ![reductionProjection556, reductionProjection1057, reductionProjection1058, reductionProjection1059, oldProjection1501]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1061 : Integer.Sparse (Fin 1613) := [(53, -1), (691, -1), (1044, -1)]

def reductionPivot1061 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![0, 3, 0, -3], ![3, -3, -2, 2]]

theorem reductionSound1061 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6794).moment H =
      Integer.Sparse.eval reductionProjection1061 (momentVector H) := by
  have heq : reductionPivot1061 = (fun u v => (normalNode6794).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6794).moment H = injectiveMoment H reductionPivot1061 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6794).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6794).entries)).symm
  have hshape : reductionPivot1061 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1061 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1061 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection91, oldProjection163, oldProjection192] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1061 (0 : Fin 3)) = canonicalInput565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1061 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection91 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1061 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection91 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound565 hH))).trans (oldProjectionSound91 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1061 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4175 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1061 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1061 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4175 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1061 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4202 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1061 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1061 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4202 hH))).trans (oldProjectionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6794).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1061 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6794).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1061 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1061 ![oldProjection91, oldProjection163, oldProjection192]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1062 : Integer.Sparse (Fin 1613) := [(436, 1)]

theorem reductionSound1062 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code436).moment H =
      Integer.Sparse.eval reductionProjection1062 (momentVector H) := by
  have hc : coordinates (436 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code436) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1062, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1063 : Integer.Sparse (Fin 1613) := [(72, -1), (73, -1), (76, -1)]

def reductionPivot1063 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![0, 3, 0, -3], ![3, -2, -2, 1]]

theorem reductionSound1063 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6715).moment H =
      Integer.Sparse.eval reductionProjection1063 (momentVector H) := by
  have heq : reductionPivot1063 = (fun u v => (normalNode6715).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6715).moment H = injectiveMoment H reductionPivot1063 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6715).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6715).entries)).symm
  have hshape : reductionPivot1063 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1063 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1063 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection376, oldProjection103, oldProjection101] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1063 (0 : Fin 3)) = canonicalInput338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1063 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1063 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound338 hH))).trans (reductionSound376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1063 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2530 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1063 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1063 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2530 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1063 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2639 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1063 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1063 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2639 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6715).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1063 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6715).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1063 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1063 ![reductionProjection376, oldProjection103, oldProjection101]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1064 : Integer.Sparse (Fin 1613) := [(53, 48), (72, 48), (73, 48), (76, 48), (94, -1), (241, -16), (436, -144), (691, 48), (698, -16), (1044, 48), (1050, 48), (1052, 48), (1251, 3)]

def reductionPivot1064 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -3, 0], ![2, 0, 0, -2]]

theorem reductionSound1064 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode503).moment H =
      Integer.Sparse.eval reductionProjection1064 (momentVector H) := by
  have heq : reductionPivot1064 = (fun u v => (normalNode503).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode503).moment H = injectiveMoment H reductionPivot1064 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode503).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1064 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1064 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 144, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1064 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1061, reductionProjection1062, oldProjection808, reductionProjection1063] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1064 (0 : Fin 4)) = canonicalInput934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1061 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound934 hH))).trans (reductionSound1061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1064 (1 : Fin 4)) = canonicalInput1484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1484 hH))).trans (reductionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1064 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection808 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1218 hH))).trans (oldProjectionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1064 (3 : Fin 4)) = canonicalInput1586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1063 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1064 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1586 hH))).trans (reductionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode503).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1064 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode503).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1064 (j : Fin 4)))
      2 288 288 2 ![3, 1, 144, 3] ![96, 288, 2, 96] reductionProjection1064 ![reductionProjection1061, reductionProjection1062, oldProjection808, reductionProjection1063]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1065 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -160), (20, 15), (76, -1200), (90, 160), (93, 180), (94, 100), (241, 240), (243, 240), (683, -480), (691, -480), (696, -240), (697, -480), (698, 880), (699, -240), (700, 320), (704, 240), (913, 720), (1047, -480), (1055, -240), (1058, -480), (1226, 320), (1250, 120), (1251, 15), (1321, -240), (1323, -960)]

def reductionPivot1065 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1065 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode504).moment H =
      Integer.Sparse.eval reductionProjection1065 (momentVector H) := by
  have heq : reductionPivot1065 = (fun u v => (normalNode504).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode504).moment H = injectiveMoment H reductionPivot1065 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode504).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1065 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1065 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1065 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection466, reductionProjection733, oldProjection1504, oldProjection1980, reductionProjection827] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1065 (0 : Fin 5)) = (normalNode288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection466 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1065 (1 : Fin 5)) = (normalNode560).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection733 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1065 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1219 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1504 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1219 hH))).trans (oldProjectionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1065 (3 : Fin 5)) = canonicalInput1587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1980 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1587 hH))).trans (oldProjectionSound1980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1065 (4 : Fin 5)) = canonicalInput1588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1065 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1588 hH))).trans (reductionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode504).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1065 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode504).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1065 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 1440, 720] ![5, 1, 5, 1, 2] reductionProjection1065 ![reductionProjection466, reductionProjection733, oldProjection1504, oldProjection1980, reductionProjection827]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1066 : Integer.Sparse (Fin 1613) := [(691, -1), (1047, -2)]

def reductionPivot1066 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-1, 3, 0, -2], ![3, -3, -2, 2]]

theorem reductionSound1066 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7981).moment H =
      Integer.Sparse.eval reductionProjection1066 (momentVector H) := by
  have heq : reductionPivot1066 = (fun u v => (normalNode7981).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7981).moment H = injectiveMoment H reductionPivot1066 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7981).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7981).entries)).symm
  have hshape : reductionPivot1066 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1066 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1066 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection163, oldProjection196, oldProjection196] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1066 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4175 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1066 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1066 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4175 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1066 (1 : Fin 3)) = canonicalInput22380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1066 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1066 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22380 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1066 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7544 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1066 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1066 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7544 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7981).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1066 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7981).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1066 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1066 ![oldProjection163, oldProjection196, oldProjection196]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1067 : Integer.Sparse (Fin 1613) := [(76, 24), (94, -1), (241, -16), (243, -8), (691, 24), (698, -24), (913, -72), (1047, 48), (1055, 24), (1058, 24), (1226, -8), (1251, 3)]

def reductionPivot1067 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]

theorem reductionSound1067 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode505).moment H =
      Integer.Sparse.eval reductionProjection1067 (momentVector H) := by
  have heq : reductionPivot1067 = (fun u v => (normalNode505).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode505).moment H = injectiveMoment H reductionPivot1067 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode505).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1067 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1067 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1067 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1066, reductionProjection202, oldProjection976, oldProjection953] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1067 (0 : Fin 4)) = canonicalInput936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1066 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound936 hH))).trans (reductionSound1066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1067 (1 : Fin 4)) = canonicalInput1485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1485 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1067 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1220 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection976 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1220 hH))).trans (oldProjectionSound976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1067 (3 : Fin 4)) = canonicalInput1589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1067 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1589 hH))).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode505).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1067 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode505).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1067 (j : Fin 4)))
      2 144 144 2 ![3, 1, 72, 9] ![48, 144, 2, 16] reductionProjection1067 ![reductionProjection1066, reductionProjection202, oldProjection976, oldProjection953]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1068 : Integer.Sparse (Fin 1613) := [(691, -1), (1044, -1), (1047, -1)]

def reductionPivot1068 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![-2, 3, 0, -1], ![3, -3, -2, 2]]

theorem reductionSound1068 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode9975).moment H =
      Integer.Sparse.eval reductionProjection1068 (momentVector H) := by
  have heq : reductionPivot1068 = (fun u v => (normalNode9975).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9975).moment H = injectiveMoment H reductionPivot1068 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9975).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9975).entries)).symm
  have hshape : reductionPivot1068 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1068 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1068 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection196, oldProjection192, oldProjection163] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1068 (0 : Fin 3)) = canonicalInput22380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1068 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1068 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22380 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1068 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9959 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1068 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1068 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9959 hH))).trans (oldProjectionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1068 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9970 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1068 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1068 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9970 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9975).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1068 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9975).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1068 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1068 ![oldProjection196, oldProjection192, oldProjection163]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1069 : Integer.Sparse (Fin 1613) := [(912, 1)]

theorem reductionSound1069 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code912).moment H =
      Integer.Sparse.eval reductionProjection1069 (momentVector H) := by
  have hc : coordinates (912 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code912) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1069, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1070 : Integer.Sparse (Fin 1613) := [(94, 1), (241, -8), (243, -16), (691, 24), (698, -16), (700, -8), (912, -72), (1044, 24), (1047, 24), (1050, 24), (1052, 24), (1058, 24), (1226, -8), (1251, 1)]

def reductionPivot1070 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![2, 0, -2, 0]]

theorem reductionSound1070 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode506).moment H =
      Integer.Sparse.eval reductionProjection1070 (momentVector H) := by
  have heq : reductionPivot1070 = (fun u v => (normalNode506).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode506).moment H = injectiveMoment H reductionPivot1070 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode506).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1070 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1070 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1070 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1068, reductionProjection1069, oldProjection808, oldProjection1215] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1070 (0 : Fin 4)) = canonicalInput937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1068 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1068 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound937 hH))).trans (reductionSound1068 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1070 (1 : Fin 4)) = canonicalInput1486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1069 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1486 hH))).trans (reductionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1070 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1222 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection808 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1222 hH))).trans (oldProjectionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1070 (3 : Fin 4)) = canonicalInput1592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1070 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1592 hH))).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode506).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1070 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode506).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1070 (j : Fin 4)))
      2 144 144 2 ![3, 1, 144, 144] ![48, 144, 1, 1] reductionProjection1070 ![reductionProjection1068, reductionProjection1069, oldProjection808, oldProjection1215]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1071 : Integer.Sparse (Fin 1613) := [(20, 1), (93, 12), (94, -2), (699, -48), (1060, -48), (1251, 1)]

def reductionPivot1071 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 1, -2], ![-3, 3, 1, -1], ![3, -3, -2, 2]]

theorem reductionSound1071 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11006).moment H =
      Integer.Sparse.eval reductionProjection1071 (momentVector H) := by
  have heq : reductionPivot1071 = (fun u v => (normalNode11006).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11006).moment H = injectiveMoment H reductionPivot1071 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11006).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11006).entries)).symm
  have hshape : reductionPivot1071 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1071 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1071 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection277, oldProjection213, oldProjection186] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1071 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9741 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1071 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1071 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9741 hH))).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1071 (1 : Fin 3)) = canonicalInput33852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1071 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1071 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33852 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1071 (2 : Fin 3)) = canonicalInput33856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1071 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1071 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33856 hH))).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11006).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1071 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11006).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1071 (j : Fin 3)))
      3 144 144 3 ![48, 1, 1] ![3, 144, 144] reductionProjection1071 ![oldProjection277, oldProjection213, oldProjection186]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1072 : Integer.Sparse (Fin 1613) := [(19, 3), (20, -1), (93, -3), (699, 12), (704, -4), (1058, 12), (1060, 12), (1223, 12), (1251, -1), (1263, -36), (1321, 12)]

def reductionPivot1072 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 3, -1, -3]]

theorem reductionSound1072 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode507).moment H =
      Integer.Sparse.eval reductionProjection1072 (momentVector H) := by
  have heq : reductionPivot1072 = (fun u v => (normalNode507).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode507).moment H = injectiveMoment H reductionPivot1072 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode507).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1072 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1072 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1072 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1071, reductionProjection1048, oldProjection1327, oldProjection1329] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1072 (0 : Fin 4)) = canonicalInput938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1071 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound938 hH))).trans (reductionSound1071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1072 (1 : Fin 4)) = canonicalInput1487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1048 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1487 hH))).trans (reductionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1072 (2 : Fin 4)) = canonicalInput1593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1327 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1593 hH))).trans (oldProjectionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1072 (3 : Fin 4)) = canonicalInput1596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1072 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1596 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode507).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1072 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode507).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1072 (j : Fin 4)))
      2 72 144 4 ![144, 1, 144, 144] ![1, 144, 1, 1] reductionProjection1072 ![reductionProjection1071, reductionProjection1048, oldProjection1327, oldProjection1329]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1073 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 120), (20, -10), (93, -180), (94, -35), (243, -80), (696, 240), (698, -80), (1226, -80), (1250, -120), (1251, -35), (1323, 480)]

def reductionPivot1073 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]

theorem reductionSound1073 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode508).moment H =
      Integer.Sparse.eval reductionProjection1073 (momentVector H) := by
  have heq : reductionPivot1073 = (fun u v => (normalNode508).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode508).moment H = injectiveMoment H reductionPivot1073 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode508).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1073 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1073 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1073 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection473, reductionProjection704, oldProjection1213, oldProjection1222] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1073 (0 : Fin 4)) = canonicalInput939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection473 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound939 hH))).trans (reductionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1073 (1 : Fin 4)) = canonicalInput1488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection704 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1488 hH))).trans (reductionSound704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1073 (2 : Fin 4)) = canonicalInput1594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1594 hH))).trans (oldProjectionSound1213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1073 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1223 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1073 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1223 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode508).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1073 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode508).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1073 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 144, 720] ![10, 160, 10, 2] reductionProjection1073 ![reductionProjection473, reductionProjection704, oldProjection1213, oldProjection1222]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1074 : Integer.Sparse (Fin 1613) := [(683, -1), (1321, -1), (1323, -1)]

def reductionPivot1074 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-1, 2, 2, -3], ![3, -1, -3, 1]]

theorem reductionSound1074 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7904).moment H =
      Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
  have heq : reductionPivot1074 = (fun u v => (normalNode7904).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7904).moment H = injectiveMoment H reductionPivot1074 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7904).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7904).entries)).symm
  have hshape : reductionPivot1074 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1074 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1074 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection160, oldProjection260, oldProjection262] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1074 (0 : Fin 3)) = canonicalInput4663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1074 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1074 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4663 hH))).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1074 (1 : Fin 3)) = canonicalInput17997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1074 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1074 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17997 hH))).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1074 (2 : Fin 3)) = canonicalInput18142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1074 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection262 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1074 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18142 hH))).trans (oldProjectionSound262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7904).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1074 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7904).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1074 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1074 ![oldProjection160, oldProjection260, oldProjection262]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1075 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (93, -120), (94, -30), (683, 480), (696, 240), (697, 240), (698, -80), (699, 240), (704, -80), (1250, -60), (1251, -15), (1321, 240), (1323, 240)]

def reductionPivot1075 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]

theorem reductionSound1075 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode509).moment H =
      Integer.Sparse.eval reductionProjection1075 (momentVector H) := by
  have heq : reductionPivot1075 = (fun u v => (normalNode509).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode509).moment H = injectiveMoment H reductionPivot1075 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode509).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1075 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1075 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 3, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1075 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection573, reductionProjection152, reductionProjection1074, oldProjection973] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1075 (0 : Fin 4)) = canonicalInput940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection573 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection573 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound940 hH))).trans (reductionSound573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1075 (1 : Fin 4)) = canonicalInput1489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection152 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1489 hH))).trans (reductionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1075 (2 : Fin 4)) = canonicalInput1595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1595 hH))).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1075 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1224 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1075 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1224 hH))).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode509).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1075 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode509).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1075 (j : Fin 4)))
      2 1440 1440 2 ![144, 72, 3, 360] ![10, 20, 480, 4] reductionProjection1075 ![reductionProjection573, reductionProjection152, reductionProjection1074, oldProjection973]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1076 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 10), (94, -20), (247, -80), (694, 120), (697, 120), (1242, -360), (1250, -30), (1251, -15), (1319, 240), (1388, 120)]

def reductionPivot1076 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]

theorem reductionSound1076 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode510).moment H =
      Integer.Sparse.eval reductionProjection1076 (momentVector H) := by
  have heq : reductionPivot1076 = (fun u v => (normalNode510).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode510).moment H = injectiveMoment H reductionPivot1076 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode510).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1076 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1076 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 360, 180] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1076 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection476, reductionProjection709, oldProjection973, oldProjection987] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1076 (0 : Fin 4)) = canonicalInput941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection476 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound941 hH))).trans (reductionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1076 (1 : Fin 4)) = canonicalInput1491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1491 hH))).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1076 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1224 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1224 hH))).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1076 (3 : Fin 4)) = canonicalInput1599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection987 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1076 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1599 hH))).trans (oldProjectionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode510).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1076 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode510).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1076 (j : Fin 4)))
      2 720 720 2 ![3, 1, 360, 180] ![240, 720, 2, 4] reductionProjection1076 ![reductionProjection476, reductionProjection709, oldProjection973, oldProjection987]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1077 : Integer.Sparse (Fin 1613) := [(62, -1), (694, -1), (1047, -1)]

def reductionPivot1077 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 1, 0], ![0, 1, 2, -3], ![3, -2, -3, 2]]

theorem reductionSound1077 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6808).moment H =
      Integer.Sparse.eval reductionProjection1077 (momentVector H) := by
  have heq : reductionPivot1077 = (fun u v => (normalNode6808).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6808).moment H = injectiveMoment H reductionPivot1077 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6808).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6808).entries)).symm
  have hshape : reductionPivot1077 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1077 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1077 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection100, oldProjection167, oldProjection196] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1077 (0 : Fin 3)) = canonicalInput692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1077 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1077 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound692 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1077 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4974 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1077 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1077 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4974 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1077 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5042 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1077 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1077 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5042 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6808).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1077 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6808).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1077 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1077 ![oldProjection100, oldProjection167, oldProjection196]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1078 : Integer.Sparse (Fin 1613) := [(503, 1)]

theorem reductionSound1078 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code503).moment H =
      Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
  have hc : coordinates (503 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code503) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1078, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1079 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 120), (62, 120), (94, -5), (247, -40), (503, -360), (694, 120), (697, 120), (1047, 120), (1055, 120), (1058, 120), (1219, 120), (1251, -10)]

def reductionPivot1079 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]

theorem reductionSound1079 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode511).moment H =
      Integer.Sparse.eval reductionProjection1079 (momentVector H) := by
  have heq : reductionPivot1079 = (fun u v => (normalNode511).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode511).moment H = injectiveMoment H reductionPivot1079 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode511).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1079 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1079 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1079 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1077, reductionProjection1078, reductionProjection784, oldProjection820] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1079 (0 : Fin 4)) = canonicalInput942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1077 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound942 hH))).trans (reductionSound1077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1079 (1 : Fin 4)) = canonicalInput1492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1492 hH))).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1079 (2 : Fin 4)) = canonicalInput1597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1597 hH))).trans (reductionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1079 (3 : Fin 4)) = canonicalInput1600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection820 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1079 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1600 hH))).trans (oldProjectionSound820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode511).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1079 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode511).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1079 (j : Fin 4)))
      2 720 720 2 ![3, 1, 3, 360] ![240, 720, 240, 2] reductionProjection1079 ![reductionProjection1077, reductionProjection1078, reductionProjection784, oldProjection820]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1080 : Integer.Sparse (Fin 1613) := [(20, -1), (77, 48), (78, 48), (94, -2), (241, -16), (243, -16), (1057, 48), (1251, -1)]

def reductionPivot1080 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound1080 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode512).moment H =
      Integer.Sparse.eval reductionProjection1080 (momentVector H) := by
  have heq : reductionPivot1080 = (fun u v => (normalNode512).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode512).moment H = injectiveMoment H reductionPivot1080 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode512).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1080 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1080 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1080 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection509, oldProjection1108, oldProjection225, oldProjection830] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1080 (0 : Fin 4)) = canonicalInput943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection509 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound943 hH))).trans (reductionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1080 (1 : Fin 4)) = canonicalInput1521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1108 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1521 hH))).trans (oldProjectionSound1108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1080 (2 : Fin 4)) = canonicalInput1631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1631 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1080 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1228 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection830 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1080 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1228 hH))).trans (oldProjectionSound830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode512).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1080 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode512).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1080 (j : Fin 4)))
      2 288 288 2 ![3, 144, 1, 144] ![96, 2, 288, 2] reductionProjection1080 ![reductionProjection509, oldProjection1108, oldProjection225, oldProjection830]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1081 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 25), (241, 80), (243, 80), (454, 720), (462, 720), (508, 720), (690, -480), (695, -240), (696, -240), (697, -240), (698, -240), (700, 160), (1047, -240), (1059, 160), (1226, 80), (1251, -25)]

def reductionPivot1081 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]

theorem reductionSound1081 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode513).moment H =
      Integer.Sparse.eval reductionProjection1081 (momentVector H) := by
  have heq : reductionPivot1081 = (fun u v => (normalNode513).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode513).moment H = injectiveMoment H reductionPivot1081 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode513).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1081 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1081 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1081 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection557, oldProjection1036, oldProjection1036, oldProjection1509, oldProjection2061] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1081 (0 : Fin 5)) = (normalNode293).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection557 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection557 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1081 (1 : Fin 5)) = canonicalInput1542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1542 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1081 (2 : Fin 5)) = canonicalInput1646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1646 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1081 (3 : Fin 5)) = canonicalInput1655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1509 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1655 hH))).trans (oldProjectionSound1509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1081 (4 : Fin 5)) = canonicalInput1657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1081 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1657 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode513).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1081 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode513).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1081 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 1440, 1440] ![1, 2, 2, 1, 1] reductionProjection1081 ![reductionProjection557, oldProjection1036, oldProjection1036, oldProjection1509, oldProjection2061]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1082 : Integer.Sparse (Fin 1613) := [(0, 6), (56, 240), (94, -35), (247, -80), (697, 480), (698, -240), (700, -80), (1055, 240), (1058, 240), (1219, 480), (1227, -160), (1251, -5)]

def reductionPivot1082 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound1082 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode663).moment H =
      Integer.Sparse.eval reductionProjection1082 (momentVector H) := by
  have heq : reductionPivot1082 = (fun u v => (normalNode663).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode663).moment H = injectiveMoment H reductionPivot1082 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode663).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1082 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1082 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1082 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection828, oldProjection815, reductionProjection160, oldProjection995] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1082 (0 : Fin 4)) = canonicalInput2110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2110 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1082 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1262 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1262 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1082 (2 : Fin 4)) = canonicalInput1680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1680 hH))).trans (reductionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1082 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1252 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1082 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1252 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode663).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1082 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode663).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1082 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 72, 720] ![2, 2, 20, 2] reductionProjection1082 ![oldProjection828, oldProjection815, reductionProjection160, oldProjection995]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1083 : Integer.Sparse (Fin 1613) := [(547, 1)]

theorem reductionSound1083 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code547).moment H =
      Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
  have hc : coordinates (547 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code547) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1083, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1084 : Integer.Sparse (Fin 1613) := [(56, -1), (81, -1), (683, -1)]

def reductionPivot1084 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 2, -1], ![0, 1, -3, 2], ![3, -2, 1, -2]]

theorem reductionSound1084 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6809).moment H =
      Integer.Sparse.eval reductionProjection1084 (momentVector H) := by
  have heq : reductionPivot1084 = (fun u v => (normalNode6809).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6809).moment H = injectiveMoment H reductionPivot1084 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6809).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6809).entries)).symm
  have hshape : reductionPivot1084 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1084 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1084 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection97, oldProjection160, oldProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1084 (0 : Fin 3)) = canonicalInput765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1084 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1084 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound765 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1084 (1 : Fin 3)) = canonicalInput11562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1084 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1084 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11562 hH))).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1084 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5067 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1084 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1084 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5067 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6809).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1084 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6809).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1084 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1084 ![oldProjection97, oldProjection160, oldProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1085 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 120), (81, 240), (94, -5), (547, -360), (683, 120), (697, 120), (698, -120), (700, -40), (1059, -40), (1219, 120), (1227, -40), (1251, 10)]

def reductionPivot1085 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound1085 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode713).moment H =
      Integer.Sparse.eval reductionProjection1085 (momentVector H) := by
  have heq : reductionPivot1085 = (fun u v => (normalNode713).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode713).moment H = injectiveMoment H reductionPivot1085 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode713).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1085 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1085 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1085 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1098, reductionProjection1083, oldProjection815, reductionProjection1084] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1085 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2070 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2070 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1085 (1 : Fin 4)) = canonicalInput1736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1736 hH))).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1085 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1262 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1262 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1085 (3 : Fin 4)) = canonicalInput1697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1084 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1085 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1697 hH))).trans (reductionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode713).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1085 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode713).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1085 (j : Fin 4)))
      2 720 720 2 ![720, 1, 720, 3] ![1, 720, 1, 240] reductionProjection1085 ![oldProjection1098, reductionProjection1083, oldProjection815, reductionProjection1084]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1086 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -20), (56, -480), (62, -240), (81, -480), (94, 80), (241, 80), (247, 160), (412, 720), (547, 720), (683, -240), (694, -240), (697, -960), (698, 640), (699, -240), (700, 160), (1047, -240), (1055, -480), (1058, -480), (1059, 80), (1219, -720), (1227, 240), (1251, 5)]

def reductionPivot1086 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound1086 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode514).moment H =
      Integer.Sparse.eval reductionProjection1086 (momentVector H) := by
  have heq : reductionPivot1086 = (fun u v => (normalNode514).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode514).moment H = injectiveMoment H reductionPivot1086 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode514).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1086 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1086 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1086 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection560, oldProjection815, reductionProjection1082, reductionProjection1085, oldProjection1513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1086 (0 : Fin 5)) = (normalNode298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection560 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1086 (1 : Fin 5)) = canonicalInput1546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1546 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1086 (2 : Fin 5)) = canonicalInput1647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1082 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1647 hH))).trans (reductionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1086 (3 : Fin 5)) = (normalNode713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1085 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1085 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1086 (4 : Fin 5)) = canonicalInput1665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1086 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1665 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode514).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1086 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode514).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1086 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 720, 1440] ![1, 2, 1, 2, 1] reductionProjection1086 ![reductionProjection560, oldProjection815, reductionProjection1082, reductionProjection1085, oldProjection1513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1087 : Integer.Sparse (Fin 1613) := [(0, 7), (94, -45), (247, -80), (486, -720), (695, 240), (697, 480), (698, -240), (700, -160), (1059, -160)]

def reductionPivot1087 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound1087 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode682).moment H =
      Integer.Sparse.eval reductionProjection1087 (momentVector H) := by
  have heq : reductionPivot1087 = (fun u v => (normalNode682).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode682).moment H = injectiveMoment H reductionPivot1087 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode682).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1087 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1087 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1087 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection805, oldProjection995, oldProjection489, oldProjection1256] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1087 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1978 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1978 hH))).trans (oldProjectionSound805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1087 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1266 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1266 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1087 (2 : Fin 4)) = canonicalInput1618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection489 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1618 hH))).trans (oldProjectionSound489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1087 (3 : Fin 4)) = canonicalInput1616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1256 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1087 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1616 hH))).trans (oldProjectionSound1256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode682).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1087 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode682).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1087 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1, 9] ![2, 2, 1440, 160] reductionProjection1087 ![oldProjection805, oldProjection995, oldProjection489, oldProjection1256]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

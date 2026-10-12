import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical118
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical240
import NoFourMUBs.Step2.SOS.Canonical241
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical300
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical429
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.Canonical536
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions139
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical217
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection4480 : Integer.Sparse (Fin 1613) := [(0, 6), (81, 240), (94, -15), (698, -240), (700, -80), (1059, -240), (1227, -80), (1251, 55)]

def reductionPivot4480 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound4480 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9856).moment H =
      Integer.Sparse.eval reductionProjection4480 (momentVector H) := by
  have heq : reductionPivot4480 = (fun u v => (normalNode9856).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9856).moment H = injectiveMoment H reductionPivot4480 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9856).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4480 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4480 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4480 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1281, oldProjection1207, oldProjection1191, oldProjection1098] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4480 (0 : Fin 4)) = canonicalInput22626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1281 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22626 hH))).trans (oldProjectionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4480 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1207 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4480 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1191 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4480 (3 : Fin 4)) = canonicalInput19550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4480 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19550 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9856).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4480 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9856).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4480 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 72, 720] ![4, 2, 20, 2] reductionProjection4480 ![oldProjection1281, oldProjection1207, oldProjection1191, oldProjection1098]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4481 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (42, -16), (58, 48), (60, -16), (94, -2), (243, -16), (700, -64), (701, -16), (704, -48), (1251, -5)]

def reductionPivot4481 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound4481 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6787).moment H =
      Integer.Sparse.eval reductionProjection4481 (momentVector H) := by
  have heq : reductionPivot4481 = (fun u v => (normalNode6787).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6787).moment H = injectiveMoment H reductionPivot4481 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6787).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4481 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4481 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 9, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4481 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection977, oldProjection816, reductionProjection4333, oldProjection809] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4481 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection977 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4481 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5719 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection816 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5719 hH))).trans (oldProjectionSound816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4481 (2 : Fin 4)) = (normalNode6793).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4333 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4481 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection809 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4481 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6787).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4481 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6787).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4481 (j : Fin 4)))
      2 288 288 2 ![144, 72, 9, 36] ![2, 4, 32, 8] reductionProjection4481 ![oldProjection977, oldProjection816, reductionProjection4333, oldProjection809]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4482 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -20), (20, 5), (42, 80), (56, -240), (58, -480), (60, 160), (76, -240), (81, -720), (90, 80), (94, 70), (243, 160), (439, 720), (444, 1440), (446, 1440), (508, 720), (698, 880), (700, 1120), (701, 80), (704, 320), (1058, -240), (1059, 480), (1226, 160), (1227, 80), (1251, -10)]

def reductionPivot4482 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound4482 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1891).moment H =
      Integer.Sparse.eval reductionProjection4482 (momentVector H) := by
  have heq : reductionPivot4482 = (fun u v => (normalNode1891).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1891).moment H = injectiveMoment H reductionPivot4482 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1891).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4482 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4482 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4482 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4480, reductionProjection4481, reductionProjection4465, reductionProjection4127, reductionProjection4428] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4482 (0 : Fin 5)) = canonicalInput7557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4480 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7557 hH))).trans (reductionSound4480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4482 (1 : Fin 5)) = canonicalInput4055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4481 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4055 hH))).trans (reductionSound4481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4482 (2 : Fin 5)) = (normalNode1901).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4465 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4482 (3 : Fin 5)) = canonicalInput3866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3866 hH))).trans (reductionSound4127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4482 (4 : Fin 5)) = (normalNode1893).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4482 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1891).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4482 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1891).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4482 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 1440, 1440] ![1, 5, 80, 1, 1] reductionProjection4482 ![reductionProjection4480, reductionProjection4481, reductionProjection4465, reductionProjection4127, reductionProjection4428]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4483 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 60), (20, -20), (42, -80), (94, -40), (104, -80), (243, -160), (686, 240), (692, 240), (698, -80), (700, -240), (701, -160), (703, -80), (704, -320), (1251, -45)]

def reductionPivot4483 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -3, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound4483 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9651).moment H =
      Integer.Sparse.eval reductionProjection4483 (momentVector H) := by
  have heq : reductionPivot4483 = (fun u v => (normalNode9651).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9651).moment H = injectiveMoment H reductionPivot4483 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9651).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4483 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4483 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4483 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection755, oldProjection1170, oldProjection1166, oldProjection780] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4483 (0 : Fin 4)) = canonicalInput22487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection755 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22487 hH))).trans (reductionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4483 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4483 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1166⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1166 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4483 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6989 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4483 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6989 hH))).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9651).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4483 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9651).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4483 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 9, 144] ![20, 2, 160, 10] reductionProjection4483 ![reductionProjection755, oldProjection1170, oldProjection1166, oldProjection780]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4484 : Integer.Sparse (Fin 1613) := [(42, 1), (243, 1), (701, 1), (703, 1), (704, -1)]

def reductionPivot4484 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -1, 3], ![0, -1, 4, -3], ![0, 2, -3, 1]]

theorem reductionSound4484 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7924).moment H =
      Integer.Sparse.eval reductionProjection4484 (momentVector H) := by
  have heq : reductionPivot4484 = (fun u v => (normalNode7924).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7924).moment H = injectiveMoment H reductionPivot4484 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7924).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot4484 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4484 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4484 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection40, oldProjection80, oldProjection87] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4484 (0 : Fin 3)) = canonicalInput24745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4484 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection40 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4484 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection40 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24745 hH))).trans (oldProjectionSound40 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4484 (1 : Fin 3)) = canonicalInput15482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4484 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4484 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15482 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4484 (2 : Fin 3)) = canonicalInput15314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4484 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4484 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15314 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7924).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4484 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7924).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4484 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection4484 ![oldProjection40, oldProjection80, oldProjection87]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4485 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (43, -48), (61, -48), (94, 1), (701, 16), (704, 16)]

def reductionPivot4485 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![2, 0, 1, -3], ![-1, 4, -2, -1], ![0, -4, 1, 3]]

theorem reductionSound4485 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11217).moment H =
      Integer.Sparse.eval reductionProjection4485 (momentVector H) := by
  have heq : reductionPivot4485 = (fun u v => (normalNode11217).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11217).moment H = injectiveMoment H reductionPivot4485 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11217).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11217).entries)).symm
  have hshape : reductionPivot4485 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4485 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4485 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection190, oldProjection99, reductionProjection258] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4485 (0 : Fin 3)) = canonicalInput33863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4485 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection190 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4485 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33863 hH))).trans (oldProjectionSound190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4485 (1 : Fin 3)) = canonicalInput34306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4485 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection99 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4485 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection99 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34306 hH))).trans (oldProjectionSound99 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4485 (2 : Fin 3)) = canonicalInput34308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4485 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4485 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34308 hH))).trans (reductionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11217).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4485 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11217).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4485 (j : Fin 3)))
      3 144 144 3 ![48, 1, 1] ![3, 144, 144] reductionProjection4485 ![oldProjection190, oldProjection99, reductionProjection258]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4486 : Integer.Sparse (Fin 1613) := [(448, 1)]

theorem reductionSound4486 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code448).moment H =
      Integer.Sparse.eval reductionProjection4486 (momentVector H) := by
  have hc : coordinates (448 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code448) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4486, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4487 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (40, 48), (42, -16), (43, 48), (58, 48), (61, 48), (94, -3), (243, -16), (448, -144), (700, -16), (701, -32), (703, -16), (704, -16), (1251, -2)]

def reductionPivot4487 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 2, -3, 1], ![1, 0, 0, -1]]

theorem reductionSound4487 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1915).moment H =
      Integer.Sparse.eval reductionProjection4487 (momentVector H) := by
  have heq : reductionPivot4487 = (fun u v => (normalNode1915).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1915).moment H = injectiveMoment H reductionPivot4487 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1915).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4487 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4487 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4487 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4484, reductionProjection4137, reductionProjection4485, reductionProjection4486] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4487 (0 : Fin 4)) = (normalNode7924).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4484 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4487 (1 : Fin 4)) = canonicalInput4231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4137 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4231 hH))).trans (reductionSound4137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4487 (2 : Fin 4)) = canonicalInput3891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4485 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3891 hH))).trans (reductionSound4485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4487 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code448).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4486 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4487 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1915).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4487 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1915).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4487 (j : Fin 4)))
      2 288 288 2 ![9, 72, 144, 1] ![32, 4, 2, 288] reductionProjection4487 ![reductionProjection4484, reductionProjection4137, reductionProjection4485, reductionProjection4486]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4488 : Integer.Sparse (Fin 1613) := [(447, 1)]

theorem reductionSound4488 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code447).moment H =
      Integer.Sparse.eval reductionProjection4488 (momentVector H) := by
  have hc : coordinates (447 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code447) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4488, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4489 : Integer.Sparse (Fin 1613) := [(19, 12), (38, 48), (94, -5), (134, -144), (142, -144), (247, -16), (447, -144), (704, -16), (1251, -5)]

def reductionPivot4489 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 1, -2, 0]]

theorem reductionSound4489 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1908).moment H =
      Integer.Sparse.eval reductionProjection4489 (momentVector H) := by
  have heq : reductionPivot4489 = (fun u v => (normalNode1908).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1908).moment H = injectiveMoment H reductionPivot4489 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1908).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4489 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4489 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4489 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection996, reductionProjection757, reductionProjection846, reductionProjection4488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4489 (0 : Fin 4)) = canonicalInput17172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection996 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17172 hH))).trans (oldProjectionSound996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4489 (1 : Fin 4)) = canonicalInput4235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection757 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4235 hH))).trans (reductionSound757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4489 (2 : Fin 4)) = canonicalInput3889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection846 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3889 hH))).trans (reductionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4489 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code447).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4489 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1908).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4489 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1908).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4489 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection4489 ![oldProjection996, reductionProjection757, reductionProjection846, reductionProjection4488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4490 : Integer.Sparse (Fin 1613) := [(451, 1)]

theorem reductionSound4490 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code451).moment H =
      Integer.Sparse.eval reductionProjection4490 (momentVector H) := by
  have hc : coordinates (451 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code451) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4490, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4491 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -5), (243, -16), (447, -144), (451, -144), (485, -144), (686, 48), (704, -16), (1251, -4)]

def reductionPivot4491 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound4491 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1907).moment H =
      Integer.Sparse.eval reductionProjection4491 (momentVector H) := by
  have heq : reductionPivot4491 = (fun u v => (normalNode1907).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1907).moment H = injectiveMoment H reductionPivot4491 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1907).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4491 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4491 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4491 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2366, reductionProjection3749, reductionProjection4490, reductionProjection4488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4491 (0 : Fin 4)) = (normalNode7922).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4491 (1 : Fin 4)) = canonicalInput4230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3749 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4230 hH))).trans (reductionSound3749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4491 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code451).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4491 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code447).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4491 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1907).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4491 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1907).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4491 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection4491 ![reductionProjection2366, reductionProjection3749, reductionProjection4490, reductionProjection4488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4492 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -240), (20, 35), (38, -240), (40, -240), (42, 240), (43, -240), (58, -480), (60, 80), (61, -240), (94, 105), (104, 80), (134, 720), (142, 720), (241, 80), (243, 560), (247, 80), (447, 1440), (448, 720), (451, 720), (485, 720), (686, -480), (692, -240), (698, 320), (700, 800), (701, 320), (703, 160), (704, 720), (1052, -240), (1251, 120)]

def reductionPivot4492 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound4492 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1905).moment H =
      Integer.Sparse.eval reductionProjection4492 (momentVector H) := by
  have heq : reductionPivot4492 = (fun u v => (normalNode1905).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1905).moment H = injectiveMoment H reductionPivot4492 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1905).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot4492 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4492 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4492 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4483, reductionProjection844, reductionProjection4487, reductionProjection4489, reductionProjection4491] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4492 (0 : Fin 5)) = canonicalInput6601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4483 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6601 hH))).trans (reductionSound4483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4492 (1 : Fin 5)) = canonicalInput4049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4049 hH))).trans (reductionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4492 (2 : Fin 5)) = (normalNode1915).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4487 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4492 (3 : Fin 5)) = canonicalInput3879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4489 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3879 hH))).trans (reductionSound4489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4492 (4 : Fin 5)) = (normalNode1907).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4491 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4492 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1905).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4492 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1905).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4492 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 288, 288] ![1, 1, 5, 5, 5] reductionProjection4492 ![reductionProjection4483, reductionProjection844, reductionProjection4487, reductionProjection4489, reductionProjection4491]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4493 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (20, -5), (38, 120), (94, -30), (241, -40), (243, -80), (244, -40), (698, -120), (700, -200), (701, -40), (704, -80), (1053, 120), (1059, -40), (1251, -20)]

def reductionPivot4493 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -3, 4], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound4493 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9648).moment H =
      Integer.Sparse.eval reductionProjection4493 (momentVector H) := by
  have heq : reductionPivot4493 = (fun u v => (normalNode9648).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9648).moment H = injectiveMoment H reductionPivot4493 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9648).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4493 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4493 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4493 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection819, oldProjection1170, oldProjection1164, oldProjection935] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4493 (0 : Fin 4)) = canonicalInput22534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22534 hH))).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4493 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4493 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1164⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1164 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4493 (3 : Fin 4)) = canonicalInput19251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection935 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4493 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19251 hH))).trans (oldProjectionSound935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9648).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4493 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9648).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4493 (j : Fin 4)))
      2 720 720 2 ![720, 720, 9, 144] ![1, 1, 80, 5] reductionProjection4493 ![oldProjection819, oldProjection1170, oldProjection1164, oldProjection935]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4494 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (42, -32), (44, -16), (61, 48), (94, -8), (241, -16), (243, -48), (244, -32), (700, -16), (701, -64), (704, -64), (1053, 48), (1251, -5)]

def reductionPivot4494 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -2, 1]]

theorem reductionSound4494 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6797).moment H =
      Integer.Sparse.eval reductionProjection4494 (momentVector H) := by
  have heq : reductionPivot4494 = (fun u v => (normalNode6797).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6797).moment H = injectiveMoment H reductionPivot4494 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6797).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4494 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4494 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4494 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection981, oldProjection818, oldProjection814, reductionProjection4236] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4494 (0 : Fin 4)) = canonicalInput15423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection981 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15423 hH))).trans (oldProjectionSound981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4494 (1 : Fin 4)) = canonicalInput13539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection818 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13539 hH))).trans (oldProjectionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4494 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node814⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection814 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4494 (3 : Fin 4)) = (normalNode6798).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4236 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4494 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6797).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4494 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6797).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4494 (j : Fin 4)))
      2 288 288 2 ![72, 144, 9, 72] ![4, 2, 32, 4] reductionProjection4494 ![oldProjection981, oldProjection818, oldProjection814, reductionProjection4236]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4495 : Integer.Sparse (Fin 1613) := [(42, -2), (58, 6), (61, 3), (132, -9), (243, -1), (698, -2), (700, -2), (704, -2), (1052, 3)]

def reductionPivot4495 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 3, 0], ![0, -1, -3, 4], ![0, 2, 0, -2], ![1, 0, 0, -1]]

theorem reductionSound4495 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3035).moment H =
      Integer.Sparse.eval reductionProjection4495 (momentVector H) := by
  have heq : reductionPivot4495 = (fun u v => (normalNode3035).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3035).moment H = injectiveMoment H reductionPivot4495 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3035).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4495 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4495 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4495 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection782, oldProjection812, reductionProjection4234, oldProjection399] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4495 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6963 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection782 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection782 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6963 hH))).trans (oldProjectionSound782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4495 (1 : Fin 4)) = canonicalInput5914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection812 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5914 hH))).trans (oldProjectionSound812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4495 (2 : Fin 4)) = canonicalInput5871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5871 hH))).trans (reductionSound4234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4495 (3 : Fin 4)) = canonicalInput5868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection399 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4495 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5868 hH))).trans (oldProjectionSound399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3035).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4495 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3035).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4495 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection4495 ![oldProjection782, oldProjection812, reductionProjection4234, oldProjection399]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4496 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -220), (20, 35), (38, -240), (42, 320), (44, 80), (58, -480), (61, -480), (94, 150), (132, 720), (241, 160), (243, 640), (244, 240), (447, 1440), (451, 1440), (485, 1440), (686, -480), (698, 400), (700, 640), (701, 400), (704, 800), (1052, -240), (1053, -480), (1059, 80), (1251, 105)]

def reductionPivot4496 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound4496 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1906).moment H =
      Integer.Sparse.eval reductionProjection4496 (momentVector H) := by
  have heq : reductionPivot4496 = (fun u v => (normalNode1906).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1906).moment H = injectiveMoment H reductionPivot4496 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1906).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot4496 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4496 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4496 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4493, reductionProjection4494, reductionProjection4495, reductionProjection4491, reductionProjection4491] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4496 (0 : Fin 5)) = canonicalInput7579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4493 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7579 hH))).trans (reductionSound4493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4496 (1 : Fin 5)) = canonicalInput4068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4494 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4068 hH))).trans (reductionSound4494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4496 (2 : Fin 5)) = canonicalInput3885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4495 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3885 hH))).trans (reductionSound4495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4496 (3 : Fin 5)) = canonicalInput3880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4491 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3880 hH))).trans (reductionSound4491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4496 (4 : Fin 5)) = (normalNode1907).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4491 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4496 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1906).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4496 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1906).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4496 (j : Fin 5)))
      1 1440 1440 1 ![720, 288, 18, 288, 288] ![2, 5, 80, 5, 5] reductionProjection4496 ![reductionProjection4493, reductionProjection4494, reductionProjection4495, reductionProjection4491, reductionProjection4491]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4497 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -4), (42, -16), (94, -5), (243, -16), (244, -16), (246, -16), (686, 48), (701, -48), (703, -16), (704, -32), (1251, -1)]

def reductionPivot4497 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -3, 4], ![0, -2, 3, -1], ![0, 1, 1, -2], ![1, 0, 0, -1]]

theorem reductionSound4497 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9652).moment H =
      Integer.Sparse.eval reductionProjection4497 (momentVector H) := by
  have heq : reductionPivot4497 = (fun u v => (normalNode9652).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9652).moment H = injectiveMoment H reductionPivot4497 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9652).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4497 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4497 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4497 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection762, oldProjection1171, oldProjection781, oldProjection1097] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4497 (0 : Fin 4)) = canonicalInput22488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection762 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22488 hH))).trans (reductionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4497 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1171⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4497 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6990 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection781 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6990 hH))).trans (oldProjectionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4497 (3 : Fin 4)) = canonicalInput19254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4497 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19254 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9652).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4497 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9652).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4497 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 144] ![2, 2, 32, 2] reductionProjection4497 ![reductionProjection762, oldProjection1171, oldProjection781, oldProjection1097]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4498 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (58, 240), (60, -80), (94, 5), (243, -160), (698, -240), (700, -320), (1059, -80)]

def reductionPivot4498 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound4498 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6788).moment H =
      Integer.Sparse.eval reductionProjection4498 (momentVector H) := by
  have heq : reductionPivot4498 = (fun u v => (normalNode6788).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6788).moment H = injectiveMoment H reductionPivot4498 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6788).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4498 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4498 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 9, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4498 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1063, oldProjection817, oldProjection811, oldProjection809] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4498 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4498 (1 : Fin 4)) = canonicalInput13538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection817 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13538 hH))).trans (oldProjectionSound817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4498 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node811⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection811 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4498 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection809 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4498 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6788).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4498 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6788).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4498 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 9, 36] ![2, 160, 160, 40] reductionProjection4498 ![oldProjection1063, oldProjection817, oldProjection811, oldProjection809]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4499 : Integer.Sparse (Fin 1613) := [(450, 1)]

theorem reductionSound4499 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code450).moment H =
      Integer.Sparse.eval reductionProjection4499 (momentVector H) := by
  have hc : coordinates (450 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code450) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4499, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4500 : Integer.Sparse (Fin 1613) := [(19, 4), (38, 48), (94, -1), (132, -144), (139, -144), (241, -16), (243, -32), (450, -144), (698, -16), (704, -16), (1251, -1)]

def reductionPivot4500 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, 0, -2, 1]]

theorem reductionSound4500 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1916).moment H =
      Integer.Sparse.eval reductionProjection4500 (momentVector H) := by
  have heq : reductionPivot4500 = (fun u v => (normalNode1916).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1916).moment H = injectiveMoment H reductionPivot4500 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1916).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot4500 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4500 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4500 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1155, reductionProjection764, reductionProjection4499, oldProjection399] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4500 (0 : Fin 4)) = canonicalInput17175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1155 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17175 hH))).trans (oldProjectionSound1155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4500 (1 : Fin 4)) = canonicalInput4237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection764 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4237 hH))).trans (reductionSound764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4500 (2 : Fin 4)) = canonicalInput3892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3892 hH))).trans (reductionSound4499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4500 (3 : Fin 4)) = canonicalInput3886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection399 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4500 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3886 hH))).trans (oldProjectionSound399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1916).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4500 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1916).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4500 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection4500 ![oldProjection1155, reductionProjection764, reductionProjection4499, oldProjection399]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4501 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (42, 16), (94, 3), (700, 16), (701, 32), (703, 16), (704, 32), (1251, 2)]

def reductionPivot4501 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![0, 2, -3, 1], ![1, 0, 3, -4]]

theorem reductionSound4501 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7894).moment H =
      Integer.Sparse.eval reductionProjection4501 (momentVector H) := by
  have heq : reductionPivot4501 = (fun u v => (normalNode7894).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7894).moment H = injectiveMoment H reductionPivot4501 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7894).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot4501 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4501 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4501 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection88, oldProjection173, oldProjection80] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4501 (0 : Fin 3)) = canonicalInput13540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4501 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection88 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4501 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13540 hH))).trans (oldProjectionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4501 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6304 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4501 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4501 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6304 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4501 (2 : Fin 3)) = canonicalInput15473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4501 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4501 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15473 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7894).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4501 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7894).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4501 (j : Fin 3)))
      3 144 144 3 ![3, 48, 3] ![48, 3, 48] reductionProjection4501 ![oldProjection88, oldProjection173, oldProjection80]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4502 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (42, -32), (43, 48), (60, -16), (61, 48), (94, -3), (243, -16), (451, -144), (700, -64), (701, -48), (703, -16), (704, -64), (1251, -5)]

def reductionPivot4502 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 1, -3, 1]]

theorem reductionSound4502 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1912).moment H =
      Integer.Sparse.eval reductionProjection4502 (momentVector H) := by
  have heq : reductionPivot4502 = (fun u v => (normalNode1912).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1912).moment H = injectiveMoment H reductionPivot4502 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1912).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4502 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4502 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4502 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4501, reductionProjection843, reductionProjection4490, reductionProjection4485] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4502 (0 : Fin 4)) = canonicalInput6616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4501 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6616 hH))).trans (reductionSound4501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4502 (1 : Fin 4)) = canonicalInput4061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection843 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4061 hH))).trans (reductionSound843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4502 (2 : Fin 4)) = canonicalInput3890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3890 hH))).trans (reductionSound4490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4502 (3 : Fin 4)) = canonicalInput3888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4485 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4502 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3888 hH))).trans (reductionSound4485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1912).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4502 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1912).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4502 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection4502 ![reductionProjection4501, reductionProjection843, reductionProjection4490, reductionProjection4485]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4503 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (58, 48), (94, -7), (450, -144), (451, -144), (686, 48), (698, -16), (700, -48), (701, -16), (704, -48), (1251, -6)]

def reductionPivot4503 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 0, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound4503 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1911).moment H =
      Integer.Sparse.eval reductionProjection4503 (momentVector H) := by
  have heq : reductionPivot4503 = (fun u v => (normalNode1911).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1911).moment H = injectiveMoment H reductionPivot4503 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1911).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4503 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4503 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 36, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4503 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1097, oldProjection809, reductionProjection4490, reductionProjection4499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4503 (0 : Fin 4)) = canonicalInput6614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6614 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4503 (1 : Fin 4)) = canonicalInput4059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection809 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4059 hH))).trans (oldProjectionSound809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4503 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code451).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4503 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code450).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4503 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1911).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4503 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1911).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4503 (j : Fin 4)))
      2 288 288 2 ![144, 36, 1, 1] ![2, 8, 288, 288] reductionProjection4503 ![oldProjection1097, oldProjection809, reductionProjection4490, reductionProjection4499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4504 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -180), (20, 35), (38, -240), (42, 320), (43, -240), (58, -480), (60, 160), (61, -240), (94, 75), (132, 720), (139, 720), (241, 80), (243, 480), (244, 80), (246, 80), (450, 1440), (451, 1440), (686, -480), (698, 400), (700, 880), (701, 560), (703, 160), (704, 800), (1059, 80), (1251, 65)]

def reductionPivot4504 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound4504 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1909).moment H =
      Integer.Sparse.eval reductionProjection4504 (momentVector H) := by
  have heq : reductionPivot4504 = (fun u v => (normalNode1909).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1909).moment H = injectiveMoment H reductionPivot4504 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1909).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4504 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4504 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4504 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4497, reductionProjection4498, reductionProjection4500, reductionProjection4502, reductionProjection4503] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4504 (0 : Fin 5)) = canonicalInput6605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4497 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6605 hH))).trans (reductionSound4497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4504 (1 : Fin 5)) = canonicalInput4052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4498 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4052 hH))).trans (reductionSound4498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4504 (2 : Fin 5)) = (normalNode1916).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4500 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4504 (3 : Fin 5)) = canonicalInput3883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4502 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3883 hH))).trans (reductionSound4502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4504 (4 : Fin 5)) = (normalNode1911).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4503 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4504 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1909).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4504 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1909).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4504 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 288, 288] ![5, 1, 5, 5, 5] reductionProjection4504 ![reductionProjection4497, reductionProjection4498, reductionProjection4500, reductionProjection4502, reductionProjection4503]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4505 : Integer.Sparse (Fin 1613) := [(42, 1), (700, 2), (701, -1), (704, 1)]

def reductionPivot4505 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, 0, -3, 4], ![0, -2, 3, -1], ![0, 2, 1, -3]]

theorem reductionSound4505 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9654).moment H =
      Integer.Sparse.eval reductionProjection4505 (momentVector H) := by
  have heq : reductionPivot4505 = (fun u v => (normalNode9654).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9654).moment H = injectiveMoment H reductionPivot4505 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9654).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot4505 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4505 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4505 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection38, oldProjection83, oldProjection88] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4505 (0 : Fin 3)) = canonicalInput27502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4505 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection38 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4505 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27502 hH))).trans (oldProjectionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4505 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7039 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4505 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4505 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7039 hH))).trans (oldProjectionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4505 (2 : Fin 3)) = canonicalInput19255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4505 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection88 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4505 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19255 hH))).trans (oldProjectionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9654).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4505 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9654).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4505 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection4505 ![oldProjection38, oldProjection83, oldProjection88]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4506 : Integer.Sparse (Fin 1613) := [(19, 2), (42, -8), (94, -3), (243, -8), (686, 24), (698, -8), (700, -32), (704, -16), (1251, -5)]

def reductionPivot4506 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -3, 4], ![0, -2, 3, -1], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound4506 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9653).moment H =
      Integer.Sparse.eval reductionProjection4506 (momentVector H) := by
  have heq : reductionPivot4506 = (fun u v => (normalNode9653).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9653).moment H = injectiveMoment H reductionPivot4506 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9653).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4506 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4506 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4506 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1282, oldProjection1174, reductionProjection4505, oldProjection1097] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4506 (0 : Fin 4)) = canonicalInput22535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1282 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22535 hH))).trans (oldProjectionSound1282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4506 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4506 (2 : Fin 4)) = (normalNode9654).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4505 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4506 (3 : Fin 4)) = canonicalInput19254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4506 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19254 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9653).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4506 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9653).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4506 (j : Fin 4)))
      2 144 144 2 ![36, 144, 9, 144] ![4, 1, 16, 1] reductionProjection4506 ![oldProjection1282, oldProjection1174, reductionProjection4505, oldProjection1097]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4507 : Integer.Sparse (Fin 1613) := [(449, 1)]

theorem reductionSound4507 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code449).moment H =
      Integer.Sparse.eval reductionProjection4507 (momentVector H) := by
  have hc : coordinates (449 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code449) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4507, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4508 : Integer.Sparse (Fin 1613) := [(243, -1), (449, -9), (450, -9), (506, -9), (686, 3), (1223, 3), (1225, -1), (1226, -1)]

def reductionPivot4508 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 2, -1, -1], ![1, 0, -2, 1]]

theorem reductionSound4508 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1917).moment H =
      Integer.Sparse.eval reductionProjection4508 (momentVector H) := by
  have heq : reductionPivot4508 = (fun u v => (normalNode1917).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1917).moment H = injectiveMoment H reductionPivot4508 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1917).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot4508 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4508 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4508 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection954, reductionProjection2060, reductionProjection4499, reductionProjection4507] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4508 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection954 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection954 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4508 (1 : Fin 4)) = canonicalInput4233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2060 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4233 hH))).trans (reductionSound2060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4508 (2 : Fin 4)) = canonicalInput3892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3892 hH))).trans (reductionSound4499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4508 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code449).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4507 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4508 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1917).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4508 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1917).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4508 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection4508 ![oldProjection954, reductionProjection2060, reductionProjection4499, reductionProjection4507]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4509 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (42, -32), (44, -16), (58, 48), (61, 48), (94, -5), (243, -48), (244, -32), (451, -144), (698, -16), (700, -32), (701, -48), (704, -48), (1251, -2)]

def reductionPivot4509 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 1, -3, 1]]

theorem reductionSound4509 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1914).moment H =
      Integer.Sparse.eval reductionProjection4509 (momentVector H) := by
  have heq : reductionPivot4509 = (fun u v => (normalNode1914).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1914).moment H = injectiveMoment H reductionPivot4509 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1914).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4509 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4509 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4509 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection935, reductionProjection4236, reductionProjection4490, reductionProjection4234] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4509 (0 : Fin 4)) = canonicalInput7586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection935 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7586 hH))).trans (oldProjectionSound935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4509 (1 : Fin 4)) = canonicalInput4076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4236 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4076 hH))).trans (reductionSound4236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4509 (2 : Fin 4)) = canonicalInput3890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3890 hH))).trans (reductionSound4490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4509 (3 : Fin 4)) = canonicalInput3887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4509 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3887 hH))).trans (reductionSound4234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1914).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4509 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1914).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4509 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 9] ![2, 4, 288, 32] reductionProjection4509 ![oldProjection935, reductionProjection4236, reductionProjection4490, reductionProjection4234]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4510 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (38, 48), (61, 48), (94, -3), (134, -144), (450, -144), (698, -16), (700, -16), (701, -16), (704, -16), (1061, 96), (1251, -2)]

def reductionPivot4510 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![1, 0, -2, 1], ![1, 1, -2, 0]]

theorem reductionSound4510 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1913).moment H =
      Integer.Sparse.eval reductionProjection4510 (momentVector H) := by
  have heq : reductionPivot4510 = (fun u v => (normalNode1913).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1913).moment H = injectiveMoment H reductionPivot4510 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1913).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4510 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4510 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4510 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection997, oldProjection813, reductionProjection846, reductionProjection4499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4510 (0 : Fin 4)) = canonicalInput7585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7585 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4510 (1 : Fin 4)) = canonicalInput4075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection813 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4075 hH))).trans (oldProjectionSound813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4510 (2 : Fin 4)) = canonicalInput3889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection846 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3889 hH))).trans (reductionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4510 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code450).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4510 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1913).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4510 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1913).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4510 (j : Fin 4)))
      2 288 288 2 ![72, 144, 1, 1] ![4, 2, 288, 288] reductionProjection4510 ![oldProjection997, oldProjection813, reductionProjection846, reductionProjection4499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4511 : Integer.Sparse (Fin 1613) := [(19, -24), (20, 5), (38, -48), (42, 64), (44, 16), (58, -96), (60, 16), (61, -96), (94, 16), (134, 144), (243, 96), (244, 32), (449, 144), (450, 288), (451, 144), (506, 144), (686, -96), (698, 48), (700, 176), (701, 80), (704, 144), (1061, -96), (1223, -48), (1225, 16), (1226, 16), (1251, 19)]

def reductionPivot4511 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound4511 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1910).moment H =
      Integer.Sparse.eval reductionProjection4511 (momentVector H) := by
  have heq : reductionPivot4511 = (fun u v => (normalNode1910).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1910).moment H = injectiveMoment H reductionPivot4511 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1910).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4511 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4511 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4511 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4506, reductionProjection4481, reductionProjection4508, reductionProjection4509, reductionProjection4510] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4511 (0 : Fin 5)) = canonicalInput6606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4506 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6606 hH))).trans (reductionSound4506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4511 (1 : Fin 5)) = canonicalInput4055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4481 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4055 hH))).trans (reductionSound4481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4511 (2 : Fin 5)) = (normalNode1917).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4508 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4511 (3 : Fin 5)) = canonicalInput3884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4509 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3884 hH))).trans (reductionSound4509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4511 (4 : Fin 5)) = (normalNode1913).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4511 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1910).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4511 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1910).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4511 (j : Fin 5)))
      1 288 288 1 ![144, 288, 18, 288, 288] ![2, 1, 16, 1, 1] reductionProjection4511 ![reductionProjection4506, reductionProjection4481, reductionProjection4508, reductionProjection4509, reductionProjection4510]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

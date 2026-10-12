import NoFourMUBs.Step2.SOS.Canonical159
import NoFourMUBs.Step2.SOS.Canonical160
import NoFourMUBs.Step2.SOS.Canonical161
import NoFourMUBs.Step2.SOS.Canonical165
import NoFourMUBs.Step2.SOS.Canonical166
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions279
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions286
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical143
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical148
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical149
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical279
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9248 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -80), (20, 15), (94, -15), (241, 160), (243, 80), (423, 720), (610, 720), (668, 720), (694, -240), (698, 400), (1047, -240), (1055, -240), (1058, -240), (1125, 720), (1144, 720), (1183, 720), (1193, -1440), (1206, 720), (1226, 240), (1227, 80), (1250, 60), (1251, -45)]

def reductionPivot9248 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound9248 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5464).moment H =
      Integer.Sparse.eval reductionProjection9248 (momentVector H) := by
  have heq : reductionPivot9248 = (fun u v => (normalNode5464).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5464).moment H = injectiveMoment H reductionPivot9248 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5464).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9248 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9248 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 360, 1, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9248 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8938, reductionProjection9176, oldProjection1994, reductionProjection2639, oldProjection1646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9248 (0 : Fin 5)) = (normalNode5179).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8938 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9248 (1 : Fin 5)) = (normalNode5461).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9176 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9248 (2 : Fin 5)) = canonicalInput10622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1994 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10622 hH))).trans (oldProjectionSound1994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9248 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1193).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2639 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9248 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4738 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1646 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9248 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4738 hH))).trans (oldProjectionSound1646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5464).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9248 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5464).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9248 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 360, 1, 720] ![1, 5, 4, 1440, 2] reductionProjection9248 ![reductionProjection8938, reductionProjection9176, oldProjection1994, reductionProjection2639, oldProjection1646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9249 : Integer.Sparse (Fin 1613) := [(423, -1), (668, -1), (1125, -1), (1183, -1)]

def reductionPivot9249 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, -2, 1, -1]]

theorem reductionSound9249 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5465).moment H =
      Integer.Sparse.eval reductionProjection9249 (momentVector H) := by
  have heq : reductionPivot9249 = (fun u v => (normalNode5465).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5465).moment H = injectiveMoment H reductionPivot9249 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5465).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9249 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9249 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9249 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1030, reductionProjection191, oldProjection521, oldProjection472] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9249 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1125).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9249 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1183).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9249 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4737 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection521 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4737 hH))).trans (oldProjectionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9249 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4739 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection472 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9249 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4739 hH))).trans (oldProjectionSound472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5465).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9249 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5465).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9249 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9249 ![reductionProjection1030, reductionProjection191, oldProjection521, oldProjection472]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9250 : Integer.Sparse (Fin 1613) := [(249, -2), (287, -1), (1185, -1)]

def reductionPivot9250 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 1, 3, -5]]

theorem reductionSound9250 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5466).moment H =
      Integer.Sparse.eval reductionProjection9250 (momentVector H) := by
  have heq : reductionPivot9250 = (fun u v => (normalNode5466).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5466).moment H = injectiveMoment H reductionPivot9250 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5466).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9250 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9250 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9250 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1756, reductionProjection9108, reductionProjection1756, oldProjection449] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9250 (0 : Fin 4)) = canonicalInput10195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1756 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10195 hH))).trans (reductionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9250 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1185).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9108 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9250 (2 : Fin 4)) = canonicalInput10626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1756 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10626 hH))).trans (reductionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9250 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4743 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9250 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4743 hH))).trans (oldProjectionSound449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5466).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9250 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5466).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9250 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9250 ![reductionProjection1756, reductionProjection9108, reductionProjection1756, oldProjection449]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9251 : Integer.Sparse (Fin 1613) := [(426, -1), (666, -1), (1126, -1), (1187, -1)]

def reductionPivot9251 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -2, 2, -1], ![1, 1, 1, -3]]

theorem reductionSound9251 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5467).moment H =
      Integer.Sparse.eval reductionProjection9251 (momentVector H) := by
  have heq : reductionPivot9251 = (fun u v => (normalNode5467).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5467).moment H = injectiveMoment H reductionPivot9251 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5467).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9251 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9251 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9251 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection682, reductionProjection158, oldProjection473, oldProjection520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9251 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node682⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9251 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1187).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection158 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9251 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4744 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4744 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9251 (3 : Fin 4)) = canonicalInput10627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection520 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9251 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10627 hH))).trans (oldProjectionSound520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5467).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9251 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5467).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9251 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9251 ![oldProjection682, reductionProjection158, oldProjection473, oldProjection520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9252 : Integer.Sparse (Fin 1613) := [(0, 3), (426, 360), (478, 360), (602, 1080), (666, 720), (698, 160), (890, 720), (1190, -720), (1227, -120), (1251, -55), (1389, -240)]

def reductionPivot9252 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, -1, -1]]

theorem reductionSound9252 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5468).moment H =
      Integer.Sparse.eval reductionProjection9252 (momentVector H) := by
  have heq : reductionPivot9252 = (fun u v => (normalNode5468).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5468).moment H = injectiveMoment H reductionPivot9252 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5468).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9252 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9252 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 36, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9252 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2187, oldProjection2072, reductionProjection2688, oldProjection2225, oldProjection1996] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9252 (0 : Fin 5)) = canonicalInput11085.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11085 hH))).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9252 (1 : Fin 5)) = canonicalInput10655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2072 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10655 hH))).trans (oldProjectionSound2072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9252 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9252 (3 : Fin 5)) = canonicalInput10609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2225 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10609 hH))).trans (oldProjectionSound2225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9252 (4 : Fin 5)) = canonicalInput10608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1996 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9252 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10608 hH))).trans (oldProjectionSound1996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5468).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9252 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5468).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9252 (j : Fin 5)))
      1 720 1440 2 ![360, 36, 1, 1440, 1440] ![4, 40, 1440, 1, 1] reductionProjection9252 ![reductionProjection2187, oldProjection2072, reductionProjection2688, oldProjection2225, oldProjection1996]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9253 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (285, -720), (423, -720), (698, -80), (775, -720), (1058, 240), (1227, -80), (1251, 15)]

def reductionPivot9253 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, -2, -1, 1]]

theorem reductionSound9253 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5469).moment H =
      Integer.Sparse.eval reductionProjection9253 (momentVector H) := by
  have heq : reductionPivot9253 = (fun u v => (normalNode5469).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5469).moment H = injectiveMoment H reductionPivot9253 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5469).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9253 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9253 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9253 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection588, oldProjection944, oldProjection448, oldProjection472] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9253 (0 : Fin 4)) = canonicalInput11087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11087 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9253 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4777 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection944 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4777 hH))).trans (oldProjectionSound944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9253 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4742 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection448 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4742 hH))).trans (oldProjectionSound448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9253 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4739 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection472 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9253 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4739 hH))).trans (oldProjectionSound472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5469).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9253 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5469).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9253 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection9253 ![oldProjection588, oldProjection944, oldProjection448, oldProjection472]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9254 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 5), (94, -20), (241, 160), (243, 240), (285, 720), (287, 720), (423, 720), (426, 720), (698, 240), (700, 160), (758, 720), (761, 720), (1052, -960), (1186, 720), (1191, -1440), (1197, 720), (1198, 720), (1219, -240), (1223, -240), (1226, 160), (1251, -20)]

def reductionPivot9254 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]

theorem reductionSound9254 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5470).moment H =
      Integer.Sparse.eval reductionProjection9254 (momentVector H) := by
  have heq : reductionPivot9254 = (fun u v => (normalNode5470).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5470).moment H = injectiveMoment H reductionPivot9254 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5470).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9254 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9254 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 288, 288, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9254 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6985, reductionProjection7814, reductionProjection2678, reductionProjection2714, reductionProjection2677] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9254 (0 : Fin 5)) = canonicalInput12023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6985 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12023 hH))).trans (reductionSound6985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9254 (1 : Fin 5)) = canonicalInput10769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7814 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10769 hH))).trans (reductionSound7814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9254 (2 : Fin 5)) = canonicalInput10623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2678 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10623 hH))).trans (reductionSound2678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9254 (3 : Fin 5)) = canonicalInput10612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2714 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10612 hH))).trans (reductionSound2714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9254 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2677 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9254 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5470).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9254 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5470).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9254 (j : Fin 5)))
      1 1440 1440 1 ![48, 288, 288, 1440, 1] ![30, 5, 5, 1, 1440] reductionProjection9254 ![reductionProjection6985, reductionProjection7814, reductionProjection2678, reductionProjection2714, reductionProjection2677]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9255 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (94, -2), (285, -144), (692, 48), (1053, 48), (1199, -144), (1251, -1), (1267, -144)]

def reductionPivot9255 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 0, 4, -4], ![2, -2, -1, 1]]

theorem reductionSound9255 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5473).moment H =
      Integer.Sparse.eval reductionProjection9255 (momentVector H) := by
  have heq : reductionPivot9255 = (fun u v => (normalNode5473).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5473).moment H = injectiveMoment H reductionPivot9255 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5473).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9255 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9255 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9255 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2228, reductionProjection9147, oldProjection448, reductionProjection2226] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9255 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1267).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2228 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9255 (1 : Fin 4)) = canonicalInput10772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10772 hH))).trans (reductionSound9147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9255 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4742 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection448 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4742 hH))).trans (oldProjectionSound448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9255 (3 : Fin 4)) = canonicalInput10615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9255 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10615 hH))).trans (reductionSound2226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5473).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9255 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5473).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9255 (j : Fin 4)))
      2 288 288 2 ![1, 1, 1, 144] ![288, 288, 288, 2] reductionProjection9255 ![reductionProjection2228, reductionProjection9147, oldProjection448, reductionProjection2226]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9256 : Integer.Sparse (Fin 1613) := [(0, -4), (37, -240), (81, -720), (94, 35), (423, 2160), (668, 2160), (697, -720), (698, 720), (1052, -720), (1058, -240), (1059, 480), (1125, 2160), (1183, 1440), (1227, 240), (1251, -85)]

def reductionPivot9256 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -2, 1, -1]]

theorem reductionSound9256 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5477).moment H =
      Integer.Sparse.eval reductionProjection9256 (momentVector H) := by
  have heq : reductionPivot9256 = (fun u v => (normalNode5477).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5477).moment H = injectiveMoment H reductionPivot9256 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5477).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9256 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9256 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9256 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8972, reductionProjection9249, reductionProjection9249, oldProjection1835, oldProjection1654] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9256 (0 : Fin 5)) = (normalNode5191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9256 (1 : Fin 5)) = (normalNode5465).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9249 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9256 (2 : Fin 5)) = canonicalInput10640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9249 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10640 hH))).trans (reductionSound9249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9256 (3 : Fin 5)) = canonicalInput10646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1835 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10646 hH))).trans (oldProjectionSound1835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9256 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4754 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9256 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4754 hH))).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5477).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9256 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5477).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9256 (j : Fin 5)))
      1 1440 1440 1 ![720, 2, 2, 1440, 1440] ![2, 720, 720, 1, 1] reductionProjection9256 ![reductionProjection8972, reductionProjection9249, reductionProjection9249, oldProjection1835, oldProjection1654]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9257 : Integer.Sparse (Fin 1613) := [(100, -6), (228, -6), (249, 18), (287, 9), (698, 2), (1185, 6), (1218, -2), (1223, -6), (1226, 2), (1227, 1)]

def reductionPivot9257 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 1, 3, -5]]

theorem reductionSound9257 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5478).moment H =
      Integer.Sparse.eval reductionProjection9257 (momentVector H) := by
  have heq : reductionPivot9257 = (fun u v => (normalNode5478).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5478).moment H = injectiveMoment H reductionPivot9257 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5478).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9257 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9257 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 2, 2, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9257 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8832, reductionProjection9250, reductionProjection9250, reductionProjection8832, oldProjection1580] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9257 (0 : Fin 5)) = (normalNode5192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8832 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9257 (1 : Fin 5)) = (normalNode5466).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9250 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9257 (2 : Fin 5)) = canonicalInput10641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9250 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10641 hH))).trans (reductionSound9250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9257 (3 : Fin 5)) = canonicalInput10647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8832 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10647 hH))).trans (reductionSound8832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9257 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4756 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1580 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9257 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4756 hH))).trans (oldProjectionSound1580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5478).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9257 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5478).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9257 (j : Fin 5)))
      1 6 18 3 ![18, 2, 2, 18, 18] ![1, 9, 9, 1, 1] reductionProjection9257 ![reductionProjection8832, reductionProjection9250, reductionProjection9250, reductionProjection8832, oldProjection1580]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9258 : Integer.Sparse (Fin 1613) := [(0, -1), (45, -240), (426, 2160), (666, 2160), (697, -720), (698, 880), (1126, 2160), (1187, 1440), (1219, -720), (1226, 320), (1227, 400), (1251, -135), (1389, -720)]

def reductionPivot9258 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 1, 1, -3]]

theorem reductionSound9258 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5479).moment H =
      Integer.Sparse.eval reductionProjection9258 (momentVector H) := by
  have heq : reductionPivot9258 = (fun u v => (normalNode5479).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5479).moment H = injectiveMoment H reductionPivot9258 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5479).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9258 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9258 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 36, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9258 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2221, reductionProjection9251, reductionProjection9251, oldProjection2064, oldProjection1837] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9258 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2221⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2221 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9258 (1 : Fin 5)) = (normalNode5467).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9251 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9258 (2 : Fin 5)) = canonicalInput10642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9251 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10642 hH))).trans (reductionSound9251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9258 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4757 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2064 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4757 hH))).trans (oldProjectionSound2064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9258 (4 : Fin 5)) = canonicalInput10648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1837 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9258 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10648 hH))).trans (oldProjectionSound1837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5479).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9258 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5479).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9258 (j : Fin 5)))
      1 1440 1440 1 ![720, 2, 2, 36, 1440] ![2, 720, 720, 40, 1] reductionProjection9258 ![oldProjection2221, reductionProjection9251, reductionProjection9251, oldProjection2064, oldProjection1837]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9259 : Integer.Sparse (Fin 1613) := [(0, 2), (81, -240), (94, 5), (229, -480), (285, 720), (423, 720), (698, 240), (775, 720), (1040, -240), (1047, -240), (1052, -240), (1055, -480), (1058, -240), (1059, 160), (1060, -240), (1227, 80), (1251, -25)]

def reductionPivot9259 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, -2, -1, 1]]

theorem reductionSound9259 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5480).moment H =
      Integer.Sparse.eval reductionProjection9259 (momentVector H) := by
  have heq : reductionPivot9259 = (fun u v => (normalNode5480).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5480).moment H = injectiveMoment H reductionPivot9259 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5480).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9259 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9259 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9259 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8991, reductionProjection9253, oldProjection944, reductionProjection3872, oldProjection2280] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9259 (0 : Fin 5)) = (normalNode5204).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8991 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9259 (1 : Fin 5)) = (normalNode5469).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9253 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9259 (2 : Fin 5)) = canonicalInput10651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection944 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10651 hH))).trans (oldProjectionSound944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9259 (3 : Fin 5)) = canonicalInput10654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3872 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10654 hH))).trans (reductionSound3872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9259 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2280⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2280 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9259 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5480).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9259 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5480).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9259 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 720, 1440, 1440] ![2, 1, 2, 1, 1] reductionProjection9259 ![reductionProjection8991, reductionProjection9253, oldProjection944, reductionProjection3872, oldProjection2280]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9260 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -960), (94, 10), (153, 720), (160, 720), (197, 1440), (698, 880), (1050, -480), (1055, -480), (1058, -960), (1059, 560), (1189, -1440), (1221, -720), (1227, 320), (1251, -125)]

def reductionPivot9260 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, -2, -1, 1]]

theorem reductionSound9260 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5481).moment H =
      Integer.Sparse.eval reductionProjection9260 (momentVector H) := by
  have heq : reductionPivot9260 = (fun u v => (normalNode5481).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5481).moment H = injectiveMoment H reductionPivot9260 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5481).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9260 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9260 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 1440, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9260 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8993, reductionProjection959, reductionProjection3872, reductionProjection962, oldProjection2282] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9260 (0 : Fin 5)) = (normalNode5207).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8993 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9260 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1189).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection959 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection959 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9260 (2 : Fin 5)) = canonicalInput10654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3872 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10654 hH))).trans (reductionSound3872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9260 (3 : Fin 5)) = canonicalInput10658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection962 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10658 hH))).trans (reductionSound962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9260 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2282⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2282 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9260 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5481).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9260 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5481).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9260 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1, 1440, 288, 720] ![1, 1440, 1, 5, 2] reductionProjection9260 ![reductionProjection8993, reductionProjection959, reductionProjection3872, reductionProjection962, oldProjection2282]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9261 : Integer.Sparse (Fin 1613) := [(72, -144), (81, -96), (94, -7), (243, 32), (423, 144), (698, 128), (700, 96), (758, 144), (761, 288), (806, 288), (865, 288), (1044, -48), (1050, -96), (1052, -144), (1058, -48), (1059, 96), (1197, 288), (1221, -96), (1227, 32), (1251, -11)]

def reductionPivot9261 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, -2, 0, 0]]

theorem reductionSound9261 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5482).moment H =
      Integer.Sparse.eval reductionProjection9261 (momentVector H) := by
  have heq : reductionPivot9261 = (fun u v => (normalNode5482).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5482).moment H = injectiveMoment H reductionPivot9261 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5482).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9261 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9261 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 48, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9261 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2965, reductionProjection2722, oldProjection1999, reductionProjection187, reductionProjection5344] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9261 (0 : Fin 5)) = (normalNode5210).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2965 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9261 (1 : Fin 5)) = (normalNode5471).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2722 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9261 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4764 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4764 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9261 (3 : Fin 5)) = (normalNode5494).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection187 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9261 (4 : Fin 5)) = (normalNode5496).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9261 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5482).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9261 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5482).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9261 (j : Fin 5)))
      1 288 1440 5 ![1440, 48, 1440, 2, 1440] ![1, 30, 1, 720, 1] reductionProjection9261 ![reductionProjection2965, reductionProjection2722, oldProjection1999, reductionProjection187, reductionProjection5344]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9262 : Integer.Sparse (Fin 1613) := [(719, -1), (761, -1), (1133, -1), (1199, -1)]

def reductionPivot9262 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 1, -2, 1], ![2, -2, -1, 1]]

theorem reductionSound9262 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5499).moment H =
      Integer.Sparse.eval reductionProjection9262 (momentVector H) := by
  have heq : reductionPivot9262 = (fun u v => (normalNode5499).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5499).moment H = injectiveMoment H reductionPivot9262 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5499).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9262 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9262 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9262 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2233, reductionProjection178, reductionProjection9147, reductionProjection6323] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9262 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1133).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2233 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9262 (1 : Fin 4)) = canonicalInput10742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10742 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9262 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1199).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9262 (3 : Fin 4)) = canonicalInput10752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6323 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9262 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10752 hH))).trans (reductionSound6323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5499).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9262 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5499).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9262 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9262 ![reductionProjection2233, reductionProjection178, reductionProjection9147, reductionProjection6323]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9263 : Integer.Sparse (Fin 1613) := [(10, 48), (19, 4), (20, 2), (72, 48), (94, 1), (106, -16), (229, 48), (243, -16), (244, -32), (700, -16), (701, -16), (719, -144), (1039, 48), (1058, 48), (1060, 48), (1251, -1)]

def reductionPivot9263 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, -2, -2, 2]]

theorem reductionSound9263 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5500).moment H =
      Integer.Sparse.eval reductionProjection9263 (momentVector H) := by
  have heq : reductionPivot9263 = (fun u v => (normalNode5500).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5500).moment H = injectiveMoment H reductionPivot9263 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5500).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9263 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9263 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9263 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7691, oldProjection1017, reductionProjection6323, reductionProjection8627] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9263 (0 : Fin 4)) = canonicalInput10305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7691 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7691 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10305 hH))).trans (reductionSound7691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9263 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4824 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4824 hH))).trans (oldProjectionSound1017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9263 (2 : Fin 4)) = canonicalInput10752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6323 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10752 hH))).trans (reductionSound6323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9263 (3 : Fin 4)) = canonicalInput10755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8627 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9263 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10755 hH))).trans (reductionSound8627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5500).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9263 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5500).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9263 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection9263 ![reductionProjection7691, oldProjection1017, reductionProjection6323, reductionProjection8627]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9264 : Integer.Sparse (Fin 1613) := [(0, -2), (10, -480), (19, -20), (20, 5), (72, -960), (81, -480), (94, 20), (106, 80), (229, -480), (243, 160), (244, 320), (285, 720), (692, -240), (698, 160), (700, 480), (701, 240), (719, 1440), (761, 1440), (1039, -480), (1040, -240), (1053, -240), (1058, -480), (1059, 80), (1060, -240), (1133, 1440), (1199, 1440), (1221, -240), (1227, 80), (1251, 5), (1267, 720)]

def reductionPivot9264 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, -2, -1, 1]]

theorem reductionSound9264 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5483).moment H =
      Integer.Sparse.eval reductionProjection9264 (momentVector H) := by
  have heq : reductionPivot9264 = (fun u v => (normalNode5483).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5483).moment H = injectiveMoment H reductionPivot9264 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5483).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9264 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9264 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9264 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9006, reductionProjection9255, reductionProjection5344, reductionProjection9262, reductionProjection9263] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9264 (0 : Fin 5)) = (normalNode5216).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9006 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9006 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9264 (1 : Fin 5)) = (normalNode5473).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9255 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9264 (2 : Fin 5)) = (normalNode5496).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9264 (3 : Fin 5)) = (normalNode5499).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9262 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9264 (4 : Fin 5)) = (normalNode5500).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9263 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9264 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5483).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9264 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5483).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9264 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 1440, 2, 288] ![10, 5, 1, 720, 5] reductionProjection9264 ![reductionProjection9006, reductionProjection9255, reductionProjection5344, reductionProjection9262, reductionProjection9263]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9265 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (81, -240), (94, 40), (241, 80), (426, 2160), (698, 960), (775, 720), (956, 1440), (1047, -240), (1055, -480), (1058, -480), (1139, 1440), (1203, 1440), (1219, -240), (1226, 400), (1227, 320), (1251, -145)]

def reductionPivot9265 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 2, -3]]

theorem reductionSound9265 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5484).moment H =
      Integer.Sparse.eval reductionProjection9265 (momentVector H) := by
  have heq : reductionPivot9265 = (fun u v => (normalNode5484).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5484).moment H = injectiveMoment H reductionPivot9265 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5484).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9265 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9265 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 2, 72, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9265 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3127, reductionProjection2685, reductionProjection287, oldProjection1655, oldProjection2056] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9265 (0 : Fin 5)) = (normalNode5221).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3127 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9265 (1 : Fin 5)) = (normalNode5474).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2685 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9265 (2 : Fin 5)) = (normalNode5504).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection287 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9265 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4770 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4770 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9265 (4 : Fin 5)) = canonicalInput10665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2056 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9265 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10665 hH))).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5484).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9265 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5484).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9265 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 2, 72, 1440] ![5, 5, 720, 20, 1] reductionProjection9265 ![reductionProjection3127, reductionProjection2685, reductionProjection287, oldProjection1655, oldProjection2056]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9266 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 20), (243, -320), (682, 480), (698, -320), (704, -160), (1217, 240), (1221, 240), (1225, -80), (1226, -320), (1227, -80), (1251, 20)]

def reductionPivot9266 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 3, -3]]

theorem reductionSound9266 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5506).moment H =
      Integer.Sparse.eval reductionProjection9266 (momentVector H) := by
  have heq : reductionPivot9266 = (fun u v => (normalNode5506).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5506).moment H = injectiveMoment H reductionPivot9266 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5506).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9266 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9266 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9266 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5353, oldProjection1093, reductionProjection1998, oldProjection1111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9266 (0 : Fin 4)) = canonicalInput10327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5353 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10327 hH))).trans (reductionSound5353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9266 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4840 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1093 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1093 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4840 hH))).trans (oldProjectionSound1093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9266 (2 : Fin 4)) = canonicalInput10796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1998 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10796 hH))).trans (reductionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9266 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4842 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9266 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4842 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5506).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9266 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5506).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9266 (j : Fin 4)))
      2 1440 1440 2 ![144, 72, 144, 720] ![10, 20, 10, 2] reductionProjection9266 ![reductionProjection5353, oldProjection1093, reductionProjection1998, oldProjection1111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9267 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -140), (20, 25), (94, 85), (241, 160), (243, 640), (418, 720), (483, 1440), (682, -960), (698, 1360), (704, 560), (1217, -240), (1221, -480), (1223, -240), (1225, 80), (1226, 640), (1227, 560), (1251, -130), (1321, -720), (1389, -960)]

def reductionPivot9267 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound9267 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5485).moment H =
      Integer.Sparse.eval reductionProjection9267 (momentVector H) := by
  have heq : reductionPivot9267 = (fun u v => (normalNode5485).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5485).moment H = injectiveMoment H reductionPivot9267 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5485).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9267 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9267 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9267 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8966, reductionProjection7926, oldProjection2285, reductionProjection9266, oldProjection1774] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9267 (0 : Fin 5)) = (normalNode5224).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8966 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8966 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9267 (1 : Fin 5)) = (normalNode5475).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7926 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7926 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7926 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9267 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2285⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2285 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9267 (3 : Fin 5)) = (normalNode5506).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9266 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9267 (4 : Fin 5)) = canonicalInput10666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1774 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9267 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10666 hH))).trans (oldProjectionSound1774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5485).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9267 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5485).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9267 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 1440, 1440] ![1, 5, 5, 1, 1] reductionProjection9267 ![reductionProjection8966, reductionProjection7926, oldProjection2285, reductionProjection9266, oldProjection1774]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9268 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (610, -720), (698, -160), (1022, -720), (1143, -720), (1221, 240), (1226, -80), (1227, -80), (1251, 30)]

def reductionPivot9268 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, -1, 2, -2]]

theorem reductionSound9268 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5507).moment H =
      Integer.Sparse.eval reductionProjection9268 (momentVector H) := by
  have heq : reductionPivot9268 = (fun u v => (normalNode5507).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5507).moment H = injectiveMoment H reductionPivot9268 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5507).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9268 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9268 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9268 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1381, oldProjection1111, reductionProjection925, oldProjection513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9268 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1143).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9268 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4842 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4842 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9268 (2 : Fin 4)) = canonicalInput10801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10801 hH))).trans (reductionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9268 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4845 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9268 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4845 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5507).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9268 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5507).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9268 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection9268 ![reductionProjection1381, oldProjection1111, reductionProjection925, oldProjection513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9269 : Integer.Sparse (Fin 1613) := [(0, 8), (94, 15), (610, 360), (617, 360), (698, 160), (1022, 180), (1103, 180), (1143, 360), (1192, -360), (1221, -120), (1226, 40), (1227, 160), (1251, -65), (1389, -180)]

def reductionPivot9269 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound9269 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5486).moment H =
      Integer.Sparse.eval reductionProjection9269 (momentVector H) := by
  have heq : reductionPivot9269 = (fun u v => (normalNode5486).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5486).moment H = injectiveMoment H reductionPivot9269 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5486).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9269 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9269 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9269 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8968, reductionProjection2150, oldProjection1774, reductionProjection9268, reductionProjection3580] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9269 (0 : Fin 5)) = (normalNode5225).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8968 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9269 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9269 (2 : Fin 5)) = canonicalInput10666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1774 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10666 hH))).trans (oldProjectionSound1774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9269 (3 : Fin 5)) = (normalNode5507).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9268 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9269 (4 : Fin 5)) = canonicalInput10668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9269 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10668 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5486).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9269 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5486).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9269 (j : Fin 5)))
      1 360 1440 4 ![1440, 1, 1440, 1440, 288] ![1, 1440, 1, 1, 5] reductionProjection9269 ![reductionProjection8968, reductionProjection2150, oldProjection1774, reductionProjection9268, reductionProjection3580]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9270 : Integer.Sparse (Fin 1613) := [(0, 9), (81, -480), (94, 5), (243, 80), (423, 720), (426, 2160), (698, 1200), (1005, 1440), (1016, 1440), (1052, -240), (1058, -480), (1059, 160), (1205, 1440), (1219, -240), (1226, 560), (1227, 480), (1251, -160)]

def reductionPivot9270 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -2, 1, 0], ![1, 0, -1, 0]]

theorem reductionSound9270 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5487).moment H =
      Integer.Sparse.eval reductionProjection9270 (momentVector H) := by
  have heq : reductionPivot9270 = (fun u v => (normalNode5487).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5487).moment H = injectiveMoment H reductionPivot9270 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5487).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9270 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9270 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 72, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9270 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3363, reductionProjection2686, oldProjection2073, oldProjection1655, reductionProjection2833] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9270 (0 : Fin 5)) = (normalNode5226).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3363 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9270 (1 : Fin 5)) = (normalNode5476).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2686 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9270 (2 : Fin 5)) = canonicalInput10667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2073 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10667 hH))).trans (oldProjectionSound2073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9270 (3 : Fin 5)) = canonicalInput10669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10669 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9270 (4 : Fin 5)) = (normalNode5508).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2833 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9270 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5487).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9270 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5487).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9270 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 72, 2] ![1, 1, 1, 20, 720] reductionProjection9270 ![reductionProjection3363, reductionProjection2686, oldProjection2073, oldProjection1655, reductionProjection2833]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9271 : Integer.Sparse (Fin 1613) := [(0, 14), (81, -240), (94, 25), (434, 360), (610, 720), (617, 720), (698, 240), (1058, -240), (1105, 360), (1144, 720), (1193, -720), (1206, 360), (1226, 80), (1227, 200), (1251, -85)]

def reductionPivot9271 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound9271 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5488).moment H =
      Integer.Sparse.eval reductionProjection9271 (momentVector H) := by
  have heq : reductionPivot9271 = (fun u v => (normalNode5488).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5488).moment H = injectiveMoment H reductionPivot9271 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5488).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9271 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9271 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9271 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8970, reductionProjection2639, reductionProjection3580, reductionProjection9124, oldProjection1649] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9271 (0 : Fin 5)) = (normalNode5227).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8970 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9271 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1193).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2639 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9271 (2 : Fin 5)) = canonicalInput10668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10668 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9271 (3 : Fin 5)) = (normalNode5509).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9124 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9271 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4776 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9271 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4776 hH))).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5488).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9271 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5488).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9271 (j : Fin 5)))
      1 720 1440 2 ![1440, 1, 288, 1440, 1440] ![1, 1440, 5, 1, 1] reductionProjection9271 ![reductionProjection8970, reductionProjection2639, reductionProjection3580, reductionProjection9124, oldProjection1649]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9272 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -48), (94, 5), (694, -48), (698, 32), (775, 144), (865, 144), (1047, -48), (1055, -48), (1058, -96), (1059, 16), (1128, 144), (1227, 16), (1250, 24), (1251, 8)]

def reductionPivot9272 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, 1, -1]]

theorem reductionSound9272 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5489).moment H =
      Integer.Sparse.eval reductionProjection9272 (momentVector H) := by
  have heq : reductionPivot9272 = (fun u v => (normalNode5489).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5489).moment H = injectiveMoment H reductionPivot9272 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5489).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9272 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9272 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9272 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2232, oldProjection1309, oldProjection1309, reductionProjection2710, oldProjection2013] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9272 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2232⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2232 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9272 (1 : Fin 5)) = canonicalInput10679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10679 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9272 (2 : Fin 5)) = canonicalInput10689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10689 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9272 (3 : Fin 5)) = (normalNode5516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2710 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9272 (4 : Fin 5)) = canonicalInput10693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9272 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10693 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5489).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9272 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5489).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9272 (j : Fin 5)))
      1 288 1440 5 ![1440, 720, 720, 288, 144] ![1, 2, 2, 5, 10] reductionProjection9272 ![oldProjection2232, oldProjection1309, oldProjection1309, reductionProjection2710, oldProjection2013]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9273 : Integer.Sparse (Fin 1613) := [(0, 7), (72, -480), (81, -480), (94, 25), (241, 80), (243, 80), (668, 720), (698, 800), (700, 240), (761, 720), (865, 720), (1050, -720), (1055, -240), (1058, -480), (1059, 480), (1221, -720), (1227, 240), (1251, -50)]

def reductionPivot9273 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -2, -1, 1]]

theorem reductionSound9273 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5490).moment H =
      Integer.Sparse.eval reductionProjection9273 (momentVector H) := by
  have heq : reductionPivot9273 = (fun u v => (normalNode5490).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5490).moment H = injectiveMoment H reductionPivot9273 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5490).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9273 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9273 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 360, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9273 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2235, oldProjection1010, oldProjection1785, reductionProjection5795, oldProjection2289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9273 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2235⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2235 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9273 (1 : Fin 5)) = canonicalInput10680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10680 hH))).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9273 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4788 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4788 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9273 (3 : Fin 5)) = (normalNode5524).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5795 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9273 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2289⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2289 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9273 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5490).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9273 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5490).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9273 (j : Fin 5)))
      1 1440 1440 1 ![288, 360, 1440, 720, 1440] ![5, 4, 1, 2, 1] reductionProjection9273 ![oldProjection2235, oldProjection1010, oldProjection1785, reductionProjection5795, oldProjection2289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9274 : Integer.Sparse (Fin 1613) := [(1042, -1), (1047, -1), (1060, -1)]

def reductionPivot9274 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![4, -1, 0, -3], ![-3, 2, -2, 3]]

theorem reductionSound9274 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode10928).moment H =
      Integer.Sparse.eval reductionProjection9274 (momentVector H) := by
  have heq : reductionPivot9274 = (fun u v => (normalNode10928).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10928).moment H = injectiveMoment H reductionPivot9274 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10928).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10928).entries)).symm
  have hshape : reductionPivot9274 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9274 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9274 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection213, oldProjection196, reductionProjection6575] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9274 (0 : Fin 3)) = canonicalInput18784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9274 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9274 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18784 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9274 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8936 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9274 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9274 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8936 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9274 (2 : Fin 3)) = canonicalInput27444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9274 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9274 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27444 hH))).trans (reductionSound6575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10928).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9274 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10928).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9274 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9274 ![oldProjection213, oldProjection196, reductionProjection6575]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9275 : Integer.Sparse (Fin 1613) := [(33, 1), (694, 1), (1042, 1), (1055, 1), (1058, 1), (1060, 1)]

def reductionPivot9275 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, -2, 3, -3]]

theorem reductionSound9275 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5491).moment H =
      Integer.Sparse.eval reductionProjection9275 (momentVector H) := by
  have heq : reductionPivot9275 = (fun u v => (normalNode5491).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5491).moment H = injectiveMoment H reductionPivot9275 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5491).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9275 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9275 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9275 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8955, oldProjection196, reductionProjection9274, oldProjection1319] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9275 (0 : Fin 4)) = canonicalInput10269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8955 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10269 hH))).trans (reductionSound8955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9275 (1 : Fin 4)) = canonicalInput10681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10681 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9275 (2 : Fin 4)) = canonicalInput10701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9274 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10701 hH))).trans (reductionSound9274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9275 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4793 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1319 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9275 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4793 hH))).trans (oldProjectionSound1319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5491).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9275 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5491).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9275 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection9275 ![reductionProjection8955, oldProjection196, reductionProjection9274, oldProjection1319]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9276 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (243, 160), (426, 1440), (698, 400), (700, 400), (704, 80), (757, 720), (761, 1440), (798, 720), (803, 1440), (806, 720), (865, 720), (890, 720), (1059, 80), (1186, 720), (1197, 720), (1198, 1440), (1219, -480), (1226, 80), (1227, 80), (1251, 20)]

def reductionPivot9276 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -2, 0, 1], ![1, 0, 0, -1]]

theorem reductionSound9276 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5492).moment H =
      Integer.Sparse.eval reductionProjection9276 (momentVector H) := by
  have heq : reductionPivot9276 = (fun u v => (normalNode5492).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5492).moment H = injectiveMoment H reductionPivot9276 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5492).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9276 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9276 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9276 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8948, reductionProjection3369, reductionProjection7814, reductionProjection8999, reductionProjection195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9276 (0 : Fin 5)) = (normalNode5250).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9276 (1 : Fin 5)) = canonicalInput10727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10727 hH))).trans (reductionSound3369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9276 (2 : Fin 5)) = (normalNode5540).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7814 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9276 (3 : Fin 5)) = canonicalInput10740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10740 hH))).trans (reductionSound8999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9276 (4 : Fin 5)) = (normalNode5542).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection195 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9276 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5492).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9276 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5492).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9276 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 144, 1440] ![1, 1, 5, 10, 1] reductionProjection9276 ![reductionProjection8948, reductionProjection3369, reductionProjection7814, reductionProjection8999, reductionProjection195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9277 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (20, 5), (94, -20), (243, 120), (483, 720), (694, -120), (698, 280), (700, 200), (704, 80), (761, 720), (806, 360), (865, 360), (1047, -120), (1055, -120), (1059, 40), (1197, 360), (1219, -240), (1226, 80), (1227, 80), (1251, -30)]

def reductionPivot9277 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound9277 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5493).moment H =
      Integer.Sparse.eval reductionProjection9277 (momentVector H) := by
  have heq : reductionPivot9277 = (fun u v => (normalNode5493).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5493).moment H = injectiveMoment H reductionPivot9277 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5493).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9277 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9277 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9277 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2242, oldProjection2013, reductionProjection2720, reductionProjection179, reductionProjection179] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9277 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2242⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2242 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2242 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9277 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4809 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4809 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9277 (2 : Fin 5)) = (normalNode5541).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2720 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9277 (3 : Fin 5)) = (normalNode5543).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9277 (4 : Fin 5)) = canonicalInput10741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9277 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10741 hH))).trans (reductionSound179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5493).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9277 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5493).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9277 (j : Fin 5)))
      1 720 1440 2 ![720, 144, 144, 1440, 1440] ![2, 10, 10, 1, 1] reductionProjection9277 ![oldProjection2242, oldProjection2013, reductionProjection2720, reductionProjection179, reductionProjection179]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9278 : Integer.Sparse (Fin 1613) := [(0, -1), (72, -240), (81, -240), (94, -5), (243, 80), (426, 720), (698, 480), (700, 320), (761, 720), (803, 720), (890, 360), (1058, -240), (1059, 80), (1198, 720), (1219, -240), (1221, -120), (1226, 160), (1227, 120), (1251, -40)]

def reductionPivot9278 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, -1, 0]]

theorem reductionSound9278 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5495).moment H =
      Integer.Sparse.eval reductionProjection9278 (momentVector H) := by
  have heq : reductionPivot9278 = (fun u v => (normalNode5495).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5495).moment H = injectiveMoment H reductionPivot9278 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5495).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9278 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9278 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9278 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2243, oldProjection2023, reductionProjection195, oldProjection2243, reductionProjection195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9278 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2243⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2243 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9278 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4811 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4811 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9278 (2 : Fin 5)) = (normalNode5542).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection195 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9278 (3 : Fin 5)) = canonicalInput10743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2243 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10743 hH))).trans (oldProjectionSound2243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9278 (4 : Fin 5)) = canonicalInput10744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection195 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9278 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10744 hH))).trans (reductionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5495).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9278 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5495).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9278 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection9278 ![oldProjection2243, oldProjection2023, reductionProjection195, oldProjection2243, reductionProjection195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9279 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 480), (94, 20), (229, 240), (243, -160), (698, -80), (700, -320), (1044, 240), (1050, 240), (1058, 480), (1059, -80), (1060, 240), (1251, -5)]

def reductionPivot9279 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, -2, -2, 2]]

theorem reductionSound9279 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5497).moment H =
      Integer.Sparse.eval reductionProjection9279 (momentVector H) := by
  have heq : reductionPivot9279 = (fun u v => (normalNode5497).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5497).moment H = injectiveMoment H reductionPivot9279 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5497).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9279 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9279 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9279 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection729, oldProjection831, oldProjection1017, oldProjection1025] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9279 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4599 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection729 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4599 hH))).trans (oldProjectionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9279 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4816 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4816 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9279 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4824 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4824 hH))).trans (oldProjectionSound1017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9279 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4825 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1025 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9279 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4825 hH))).trans (oldProjectionSound1025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5497).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9279 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5497).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9279 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 144, 144] ![20, 2, 10, 10] reductionProjection9279 ![oldProjection729, oldProjection831, oldProjection1017, oldProjection1025]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

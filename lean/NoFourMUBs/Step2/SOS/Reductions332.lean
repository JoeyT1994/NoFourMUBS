import NoFourMUBs.Step2.SOS.Canonical041
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical222
import NoFourMUBs.Step2.SOS.Canonical224
import NoFourMUBs.Step2.SOS.Canonical225
import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical227
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical301
import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections009
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
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions251
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions314
import NoFourMUBs.Step2.SOS.Reductions315
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions326
import NoFourMUBs.Step2.SOS.Reductions331
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical188
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical189
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10624 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (42, -80), (94, -55), (686, 240), (698, -80), (700, -80), (701, -80), (704, -320), (1251, -50)]

def reductionPivot10624 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -1, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound10624 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7921).moment H =
      Integer.Sparse.eval reductionProjection10624 (momentVector H) := by
  have heq : reductionPivot10624 = (fun u v => (normalNode7921).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7921).moment H = injectiveMoment H reductionPivot10624 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7921).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10624 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10624 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10624 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1170, oldProjection981, oldProjection782, reductionProjection2366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10624 (0 : Fin 4)) = canonicalInput20222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20222 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10624 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection981 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10624 (2 : Fin 4)) = canonicalInput15313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection782 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection782 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15313 hH))).trans (oldProjectionSound782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10624 (3 : Fin 4)) = (normalNode7922).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10624 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7921).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10624 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7921).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10624 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 9, 144] ![2, 20, 160, 10] reductionProjection10624 ![oldProjection1170, oldProjection981, oldProjection782, reductionProjection2366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10625 : Integer.Sparse (Fin 1613) := [(19, 24), (20, -3), (94, -10), (228, 48), (241, -16), (243, -32), (247, -16), (704, -48), (1251, -7)]

def reductionPivot10625 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 0, 0, -1]]

theorem reductionSound10625 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7416).moment H =
      Integer.Sparse.eval reductionProjection10625 (momentVector H) := by
  have heq : reductionPivot10625 = (fun u v => (normalNode7416).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7416).moment H = injectiveMoment H reductionPivot10625 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7416).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10625 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10625 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10625 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1171, oldProjection910, oldProjection774, oldProjection894] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10625 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1171⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10625 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6077 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection910 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6077 hH))).trans (oldProjectionSound910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10625 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6044 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection774 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6044 hH))).trans (oldProjectionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10625 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10625 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7416).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10625 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7416).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10625 (j : Fin 4)))
      2 288 1440 10 ![144, 720, 9, 720] ![10, 2, 160, 2] reductionProjection10625 ![oldProjection1171, oldProjection910, oldProjection774, oldProjection894]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10626 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (76, 240), (94, -25), (231, 240), (243, -80), (564, -720), (698, -80), (1251, -25), (1323, 480), (1326, -720)]

def reductionPivot10626 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, -1, 3, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound10626 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7276).moment H =
      Integer.Sparse.eval reductionProjection10626 (momentVector H) := by
  have heq : reductionPivot10626 = (fun u v => (normalNode7276).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7276).moment H = injectiveMoment H reductionPivot10626 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7276).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10626 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10626 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10626 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection948, oldProjection900, reductionProjection8340, reductionProjection2264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10626 (0 : Fin 4)) = canonicalInput19449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19449 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10626 (1 : Fin 4)) = canonicalInput14436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection900 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14436 hH))).trans (oldProjectionSound900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10626 (2 : Fin 4)) = canonicalInput14385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14385 hH))).trans (reductionSound8340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10626 (3 : Fin 4)) = canonicalInput14382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10626 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14382 hH))).trans (reductionSound2264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7276).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10626 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7276).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10626 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 1] ![2, 10, 1440, 1440] reductionProjection10626 ![oldProjection948, oldProjection900, reductionProjection8340, reductionProjection2264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10627 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -240), (20, 35), (42, 160), (76, -240), (88, 80), (89, -240), (90, 80), (94, 135), (228, -480), (231, -240), (241, 160), (243, 640), (247, 80), (298, 720), (303, 720), (564, 1440), (686, -480), (698, 480), (700, 160), (701, 80), (704, 720), (1223, -480), (1225, 80), (1226, 320), (1227, 80), (1251, 115), (1323, -480), (1326, 720)]

def reductionPivot10627 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound10627 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7270).moment H =
      Integer.Sparse.eval reductionProjection10627 (momentVector H) := by
  have heq : reductionPivot10627 = (fun u v => (normalNode7270).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7270).moment H = injectiveMoment H reductionPivot10627 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7270).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10627 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10627 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10627 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10624, reductionProjection10625, reductionProjection7940, reductionProjection10626, reductionProjection10052] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10627 (0 : Fin 5)) = canonicalInput19181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10624 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10624 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19181 hH))).trans (reductionSound10624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10627 (1 : Fin 5)) = canonicalInput14409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10625 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14409 hH))).trans (reductionSound10625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10627 (2 : Fin 5)) = canonicalInput14378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7940 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14378 hH))).trans (reductionSound7940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10627 (3 : Fin 5)) = canonicalInput14375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10626 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14375 hH))).trans (reductionSound10626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10627 (4 : Fin 5)) = canonicalInput14374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10052 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10627 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14374 hH))).trans (reductionSound10052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7270).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10627 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7270).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10627 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 1440, 1440] ![1, 5, 80, 1, 1] reductionProjection10627 ![reductionProjection10624, reductionProjection10625, reductionProjection7940, reductionProjection10626, reductionProjection10052]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10628 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -100), (20, 15), (42, 160), (88, 480), (89, -720), (90, 480), (94, -50), (241, 240), (243, 1120), (298, 720), (303, 1440), (698, 960), (700, 240), (704, 320), (1225, 80), (1226, 960), (1227, 80), (1251, -50)]

def reductionPivot10628 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10628 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7271).moment H =
      Integer.Sparse.eval reductionProjection10628 (momentVector H) := by
  have heq : reductionPivot10628 = (fun u v => (normalNode7271).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7271).moment H = injectiveMoment H reductionPivot10628 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7271).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10628 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10628 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10628 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2677, oldProjection2394, reductionProjection8020, reductionProjection10057, reductionProjection10057] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10628 (0 : Fin 5)) = canonicalInput19182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2677 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19182 hH))).trans (oldProjectionSound2677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10628 (1 : Fin 5)) = canonicalInput14410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2394 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14410 hH))).trans (oldProjectionSound2394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10628 (2 : Fin 5)) = canonicalInput14379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8020 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14379 hH))).trans (reductionSound8020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10628 (3 : Fin 5)) = canonicalInput14376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14376 hH))).trans (reductionSound10057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10628 (4 : Fin 5)) = (normalNode7275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10628 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7271).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10628 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7271).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10628 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 1440, 1440] ![1, 5, 80, 1, 1] reductionProjection10628 ![oldProjection2677, oldProjection2394, reductionProjection8020, reductionProjection10057, reductionProjection10057]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10629 : Integer.Sparse (Fin 1613) := [(4, 1), (20, -10), (94, 5), (1225, 16)]

def reductionPivot10629 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -3, 4], ![0, -1, 4, -3], ![1, 0, 0, -1]]

theorem reductionSound10629 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9726).moment H =
      Integer.Sparse.eval reductionProjection10629 (momentVector H) := by
  have heq : reductionPivot10629 = (fun u v => (normalNode9726).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9726).moment H = injectiveMoment H reductionPivot10629 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9726).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot10629 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10629 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 16, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10629 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection252, oldProjection53, oldProjection249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10629 (0 : Fin 3)) = canonicalInput22497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10629 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection252 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10629 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22497 hH))).trans (oldProjectionSound252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10629 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7022 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10629 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection53 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10629 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection53 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7022 hH))).trans (oldProjectionSound53 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10629 (2 : Fin 3)) = canonicalInput19293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10629 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10629 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19293 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9726).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10629 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9726).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10629 (j : Fin 3)))
      3 144 144 3 ![48, 16, 24] ![3, 9, 6] reductionProjection10629 ![oldProjection252, oldProjection53, oldProjection249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10630 : Integer.Sparse (Fin 1613) := [(20, -1), (91, 16), (94, -8), (243, 32), (1225, 32), (1251, 1)]

def reductionPivot10630 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![0, -1, 4, -3], ![1, 1, -1, -1]]

theorem reductionSound10630 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7433).moment H =
      Integer.Sparse.eval reductionProjection10630 (momentVector H) := by
  have heq : reductionPivot10630 = (fun u v => (normalNode7433).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7433).moment H = injectiveMoment H reductionPivot10630 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7433).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot10630 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10630 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 48, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10630 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection249, oldProjection248, oldProjection137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10630 (0 : Fin 3)) = canonicalInput19293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10630 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10630 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19293 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10630 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6094 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10630 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection248 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10630 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6094 hH))).trans (oldProjectionSound248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10630 (2 : Fin 3)) = canonicalInput14535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10630 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10630 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14535 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7433).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10630 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7433).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10630 (j : Fin 3)))
      3 144 144 3 ![24, 48, 3] ![6, 3, 48] reductionProjection10630 ![oldProjection249, oldProjection248, oldProjection137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10631 : Integer.Sparse (Fin 1613) := [(4, -1), (19, 4), (20, 12), (91, -32), (94, 1), (106, -16), (243, -32), (244, -16), (1225, -64)]

def reductionPivot10631 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10631 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7431).moment H =
      Integer.Sparse.eval reductionProjection10631 (momentVector H) := by
  have heq : reductionPivot10631 = (fun u v => (normalNode7431).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7431).moment H = injectiveMoment H reductionPivot10631 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7431).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10631 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10631 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10631 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10629, oldProjection919, reductionProjection2483, reductionProjection10630] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10631 (0 : Fin 4)) = (normalNode9726).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10629 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10631 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10631 (2 : Fin 4)) = (normalNode7435).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2483 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10631 (3 : Fin 4)) = (normalNode7433).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10631 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7431).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10631 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7431).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10631 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 144] ![2, 2, 32, 2] reductionProjection10631 ![reductionProjection10629, oldProjection919, reductionProjection2483, reductionProjection10630]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10632 : Integer.Sparse (Fin 1613) := [(1327, 1)]

theorem reductionSound10632 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1327).moment H =
      Integer.Sparse.eval reductionProjection10632 (momentVector H) := by
  have hc : coordinates (1327 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1327) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10632, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10633 : Integer.Sparse (Fin 1613) := [(15, 3), (88, -2), (91, -2), (94, 1), (243, -6), (1225, -3), (1226, -3), (1327, -9)]

def reductionPivot10633 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 4, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10633 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7280).moment H =
      Integer.Sparse.eval reductionProjection10633 (momentVector H) := by
  have heq : reductionPivot10633 = (fun u v => (normalNode7280).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7280).moment H = injectiveMoment H reductionPivot10633 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7280).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10633 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10633 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10633 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10630, oldProjection899, reductionProjection10632, reductionProjection7546] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10633 (0 : Fin 4)) = canonicalInput19189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19189 hH))).trans (reductionSound10630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10633 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6016 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection899 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6016 hH))).trans (oldProjectionSound899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10633 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1327).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10632 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10633 (3 : Fin 4)) = canonicalInput14392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7546 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10633 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14392 hH))).trans (reductionSound7546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7280).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10633 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7280).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10633 (j : Fin 4)))
      2 18 144 16 ![144, 144, 1, 9] ![1, 1, 144, 16] reductionProjection10633 ![reductionProjection10630, oldProjection899, reductionProjection10632, reductionProjection7546]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10634 : Integer.Sparse (Fin 1613) := [(0, -1), (4, 5), (15, -720), (19, -40), (20, -60), (88, 640), (91, 640), (94, -170), (106, 160), (241, 160), (243, 1280), (244, 160), (698, 160), (725, 720), (1225, 960), (1226, 960), (1251, -60), (1327, 1440)]

def reductionPivot10634 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 4, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10634 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7277).moment H =
      Integer.Sparse.eval reductionProjection10634 (momentVector H) := by
  have heq : reductionPivot10634 = (fun u v => (normalNode7277).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7277).moment H = injectiveMoment H reductionPivot10634 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7277).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10634 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10634 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 18, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10634 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10631, reductionProjection10139, reductionProjection7547, reductionProjection10633, reductionProjection10633] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10634 (0 : Fin 5)) = canonicalInput19186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10631 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19186 hH))).trans (reductionSound10631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10634 (1 : Fin 5)) = canonicalInput14424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10139 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14424 hH))).trans (reductionSound10139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10634 (2 : Fin 5)) = canonicalInput14389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7547 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14389 hH))).trans (reductionSound7547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10634 (3 : Fin 5)) = canonicalInput14386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10633 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14386 hH))).trans (reductionSound10633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10634 (4 : Fin 5)) = (normalNode7280).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10633 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10634 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7277).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10634 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7277).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10634 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 18, 18, 18] ![5, 1, 80, 80, 80] reductionProjection10634 ![reductionProjection10631, reductionProjection10139, reductionProjection7547, reductionProjection10633, reductionProjection10633]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10635 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (91, -32), (94, 8), (243, -80), (244, -16), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot10635 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound10635 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7432).moment H =
      Integer.Sparse.eval reductionProjection10635 (momentVector H) := by
  have heq : reductionPivot10635 = (fun u v => (normalNode7432).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7432).moment H = injectiveMoment H reductionPivot10635 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7432).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10635 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10635 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10635 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2495, oldProjection919, reductionProjection2498, reductionProjection2484] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10635 (0 : Fin 4)) = (normalNode9727).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2495 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10635 (1 : Fin 4)) = canonicalInput14607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14607 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10635 (2 : Fin 4)) = (normalNode7436).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2498 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10635 (3 : Fin 4)) = (normalNode7434).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2484 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10635 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7432).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10635 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7432).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10635 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 144] ![2, 2, 32, 2] reductionProjection10635 ![reductionProjection2495, oldProjection919, reductionProjection2498, reductionProjection2484]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10636 : Integer.Sparse (Fin 1613) := [(15, 3), (19, 1), (88, -2), (91, -2), (241, -1), (243, -6), (244, -1), (727, -9), (1225, -2), (1226, -2)]

def reductionPivot10636 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 4, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound10636 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7279).moment H =
      Integer.Sparse.eval reductionProjection10636 (momentVector H) := by
  have heq : reductionPivot10636 = (fun u v => (normalNode7279).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7279).moment H = injectiveMoment H reductionPivot10636 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7279).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10636 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10636 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10636 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2484, oldProjection898, reductionProjection6360, reductionProjection7546] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10636 (0 : Fin 4)) = canonicalInput19188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2484 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19188 hH))).trans (reductionSound2484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10636 (1 : Fin 4)) = canonicalInput14435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14435 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10636 (2 : Fin 4)) = canonicalInput14393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6360 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14393 hH))).trans (reductionSound6360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10636 (3 : Fin 4)) = canonicalInput14391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7546 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10636 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14391 hH))).trans (reductionSound7546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7279).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10636 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7279).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10636 (j : Fin 4)))
      2 18 144 16 ![144, 144, 1, 9] ![1, 1, 144, 16] reductionProjection10636 ![reductionProjection2484, oldProjection898, reductionProjection6360, reductionProjection7546]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10637 : Integer.Sparse (Fin 1613) := [(15, -36), (19, -10), (20, 1), (88, 32), (91, 32), (94, -8), (241, 8), (243, 112), (244, 8), (727, 36), (954, 36), (1225, 32), (1226, 32), (1251, 1), (1327, 36)]

def reductionPivot10637 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 4, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10637 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7278).moment H =
      Integer.Sparse.eval reductionProjection10637 (momentVector H) := by
  have heq : reductionPivot10637 = (fun u v => (normalNode7278).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7278).moment H = injectiveMoment H reductionPivot10637 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7278).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10637 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10637 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 18, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10637 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10635, oldProjection2500, reductionProjection8048, reductionProjection10636, reductionProjection10633] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10637 (0 : Fin 5)) = canonicalInput19187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10635 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19187 hH))).trans (reductionSound10635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10637 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6013 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2500 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6013 hH))).trans (oldProjectionSound2500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10637 (2 : Fin 5)) = canonicalInput14390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8048 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14390 hH))).trans (reductionSound8048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10637 (3 : Fin 5)) = canonicalInput14388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10636 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14388 hH))).trans (reductionSound10636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10637 (4 : Fin 5)) = canonicalInput14387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10633 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10637 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14387 hH))).trans (reductionSound10633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7278).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10637 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7278).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10637 (j : Fin 5)))
      1 72 288 4 ![288, 288, 18, 18, 18] ![1, 1, 16, 16, 16] reductionProjection10637 ![reductionProjection10635, oldProjection2500, reductionProjection8048, reductionProjection10636, reductionProjection10633]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10638 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 180), (20, -30), (94, -60), (243, -80), (247, -80), (704, -160), (1146, -720), (1251, -85)]

def reductionPivot10638 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound10638 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7293).moment H =
      Integer.Sparse.eval reductionProjection10638 (momentVector H) := by
  have heq : reductionPivot10638 = (fun u v => (normalNode7293).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7293).moment H = injectiveMoment H reductionPivot10638 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7293).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10638 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10638 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10638 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1341, oldProjection687, oldProjection1176, reductionProjection10447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10638 (0 : Fin 4)) = canonicalInput2656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2656 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10638 (1 : Fin 4)) = canonicalInput14371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection687 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14371 hH))).trans (oldProjectionSound687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10638 (2 : Fin 4)) = canonicalInput14517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14517 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10638 (3 : Fin 4)) = canonicalInput14526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10447 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10638 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14526 hH))).trans (reductionSound10447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7293).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10638 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7293).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10638 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 720, 72] ![2, 1440, 2, 20] reductionProjection10638 ![oldProjection1341, oldProjection687, oldProjection1176, reductionProjection10447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10639 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, 5), (243, -80), (698, -80), (704, -160), (1251, 5)]

def reductionPivot10639 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound10639 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7396).moment H =
      Integer.Sparse.eval reductionProjection10639 (momentVector H) := by
  have heq : reductionPivot10639 = (fun u v => (normalNode7396).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7396).moment H = injectiveMoment H reductionPivot10639 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7396).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10639 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10639 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 240, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10639 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1176, oldProjection893, oldProjection253, oldProjection909] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10639 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5594 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5594 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10639 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10639 (2 : Fin 4)) = canonicalInput14585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14585 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10639 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10639 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7396).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10639 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7396).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10639 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 240, 720] ![2, 2, 6, 2] reductionProjection10639 ![oldProjection1176, oldProjection893, oldProjection253, oldProjection909]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10640 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -60), (19, -540), (20, 65), (94, 195), (104, 80), (108, 400), (228, -240), (241, 80), (243, 240), (247, 480), (252, 720), (325, 720), (698, 240), (703, 80), (704, 560), (1146, 1440), (1251, 175), (1278, -240), (1325, 720), (1333, 720)]

def reductionPivot10640 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound10640 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7281).moment H =
      Integer.Sparse.eval reductionProjection10640 (momentVector H) := by
  have heq : reductionPivot10640 = (fun u v => (normalNode7281).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7281).moment H = injectiveMoment H reductionPivot10640 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7281).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10640 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10640 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10640 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1830, reductionProjection10599, reductionProjection10638, reductionProjection10639, oldProjection2490] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10640 (0 : Fin 5)) = (normalNode1025).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1830 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10640 (1 : Fin 5)) = (normalNode7255).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10599 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10640 (2 : Fin 5)) = canonicalInput14497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10638 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14497 hH))).trans (reductionSound10638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10640 (3 : Fin 5)) = (normalNode7396).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10639 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10640 (4 : Fin 5)) = canonicalInput14508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2490 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10640 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14508 hH))).trans (oldProjectionSound2490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7281).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10640 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7281).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10640 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1440, 1440, 720] ![1, 720, 1, 1, 2] reductionProjection10640 ![reductionProjection1830, reductionProjection10599, reductionProjection10638, reductionProjection10639, oldProjection2490]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10641 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (94, 1), (1251, -1)]

def reductionPivot10641 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound10641 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7304).moment H =
      Integer.Sparse.eval reductionProjection10641 (momentVector H) := by
  have heq : reductionPivot10641 = (fun u v => (normalNode7304).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7304).moment H = injectiveMoment H reductionPivot10641 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7304).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10641 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10641 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10641 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1272, reductionProjection2227, reductionProjection10609, oldProjection1228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10641 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1664 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1272 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1664 hH))).trans (oldProjectionSound1272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10641 (1 : Fin 4)) = canonicalInput14457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2227 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14457 hH))).trans (reductionSound2227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10641 (2 : Fin 4)) = canonicalInput14611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14611 hH))).trans (reductionSound10609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10641 (3 : Fin 4)) = canonicalInput14624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10641 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14624 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7304).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10641 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7304).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10641 (j : Fin 4)))
      2 72 144 4 ![144, 72, 144, 144] ![1, 2, 1, 1] reductionProjection10641 ![oldProjection1272, reductionProjection2227, reductionProjection10609, oldProjection1228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10642 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (4, 5), (19, 40), (94, -5), (1251, 5)]

def reductionPivot10642 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![1, 1, 2, -4]]

theorem reductionSound10642 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7446).moment H =
      Integer.Sparse.eval reductionProjection10642 (momentVector H) := by
  have heq : reductionPivot10642 = (fun u v => (normalNode7446).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7446).moment H = injectiveMoment H reductionPivot10642 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7446).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10642 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10642 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 12, 240] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10642 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection237, oldProjection16, oldProjection253] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10642 (0 : Fin 3)) = canonicalInput14261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10642 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection237 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10642 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14261 hH))).trans (oldProjectionSound237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10642 (1 : Fin 3)) = canonicalInput14573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10642 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection16 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10642 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection16 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14573 hH))).trans (oldProjectionSound16 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10642 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6083 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10642 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10642 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6083 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7446).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10642 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7446).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10642 (j : Fin 3)))
      3 720 720 3 ![48, 12, 240] ![15, 60, 3] reductionProjection10642 ![oldProjection237, oldProjection16, oldProjection253]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10643 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 60), (4, -5), (19, 40), (94, 5), (1251, -5)]

def reductionPivot10643 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound10643 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7381).moment H =
      Integer.Sparse.eval reductionProjection10643 (momentVector H) := by
  have heq : reductionPivot10643 = (fun u v => (normalNode7381).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7381).moment H = injectiveMoment H reductionPivot10643 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7381).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10643 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10643 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10643 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1866, reductionProjection10609, reductionProjection10642, oldProjection909] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10643 (0 : Fin 4)) = canonicalInput12865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1866 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1866 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12865 hH))).trans (reductionSound1866 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10643 (1 : Fin 4)) = canonicalInput14511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14511 hH))).trans (reductionSound10609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10643 (2 : Fin 4)) = canonicalInput14582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10642 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14582 hH))).trans (reductionSound10642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10643 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10643 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7381).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10643 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7381).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10643 (j : Fin 4)))
      2 720 720 2 ![144, 144, 720, 720] ![5, 5, 1, 1] reductionProjection10643 ![reductionProjection1866, reductionProjection10609, reductionProjection10642, oldProjection909]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10644 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -280), (4, 10), (19, -110), (20, 10), (94, 5), (243, 80), (703, 80), (704, 80), (1251, 25), (1278, -240), (1325, 360)]

def reductionPivot10644 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound10644 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7282).moment H =
      Integer.Sparse.eval reductionProjection10644 (momentVector H) := by
  have heq : reductionPivot10644 = (fun u v => (normalNode7282).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7282).moment H = injectiveMoment H reductionPivot10644 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7282).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10644 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10644 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 72, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10644 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1867, reductionProjection10601, reductionProjection10641, reductionProjection10643, reductionProjection10616] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10644 (0 : Fin 5)) = (normalNode1038).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1867 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10644 (1 : Fin 5)) = canonicalInput14353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10601 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14353 hH))).trans (reductionSound10601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10644 (2 : Fin 5)) = canonicalInput14500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10641 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14500 hH))).trans (reductionSound10641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10644 (3 : Fin 5)) = canonicalInput14512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10643 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14512 hH))).trans (reductionSound10643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10644 (4 : Fin 5)) = canonicalInput14515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10616 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10644 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14515 hH))).trans (reductionSound10616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7282).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10644 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7282).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10644 (j : Fin 5)))
      1 720 1440 2 ![288, 288, 72, 720, 1440] ![5, 5, 20, 2, 1] reductionProjection10644 ![reductionProjection1867, reductionProjection10601, reductionProjection10641, reductionProjection10643, reductionProjection10616]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10645 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -6), (94, 7), (243, -80), (698, -16), (704, -64), (1225, -16), (1226, -16), (1251, -3)]

def reductionPivot10645 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound10645 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7310).moment H =
      Integer.Sparse.eval reductionProjection10645 (momentVector H) := by
  have heq : reductionPivot10645 = (fun u v => (normalNode7310).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7310).moment H = injectiveMoment H reductionPivot10645 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7310).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10645 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10645 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10645 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1080, oldProjection1121, reductionProjection10447, oldProjection1177] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10645 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1705 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1705 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10645 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6026 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1121 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6026 hH))).trans (oldProjectionSound1121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10645 (2 : Fin 4)) = canonicalInput14644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10447 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14644 hH))).trans (reductionSound10447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10645 (3 : Fin 4)) = canonicalInput14649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10645 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14649 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7310).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10645 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7310).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10645 (j : Fin 4)))
      2 288 288 2 ![72, 72, 72, 144] ![4, 4, 4, 2] reductionProjection10645 ![oldProjection1080, oldProjection1121, reductionProjection10447, oldProjection1177]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10646 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, 15), (94, 15), (243, -160), (698, -80), (704, -80), (1225, -80), (1226, -80), (1251, -30)]

def reductionPivot10646 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound10646 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7403).moment H =
      Integer.Sparse.eval reductionProjection10646 (momentVector H) := by
  have heq : reductionPivot10646 = (fun u v => (normalNode7403).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7403).moment H = injectiveMoment H reductionPivot10646 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7403).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10646 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10646 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 48, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10646 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1042, oldProjection254, oldProjection909, oldProjection1115] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10646 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5621 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5621 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10646 (1 : Fin 4)) = canonicalInput14568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection254 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14568 hH))).trans (oldProjectionSound254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10646 (2 : Fin 4)) = canonicalInput14614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14614 hH))).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10646 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6100 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1115 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10646 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6100 hH))).trans (oldProjectionSound1115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7403).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10646 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7403).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10646 (j : Fin 4)))
      2 1440 1440 2 ![720, 48, 720, 144] ![2, 30, 2, 10] reductionProjection10646 ![oldProjection1042, oldProjection254, oldProjection909, oldProjection1115]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10647 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -80), (19, -420), (20, 70), (23, -240), (88, 80), (94, -85), (101, -240), (104, 160), (108, 160), (241, 240), (243, 1040), (539, 720), (682, -240), (698, 400), (703, 160), (704, 720), (1225, 160), (1226, 320), (1251, 25), (1278, -240), (1325, 720)]

def reductionPivot10647 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound10647 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7283).moment H =
      Integer.Sparse.eval reductionProjection10647 (momentVector H) := by
  have heq : reductionPivot10647 = (fun u v => (normalNode7283).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7283).moment H = injectiveMoment H reductionPivot10647 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7283).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10647 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10647 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10647 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1868, reductionProjection10604, reductionProjection10645, oldProjection2494, reductionProjection10646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10647 (0 : Fin 5)) = (normalNode1039).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1868 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1868 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10647 (1 : Fin 5)) = (normalNode7259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10604 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10647 (2 : Fin 5)) = canonicalInput14501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10645 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14501 hH))).trans (reductionSound10645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10647 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6034 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2494 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6034 hH))).trans (oldProjectionSound2494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10647 (4 : Fin 5)) = canonicalInput14516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10646 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10647 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14516 hH))).trans (reductionSound10646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7283).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10647 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7283).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10647 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 1440, 1440] ![5, 5, 5, 1, 1] reductionProjection10647 ![reductionProjection1868, reductionProjection10604, reductionProjection10645, oldProjection2494, reductionProjection10646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10648 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 260), (20, -35), (94, -135), (243, -80), (247, -160), (698, -80), (704, -400), (1251, -135)]

def reductionPivot10648 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound10648 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7305).moment H =
      Integer.Sparse.eval reductionProjection10648 (momentVector H) := by
  have heq : reductionPivot10648 = (fun u v => (normalNode7305).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7305).moment H = injectiveMoment H reductionPivot10648 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7305).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10648 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10648 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10648 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1341, oldProjection1341, oldProjection893, oldProjection922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10648 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1665 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10648 (1 : Fin 4)) = canonicalInput14458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14458 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10648 (2 : Fin 4)) = canonicalInput14612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14612 hH))).trans (oldProjectionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10648 (3 : Fin 4)) = canonicalInput14625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10648 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14625 hH))).trans (oldProjectionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7305).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10648 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7305).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10648 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 144] ![2, 2, 2, 10] reductionProjection10648 ![oldProjection1341, oldProjection1341, oldProjection893, oldProjection922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10649 : Integer.Sparse (Fin 1613) := [(0, 6), (3, 40), (19, 220), (20, -25), (94, -110), (104, -80), (108, -400), (241, -80), (247, -400), (1251, -95)]

def reductionPivot10649 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 1, 1, -3]]

theorem reductionSound10649 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7390).moment H =
      Integer.Sparse.eval reductionProjection10649 (momentVector H) := by
  have heq : reductionPivot10649 = (fun u v => (normalNode7390).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7390).moment H = injectiveMoment H reductionPivot10649 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7390).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10649 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10649 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10649 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection761, oldProjection761, oldProjection904, reductionProjection6400] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10649 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10649 (1 : Fin 4)) = canonicalInput14492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14492 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10649 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node904⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection904 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10649 (3 : Fin 4)) = (normalNode7455).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10649 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7390).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10649 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7390).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10649 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection10649 ![oldProjection761, oldProjection761, oldProjection904, reductionProjection6400]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10650 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -25), (241, -80), (1251, -20)]

def reductionPivot10650 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound10650 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7407).moment H =
      Integer.Sparse.eval reductionProjection10650 (momentVector H) := by
  have heq : reductionPivot10650 = (fun u v => (normalNode7407).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7407).moment H = injectiveMoment H reductionPivot10650 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7407).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10650 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10650 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10650 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection787, oldProjection914, oldProjection914, oldProjection787] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10650 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node787⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection787 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10650 (1 : Fin 4)) = canonicalInput14601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14601 hH))).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10650 (2 : Fin 4)) = canonicalInput14641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14641 hH))).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10650 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6108 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection787 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10650 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6108 hH))).trans (oldProjectionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7407).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10650 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7407).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10650 (j : Fin 4)))
      2 720 720 2 ![360, 720, 720, 360] ![2, 1, 1, 2] reductionProjection10650 ![oldProjection787, oldProjection914, oldProjection914, oldProjection787]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10651 : Integer.Sparse (Fin 1613) := [(0, -17), (3, -80), (19, -760), (20, 75), (45, -240), (94, 385), (104, 560), (105, 80), (108, 1840), (241, 320), (243, 80), (247, 1200), (325, 720), (329, 720), (698, 80), (704, 400), (1251, 355)]

def reductionPivot10651 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound10651 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7284).moment H =
      Integer.Sparse.eval reductionProjection10651 (momentVector H) := by
  have heq : reductionPivot10651 = (fun u v => (normalNode7284).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7284).moment H = injectiveMoment H reductionPivot10651 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7284).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10651 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10651 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10651 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1871, reductionProjection10602, reductionProjection10648, reductionProjection10649, reductionProjection10650] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10651 (0 : Fin 5)) = (normalNode1041).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1871 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1871 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10651 (1 : Fin 5)) = canonicalInput14354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10602 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14354 hH))).trans (reductionSound10602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10651 (2 : Fin 5)) = canonicalInput14502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10648 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14502 hH))).trans (reductionSound10648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10651 (3 : Fin 5)) = canonicalInput14518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14518 hH))).trans (reductionSound10649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10651 (4 : Fin 5)) = canonicalInput14519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10650 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10651 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14519 hH))).trans (reductionSound10650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7284).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10651 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7284).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10651 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 720] ![5, 1, 1, 1, 2] reductionProjection10651 ![reductionProjection1871, reductionProjection10602, reductionProjection10648, reductionProjection10649, reductionProjection10650]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10652 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 40), (19, 200), (20, -30), (94, -25), (104, -160), (105, -80), (108, -240), (241, -160), (243, -80), (247, -160), (704, -80), (1251, -25)]

def reductionPivot10652 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, 1, 0, -2]]

theorem reductionSound10652 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7391).moment H =
      Integer.Sparse.eval reductionProjection10652 (momentVector H) := by
  have heq : reductionPivot10652 = (fun u v => (normalNode7391).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7391).moment H = injectiveMoment H reductionPivot10652 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7391).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10652 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10652 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10652 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection762, oldProjection764, oldProjection905, reductionProjection6400] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10652 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node762⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection762 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10652 (1 : Fin 4)) = canonicalInput14493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection764 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14493 hH))).trans (oldProjectionSound764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10652 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node905⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection905 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10652 (3 : Fin 4)) = canonicalInput14561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10652 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14561 hH))).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7391).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10652 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7391).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10652 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 720] ![2, 10, 10, 2] reductionProjection10652 ![oldProjection762, oldProjection764, oldProjection905, reductionProjection6400]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10653 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -40), (19, -300), (20, 40), (23, -120), (26, 40), (37, -120), (88, 40), (94, 60), (104, 360), (105, 200), (108, 560), (228, -120), (241, 440), (243, 280), (247, 320), (325, 360), (539, 360), (698, 80), (704, 80), (1226, 40), (1251, 35)]

def reductionPivot10653 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound10653 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7285).moment H =
      Integer.Sparse.eval reductionProjection10653 (momentVector H) := by
  have heq : reductionPivot10653 = (fun u v => (normalNode7285).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7285).moment H = injectiveMoment H reductionPivot10653 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7285).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10653 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10653 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10653 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1872, reductionProjection10603, reductionProjection10067, reductionProjection10652, reductionProjection10616] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10653 (0 : Fin 5)) = (normalNode1042).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1872 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10653 (1 : Fin 5)) = canonicalInput14355.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10603 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14355 hH))).trans (reductionSound10603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10653 (2 : Fin 5)) = canonicalInput14504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10067 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14504 hH))).trans (reductionSound10067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10653 (3 : Fin 5)) = canonicalInput14520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10652 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14520 hH))).trans (reductionSound10652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10653 (4 : Fin 5)) = canonicalInput14522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10616 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10653 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14522 hH))).trans (reductionSound10616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7285).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10653 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7285).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10653 (j : Fin 5)))
      1 720 1440 2 ![288, 288, 720, 1440, 1440] ![5, 5, 2, 1, 1] reductionProjection10653 ![reductionProjection1872, reductionProjection10603, reductionProjection10067, reductionProjection10652, reductionProjection10616]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10654 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (94, -8), (243, -16), (704, -32), (1251, -7)]

def reductionPivot10654 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1]]

theorem reductionSound10654 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7404).moment H =
      Integer.Sparse.eval reductionProjection10654 (momentVector H) := by
  have heq : reductionPivot10654 = (fun u v => (normalNode7404).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7404).moment H = injectiveMoment H reductionPivot10654 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7404).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10654 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10654 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10654 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1171, oldProjection254, oldProjection919, oldProjection922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10654 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5623 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5623 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10654 (1 : Fin 4)) = canonicalInput14569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection254 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14569 hH))).trans (oldProjectionSound254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10654 (2 : Fin 4)) = canonicalInput14615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14615 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10654 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10654 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7404).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10654 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7404).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10654 (j : Fin 4)))
      2 288 288 2 ![144, 48, 144, 144] ![2, 6, 2, 2] reductionProjection10654 ![oldProjection1171, oldProjection254, oldProjection919, oldProjection922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10655 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -30), (19, -100), (20, 15), (23, -120), (26, 40), (88, 40), (104, 40), (105, 80), (228, -120), (241, 80), (243, 200), (262, 360), (539, 360), (682, -120), (698, 80), (703, 40), (704, 120), (1226, 80), (1278, -120), (1325, 360), (1331, 360)]

def reductionPivot10655 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10655 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7286).moment H =
      Integer.Sparse.eval reductionProjection10655 (momentVector H) := by
  have heq : reductionPivot10655 = (fun u v => (normalNode7286).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7286).moment H = injectiveMoment H reductionPivot10655 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7286).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10655 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10655 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 72, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10655 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1873, reductionProjection10604, reductionProjection10081, reductionProjection10447, reductionProjection10654] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10655 (0 : Fin 5)) = (normalNode1043).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1873 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10655 (1 : Fin 5)) = canonicalInput14356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10604 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14356 hH))).trans (reductionSound10604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10655 (2 : Fin 5)) = canonicalInput14505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10081 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10081 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14505 hH))).trans (reductionSound10081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10655 (3 : Fin 5)) = canonicalInput14521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10447 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14521 hH))).trans (reductionSound10447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10655 (4 : Fin 5)) = canonicalInput14523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10654 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10655 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14523 hH))).trans (reductionSound10654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7286).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10655 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7286).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10655 (j : Fin 5)))
      1 720 1440 2 ![288, 288, 1440, 72, 288] ![5, 5, 1, 20, 5] reductionProjection10655 ![reductionProjection1873, reductionProjection10604, reductionProjection10081, reductionProjection10447, reductionProjection10654]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

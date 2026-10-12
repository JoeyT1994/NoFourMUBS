import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical019
import NoFourMUBs.Step2.SOS.Canonical020
import NoFourMUBs.Step2.SOS.Canonical021
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical301
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical176
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical196
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical64
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical75
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection832 : Integer.Sparse (Fin 1613) := [(0, -3), (8, -240), (19, -120), (20, 20), (42, 160), (76, -960), (77, -720), (82, -240), (88, 480), (90, 480), (91, 80), (94, 5), (231, -960), (241, 320), (243, 800), (296, 720), (299, 720), (302, 1440), (683, -480), (698, 800), (700, 480), (1058, -240), (1226, 640), (1251, 40), (1321, -240), (1323, -960)]

def reductionPivot832 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound832 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode437).moment H =
      Integer.Sparse.eval reductionProjection832 (momentVector H) := by
  have heq : reductionPivot832 = (fun u v => (normalNode437).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode437).moment H = injectiveMoment H reductionPivot832 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode437).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot832 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot832 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 18, 288, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot832 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection827, reductionProjection828, oldProjection1916, reductionProjection830, reductionProjection831] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot832 (0 : Fin 5)) = (normalNode671).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot832 (1 : Fin 5)) = (normalNode459).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection828 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot832 (2 : Fin 5)) = canonicalInput1269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1916 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1269 hH))).trans (oldProjectionSound1916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot832 (3 : Fin 5)) = (normalNode454).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection830 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot832 (4 : Fin 5)) = canonicalInput1268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection831 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot832 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1268 hH))).trans (reductionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode437).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot832 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode437).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot832 (j : Fin 5)))
      1 1440 1440 1 ![720, 18, 288, 18, 1440] ![2, 80, 5, 80, 1] reductionProjection832 ![reductionProjection827, reductionProjection828, oldProjection1916, reductionProjection830, reductionProjection831]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection833 : Integer.Sparse (Fin 1613) := [(175, 1)]

theorem reductionSound833 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code175).moment H =
      Integer.Sparse.eval reductionProjection833 (momentVector H) := by
  have hc : coordinates (175 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code175) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection833, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection834 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (89, 240), (90, -80), (94, -15), (175, -720), (243, -80), (698, -320), (700, -160), (704, -80), (1052, 240), (1059, -80), (1223, 240), (1226, -160), (1251, 20)]

def reductionPivot834 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound834 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode699).moment H =
      Integer.Sparse.eval reductionProjection834 (momentVector H) := by
  have heq : reductionPivot834 = (fun u v => (normalNode699).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode699).moment H = injectiveMoment H reductionPivot834 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode699).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot834 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot834 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot834 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection850, reductionProjection808, reductionProjection833, oldProjection848] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot834 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2405 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection850 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2405 hH))).trans (oldProjectionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot834 (1 : Fin 4)) = canonicalInput1730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1730 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot834 (2 : Fin 4)) = canonicalInput1642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1642 hH))).trans (reductionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot834 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1234 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection848 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot834 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1234 hH))).trans (oldProjectionSound848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode699).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot834 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode699).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot834 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 9] ![2, 160, 1440, 160] reductionProjection834 ![oldProjection850, reductionProjection808, reductionProjection833, oldProjection848]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection835 : Integer.Sparse (Fin 1613) := [(45, 1), (137, -3), (141, -3), (144, -3), (242, 1), (697, 1)]

def reductionPivot835 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, 2, -3]]

theorem reductionSound835 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode473).moment H =
      Integer.Sparse.eval reductionProjection835 (momentVector H) := by
  have heq : reductionPivot835 = (fun u v => (normalNode473).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode473).moment H = injectiveMoment H reductionPivot835 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode473).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot835 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot835 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot835 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection784, reductionProjection821, oldProjection403, oldProjection400] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot835 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node784⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot835 (1 : Fin 4)) = canonicalInput1350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1350 hH))).trans (reductionSound821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot835 (2 : Fin 4)) = canonicalInput1304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1304 hH))).trans (oldProjectionSound403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot835 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node400⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection400 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot835 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode473).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot835 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode473).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot835 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection835 ![oldProjection784, reductionProjection821, oldProjection403, oldProjection400]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection836 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -140), (20, 20), (38, -720), (42, 80), (45, -240), (56, -240), (61, -240), (63, -240), (89, -240), (90, 80), (94, 95), (137, 720), (141, 1440), (142, 720), (144, 720), (175, 720), (241, 240), (242, -240), (243, 560), (244, 80), (246, 80), (247, 80), (697, -240), (698, 720), (700, 560), (701, 80), (703, 80), (704, 560), (1052, -240), (1053, -480), (1054, -480), (1059, 160), (1061, -480), (1223, -240), (1226, 160), (1251, 30)]

def reductionPivot836 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound836 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode446).moment H =
      Integer.Sparse.eval reductionProjection836 (momentVector H) := by
  have heq : reductionPivot836 = (fun u v => (normalNode446).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode446).moment H = injectiveMoment H reductionPivot836 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode446).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot836 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot836 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 6, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot836 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection834, oldProjection1486, reductionProjection835, reductionProjection767, reductionProjection761] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot836 (0 : Fin 5)) = (normalNode699).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot836 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot836 (2 : Fin 5)) = (normalNode473).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection835 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot836 (3 : Fin 5)) = (normalNode472).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection767 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot836 (4 : Fin 5)) = (normalNode471).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection761 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot836 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode446).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot836 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode446).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot836 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 6, 1440, 288] ![1, 1, 240, 1, 5] reductionProjection836 ![reductionProjection834, oldProjection1486, reductionProjection835, reductionProjection767, reductionProjection761]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection837 : Integer.Sparse (Fin 1613) := [(170, 1)]

theorem reductionSound837 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code170).moment H =
      Integer.Sparse.eval reductionProjection837 (momentVector H) := by
  have hc : coordinates (170 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code170) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection837, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection838 : Integer.Sparse (Fin 1613) := [(56, 24), (89, 24), (90, -8), (94, -1), (170, -72), (243, -8), (698, -8), (700, -8), (704, -8), (1219, 24), (1223, 24), (1226, -16), (1227, -8), (1251, -1)]

def reductionPivot838 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]

theorem reductionSound838 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode701).moment H =
      Integer.Sparse.eval reductionProjection838 (momentVector H) := by
  have heq : reductionPivot838 = (fun u v => (normalNode701).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode701).moment H = injectiveMoment H reductionPivot838 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode701).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot838 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot838 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot838 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection816, reductionProjection819, oldProjection1239, reductionProjection837] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot838 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection816 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot838 (1 : Fin 4)) = canonicalInput1775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1775 hH))).trans (reductionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot838 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1238 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1238 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot838 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code170).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection837 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot838 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode701).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot838 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode701).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot838 (j : Fin 4)))
      2 144 144 2 ![72, 9, 9, 1] ![2, 16, 16, 144] reductionProjection838 ![oldProjection816, reductionProjection819, oldProjection1239, reductionProjection837]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection839 : Integer.Sparse (Fin 1613) := [(45, 24), (94, -1), (138, -72), (140, -72), (144, -72), (240, 24), (698, -8), (704, -8), (1251, -1)]

def reductionPivot839 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, 1, -2]]

theorem reductionSound839 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode474).moment H =
      Integer.Sparse.eval reductionProjection839 (momentVector H) := by
  have heq : reductionPivot839 = (fun u v => (normalNode474).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode474).moment H = injectiveMoment H reductionPivot839 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode474).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot839 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot839 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot839 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection785, reductionProjection821, oldProjection402, oldProjection401] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot839 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node785⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection785 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot839 (1 : Fin 4)) = canonicalInput1351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1351 hH))).trans (reductionSound821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot839 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1113 hH))).trans (oldProjectionSound402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot839 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node401⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection401 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot839 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode474).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot839 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode474).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot839 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection839 ![oldProjection785, reductionProjection821, oldProjection402, oldProjection401]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection840 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -100), (20, 20), (38, -720), (42, 80), (45, -240), (56, -240), (61, -240), (63, -240), (89, -240), (90, 80), (94, 80), (138, 1440), (139, 720), (140, 720), (144, 720), (170, 720), (240, -240), (241, 80), (243, 560), (246, 80), (247, 80), (698, 480), (700, 320), (701, 80), (703, 80), (704, 560), (1054, -480), (1061, -960), (1219, -240), (1223, -240), (1226, 160), (1227, 80), (1251, 65)]

def reductionPivot840 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound840 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode447).moment H =
      Integer.Sparse.eval reductionProjection840 (momentVector H) := by
  have heq : reductionPivot840 = (fun u v => (normalNode447).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode447).moment H = injectiveMoment H reductionPivot840 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode447).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot840 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot840 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 288, 72, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot840 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection838, oldProjection1486, reductionProjection765, oldProjection1482, reductionProjection839] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot840 (0 : Fin 5)) = (normalNode701).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection838 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot840 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1125 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1125 hH))).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot840 (2 : Fin 5)) = (normalNode475).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection765 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot840 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1482⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1482 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot840 (4 : Fin 5)) = (normalNode474).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection839 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot840 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode447).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot840 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode447).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot840 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 288, 72, 144] ![10, 1, 5, 20, 10] reductionProjection840 ![reductionProjection838, oldProjection1486, reductionProjection765, oldProjection1482, reductionProjection839]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection841 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (56, 480), (94, 25), (698, -160), (700, -320), (1052, 240), (1059, -80), (1219, 480), (1251, 15)]

def reductionPivot841 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound841 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode710).moment H =
      Integer.Sparse.eval reductionProjection841 (momentVector H) := by
  have heq : reductionPivot841 = (fun u v => (normalNode710).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode710).moment H = injectiveMoment H reductionPivot841 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode710).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot841 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot841 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot841 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1063, reductionProjection808, reductionProjection160, oldProjection1104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot841 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2048 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2048 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot841 (1 : Fin 4)) = canonicalInput1730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1730 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot841 (2 : Fin 4)) = canonicalInput1681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1681 hH))).trans (reductionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot841 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1250 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1104 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot841 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1250 hH))).trans (oldProjectionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode710).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot841 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode710).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot841 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 72, 720] ![2, 160, 20, 2] reductionProjection841 ![oldProjection1063, reductionProjection808, reductionProjection160, oldProjection1104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection842 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -120), (20, 30), (38, -720), (56, -240), (61, -240), (94, 75), (241, 80), (243, 160), (244, 40), (247, 160), (698, 240), (700, 360), (701, 120), (704, 320), (1052, -120), (1053, -240), (1059, 80), (1061, -480), (1219, -240), (1251, 60)]

def reductionPivot842 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound842 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode449).moment H =
      Integer.Sparse.eval reductionProjection842 (momentVector H) := by
  have heq : reductionPivot842 = (fun u v => (normalNode449).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode449).moment H = injectiveMoment H reductionPivot842 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode449).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot842 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot842 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot842 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection841, oldProjection1486, oldProjection1486, oldProjection1484, oldProjection1483] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot842 (0 : Fin 5)) = (normalNode710).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot842 (1 : Fin 5)) = canonicalInput1322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1322 hH))).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot842 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot842 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1484⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1484 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot842 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1483⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1483 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot842 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode449).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot842 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode449).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot842 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 720, 288] ![1, 1, 1, 2, 5] reductionProjection842 ![reductionProjection841, oldProjection1486, oldProjection1486, oldProjection1484, oldProjection1483]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection843 : Integer.Sparse (Fin 1613) := [(42, 16), (60, 16), (94, -1), (243, 16), (700, 48), (704, 16), (1251, 3)]

def reductionPivot843 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![1, 1, -3, 1]]

theorem reductionSound843 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6790).moment H =
      Integer.Sparse.eval reductionProjection843 (momentVector H) := by
  have heq : reductionPivot843 = (fun u v => (normalNode6790).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6790).moment H = injectiveMoment H reductionPivot843 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6790).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot843 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot843 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot843 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection188, oldProjection87, oldProjection93] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot843 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6519 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot843 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot843 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6519 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot843 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5723 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot843 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot843 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5723 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot843 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot843 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot843 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5699 hH))).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6790).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot843 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6790).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot843 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection843 ![oldProjection188, oldProjection87, oldProjection93]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection844 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (42, -80), (58, 240), (60, -80), (241, -80), (243, -240), (698, -240), (700, -480), (704, -160), (1052, 240), (1251, -20)]

def reductionPivot844 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -2, 1]]

theorem reductionSound844 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6789).moment H =
      Integer.Sparse.eval reductionProjection844 (momentVector H) := by
  have heq : reductionPivot844 = (fun u v => (normalNode6789).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6789).moment H = injectiveMoment H reductionPivot844 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6789).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot844 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot844 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot844 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection977, oldProjection819, oldProjection812, reductionProjection843] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot844 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6296 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection977 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6296 hH))).trans (oldProjectionSound977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot844 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5721 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5721 hH))).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot844 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node812⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection812 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot844 (3 : Fin 4)) = (normalNode6790).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection843 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot844 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6789).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot844 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6789).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot844 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 9, 144] ![10, 2, 160, 10] reductionProjection844 ![oldProjection977, oldProjection819, oldProjection812, reductionProjection843]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection845 : Integer.Sparse (Fin 1613) := [(36, 3), (38, 3), (42, -1), (60, -1), (61, 3), (132, -9), (243, -1), (244, -1), (700, -3), (701, -1), (1053, 3), (1059, -1)]

def reductionPivot845 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 0, -2, 0]]

theorem reductionSound845 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode464).moment H =
      Integer.Sparse.eval reductionProjection845 (momentVector H) := by
  have heq : reductionPivot845 = (fun u v => (normalNode464).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode464).moment H = injectiveMoment H reductionPivot845 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode464).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot845 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot845 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot845 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection781, oldProjection1164, oldProjection399, reductionProjection786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot845 (0 : Fin 4)) = canonicalInput2775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection781 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2775 hH))).trans (oldProjectionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot845 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1156 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1164 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1156 hH))).trans (oldProjectionSound1164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot845 (2 : Fin 4)) = canonicalInput1293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection399 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1293 hH))).trans (oldProjectionSound399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot845 (3 : Fin 4)) = canonicalInput1291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection786 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot845 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1291 hH))).trans (reductionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode464).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot845 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode464).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot845 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection845 ![oldProjection781, oldProjection1164, oldProjection399, reductionProjection786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection846 : Integer.Sparse (Fin 1613) := [(134, 1)]

theorem reductionSound846 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code134).moment H =
      Integer.Sparse.eval reductionProjection846 (momentVector H) := by
  have hc : coordinates (134 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code134) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection846, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection847 : Integer.Sparse (Fin 1613) := [(58, 12), (94, -1), (131, -36), (134, -36), (142, -36), (698, -4), (700, -8), (704, -4), (1251, -1)]

def reductionPivot847 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound847 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode462).moment H =
      Integer.Sparse.eval reductionProjection847 (momentVector H) := by
  have heq : reductionPivot847 = (fun u v => (normalNode462).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode462).moment H = injectiveMoment H reductionPivot847 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode462).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot847 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot847 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot847 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection809, reductionProjection757, reductionProjection846, reductionProjection778] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot847 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection809 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot847 (1 : Fin 4)) = canonicalInput1348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection757 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1348 hH))).trans (reductionSound757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot847 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection846 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot847 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code131).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection778 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot847 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode462).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot847 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode462).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot847 (j : Fin 4)))
      2 72 72 2 ![36, 1, 1, 1] ![2, 72, 72, 72] reductionProjection847 ![oldProjection809, reductionProjection757, reductionProjection846, reductionProjection778]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection848 : Integer.Sparse (Fin 1613) := [(40, 24), (94, -1), (131, -72), (133, -72), (141, -72), (242, 24), (700, -8), (704, -8), (1251, -1)]

def reductionPivot848 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound848 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode461).moment H =
      Integer.Sparse.eval reductionProjection848 (momentVector H) := by
  have heq : reductionPivot848 = (fun u v => (normalNode461).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode461).moment H = injectiveMoment H reductionPivot848 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode461).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot848 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot848 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot848 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection778, oldProjection403, reductionProjection799, reductionProjection778] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot848 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node778⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot848 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1166 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1166 hH))).trans (oldProjectionSound403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot848 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code133).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection799 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot848 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code131).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection778 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot848 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode461).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot848 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode461).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot848 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection848 ![oldProjection778, oldProjection403, reductionProjection799, reductionProjection778]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection849 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 10), (36, -240), (38, -240), (40, -240), (42, 240), (58, -480), (60, 160), (61, -480), (63, -240), (94, 35), (131, 1440), (132, 720), (133, 720), (134, 720), (139, 720), (141, 720), (142, 720), (241, 80), (242, -240), (243, 480), (244, 80), (246, 80), (698, 400), (700, 960), (701, 160), (703, 80), (704, 400), (1052, -240), (1053, -240), (1054, -240), (1059, 80), (1061, -240), (1251, 50)]

def reductionPivot849 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound849 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode460).moment H =
      Integer.Sparse.eval reductionProjection849 (momentVector H) := by
  have heq : reductionPivot849 = (fun u v => (normalNode460).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode460).moment H = injectiveMoment H reductionPivot849 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode460).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot849 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot849 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 18, 72, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot849 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection844, reductionProjection765, reductionProjection845, reductionProjection847, reductionProjection848] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot849 (0 : Fin 5)) = canonicalInput4049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4049 hH))).trans (reductionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot849 (1 : Fin 5)) = canonicalInput1329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection765 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1329 hH))).trans (reductionSound765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot849 (2 : Fin 5)) = canonicalInput1292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection845 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1292 hH))).trans (reductionSound845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot849 (3 : Fin 5)) = canonicalInput1288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection847 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1288 hH))).trans (reductionSound847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot849 (4 : Fin 5)) = (normalNode461).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection848 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot849 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode460).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot849 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode460).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot849 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 18, 72, 144] ![1, 5, 80, 20, 10] reductionProjection849 ![reductionProjection844, reductionProjection765, reductionProjection845, reductionProjection847, reductionProjection848]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection850 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (42, -160), (94, -30), (243, -80), (698, -80), (700, -240), (701, -80), (704, -240), (1251, -30)]

def reductionPivot850 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound850 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6507).moment H =
      Integer.Sparse.eval reductionProjection850 (momentVector H) := by
  have heq : reductionPivot850 = (fun u v => (normalNode6507).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6507).moment H = injectiveMoment H reductionPivot850 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6507).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot850 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot850 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot850 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection919, oldProjection1170, oldProjection782, oldProjection780] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot850 (0 : Fin 4)) = canonicalInput14607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14607 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot850 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5632 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5632 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot850 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node782⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection782 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection782 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot850 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node780⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot850 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6507).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot850 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6507).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot850 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 9, 144] ![10, 2, 160, 10] reductionProjection850 ![oldProjection919, oldProjection1170, oldProjection782, oldProjection780]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection851 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (36, 48), (38, 48), (42, -16), (60, -16), (61, 48), (94, -2), (134, -144), (243, -16), (698, -16), (700, -80), (701, -16), (704, -16), (1061, 48), (1251, -5)]

def reductionPivot851 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound851 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode466).moment H =
      Integer.Sparse.eval reductionProjection851 (momentVector H) := by
  have heq : reductionPivot851 = (fun u v => (normalNode466).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode466).moment H = injectiveMoment H reductionPivot851 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode466).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot851 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot851 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot851 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection780, oldProjection997, reductionProjection846, reductionProjection786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot851 (0 : Fin 4)) = canonicalInput2778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2778 hH))).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot851 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1158 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1158 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot851 (2 : Fin 4)) = canonicalInput1296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection846 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1296 hH))).trans (reductionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot851 (3 : Fin 4)) = canonicalInput1295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection786 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot851 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1295 hH))).trans (reductionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode466).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot851 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode466).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot851 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 9] ![2, 4, 288, 32] reductionProjection851 ![oldProjection780, oldProjection997, reductionProjection846, reductionProjection786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection852 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (36, 48), (38, 96), (42, -32), (94, -2), (134, -144), (243, -48), (247, -16), (700, -32), (704, -32), (1251, -9)]

def reductionPivot852 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound852 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode465).moment H =
      Integer.Sparse.eval reductionProjection852 (momentVector H) := by
  have heq : reductionPivot852 = (fun u v => (normalNode465).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode465).moment H = injectiveMoment H reductionPivot852 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode465).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot852 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot852 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot852 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection779, oldProjection996, reductionProjection846, reductionProjection716] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot852 (0 : Fin 4)) = canonicalInput2777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection779 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2777 hH))).trans (oldProjectionSound779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot852 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1157 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection996 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1157 hH))).trans (oldProjectionSound996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot852 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection846 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot852 (3 : Fin 4)) = canonicalInput1294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection716 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot852 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1294 hH))).trans (reductionSound716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode465).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot852 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode465).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot852 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 9] ![2, 2, 288, 32] reductionProjection852 ![oldProjection779, oldProjection996, reductionProjection846, reductionProjection716]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection853 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -200), (20, 30), (36, -720), (38, -1440), (42, 480), (60, 160), (61, -480), (94, 85), (132, 720), (134, 1440), (241, 80), (243, 640), (244, 80), (247, 160), (698, 320), (700, 1120), (701, 240), (704, 640), (1053, -240), (1059, 80), (1061, -480), (1251, 125)]

def reductionPivot853 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound853 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode463).moment H =
      Integer.Sparse.eval reductionProjection853 (momentVector H) := by
  have heq : reductionPivot853 = (fun u v => (normalNode463).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode463).moment H = injectiveMoment H reductionPivot853 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode463).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot853 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot853 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot853 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection850, oldProjection1486, reductionProjection845, reductionProjection851, reductionProjection852] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot853 (0 : Fin 5)) = canonicalInput2770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection850 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2770 hH))).trans (reductionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot853 (1 : Fin 5)) = canonicalInput1327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1327 hH))).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot853 (2 : Fin 5)) = canonicalInput1292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection845 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1292 hH))).trans (reductionSound845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot853 (3 : Fin 5)) = canonicalInput1289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection851 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1289 hH))).trans (reductionSound851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot853 (4 : Fin 5)) = (normalNode465).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection852 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot853 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode463).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot853 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode463).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot853 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 18, 288, 288] ![1, 1, 80, 5, 5] reductionProjection853 ![reductionProjection850, oldProjection1486, reductionProjection845, reductionProjection851, reductionProjection852]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection854 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 5), (94, -2), (244, 16), (1251, 1)]

def reductionPivot854 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![0, 0, 4, -4], ![1, 0, -1, 0]]

theorem reductionSound854 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7479).moment H =
      Integer.Sparse.eval reductionProjection854 (momentVector H) := by
  have heq : reductionPivot854 = (fun u v => (normalNode7479).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7479).moment H = injectiveMoment H reductionPivot854 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7479).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot854 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot854 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot854 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection54, oldProjection270, oldProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot854 (0 : Fin 3)) = canonicalInput19320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot854 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot854 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19320 hH))).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot854 (1 : Fin 3)) = canonicalInput14652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot854 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection270 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot854 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14652 hH))).trans (oldProjectionSound270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot854 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6095 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot854 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot854 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6095 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7479).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot854 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7479).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot854 (j : Fin 3)))
      3 144 144 3 ![16, 48, 24] ![9, 3, 6] reductionProjection854 ![oldProjection54, oldProjection270, oldProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection855 : Integer.Sparse (Fin 1613) := [(44, 1), (244, -1), (700, 1), (701, 2)]

def reductionPivot855 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, -1, 4], ![0, 0, 4, -4], ![0, 2, -2, 0]]

theorem reductionSound855 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6517).moment H =
      Integer.Sparse.eval reductionProjection855 (momentVector H) := by
  have heq : reductionPivot855 = (fun u v => (normalNode6517).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6517).moment H = injectiveMoment H reductionPivot855 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6517).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot855 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot855 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot855 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection33, oldProjection171, reductionProjection4] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot855 (0 : Fin 3)) = canonicalInput23956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot855 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot855 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23956 hH))).trans (oldProjectionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot855 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5641 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot855 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection171 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot855 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5641 hH))).trans (oldProjectionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot855 (2 : Fin 3)) = canonicalInput13086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot855 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot855 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13086 hH))).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6517).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot855 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6517).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot855 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection855 ![oldProjection33, oldProjection171, reductionProjection4]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection856 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (44, 16), (94, 3), (244, 32), (701, 32), (704, 16)]

def reductionPivot856 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![0, 0, 4, -4], ![1, 1, -2, 0]]

theorem reductionSound856 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6516).moment H =
      Integer.Sparse.eval reductionProjection856 (momentVector H) := by
  have heq : reductionPivot856 = (fun u v => (normalNode6516).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6516).moment H = injectiveMoment H reductionPivot856 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6516).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot856 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot856 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 48, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot856 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection157, oldProjection190, reductionProjection4] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot856 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6095 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot856 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot856 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6095 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot856 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5634 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot856 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection190 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot856 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5634 hH))).trans (oldProjectionSound190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot856 (2 : Fin 3)) = canonicalInput13086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot856 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot856 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13086 hH))).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6516).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot856 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6516).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot856 (j : Fin 3)))
      3 144 144 3 ![24, 48, 3] ![6, 3, 48] reductionProjection856 ![oldProjection157, oldProjection190, reductionProjection4]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection857 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -4), (44, -32), (94, -3), (244, -32), (700, -16), (701, -80), (704, -32), (1251, -3)]

def reductionPivot857 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -1, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound857 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6515).moment H =
      Integer.Sparse.eval reductionProjection857 (momentVector H) := by
  have heq : reductionPivot857 = (fun u v => (normalNode6515).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6515).moment H = injectiveMoment H reductionPivot857 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6515).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot857 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot857 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot857 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection854, oldProjection981, reductionProjection855, reductionProjection856] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot857 (0 : Fin 4)) = (normalNode7479).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection854 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot857 (1 : Fin 4)) = canonicalInput13108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection981 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13108 hH))).trans (oldProjectionSound981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot857 (2 : Fin 4)) = (normalNode6517).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection855 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot857 (3 : Fin 4)) = (normalNode6516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection856 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot857 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection856 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6515).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot857 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6515).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot857 (j : Fin 4)))
      2 288 288 2 ![144, 72, 9, 144] ![2, 4, 32, 2] reductionProjection857 ![reductionProjection854, oldProjection981, reductionProjection855, reductionProjection856]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection858 : Integer.Sparse (Fin 1613) := [(135, 1)]

theorem reductionSound858 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code135).moment H =
      Integer.Sparse.eval reductionProjection858 (momentVector H) := by
  have hc : coordinates (135 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code135) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection858, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection859 : Integer.Sparse (Fin 1613) := [(5, -3), (44, 1), (61, -3), (244, 1), (701, 1)]

def reductionPivot859 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 0, 2, 1], ![0, 4, -2, -2], ![4, -4, 0, 0]]

theorem reductionSound859 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6014).moment H =
      Integer.Sparse.eval reductionProjection859 (momentVector H) := by
  have heq : reductionPivot859 = (fun u v => (normalNode6014).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6014).moment H = injectiveMoment H reductionPivot859 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6014).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6014).entries)).symm
  have hshape : reductionPivot859 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot859 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot859 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection2, reductionProjection4, oldProjection99] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot859 (0 : Fin 3)) = canonicalInput18.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot859 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection2 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot859 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection2 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18 hH))).trans (reductionSound2 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot859 (1 : Fin 3)) = canonicalInput558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot859 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot859 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound558 hH))).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot859 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw364 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot859 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection99 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot859 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection99 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical364 hH))).trans (oldProjectionSound99 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6014).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot859 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6014).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot859 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection859 ![reductionProjection2, reductionProjection4, oldProjection99]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection860 : Integer.Sparse (Fin 1613) := [(5, 3), (44, -2), (61, 6), (135, -9), (244, -1), (700, -2), (701, -4), (1053, 3)]

def reductionPivot860 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![2, 0, -2, 0]]

theorem reductionSound860 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode468).moment H =
      Integer.Sparse.eval reductionProjection860 (momentVector H) := by
  have heq : reductionPivot860 = (fun u v => (normalNode468).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode468).moment H = injectiveMoment H reductionPivot860 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode468).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot860 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot860 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot860 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection855, oldProjection814, reductionProjection858, reductionProjection859] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot860 (0 : Fin 4)) = canonicalInput2785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection855 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2785 hH))).trans (reductionSound855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot860 (1 : Fin 4)) = canonicalInput1331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection814 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1331 hH))).trans (oldProjectionSound814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot860 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code135).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection858 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection858 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot860 (3 : Fin 4)) = canonicalInput1298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection859 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot860 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1298 hH))).trans (reductionSound859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode468).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot860 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode468).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot860 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection860 ![reductionProjection855, oldProjection814, reductionProjection858, reductionProjection859]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection861 : Integer.Sparse (Fin 1613) := [(136, 1)]

theorem reductionSound861 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code136).moment H =
      Integer.Sparse.eval reductionProjection861 (momentVector H) := by
  have hc : coordinates (136 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code136) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection861, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection862 : Integer.Sparse (Fin 1613) := [(5, 12), (19, 3), (44, -8), (61, 24), (94, -1), (136, -36), (244, -12), (701, -16), (704, -8), (1061, 12)]

def reductionPivot862 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound862 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode469).moment H =
      Integer.Sparse.eval reductionProjection862 (momentVector H) := by
  have heq : reductionPivot862 = (fun u v => (normalNode469).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode469).moment H = injectiveMoment H reductionPivot862 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode469).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot862 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot862 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot862 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection856, oldProjection813, reductionProjection861, reductionProjection859] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot862 (0 : Fin 4)) = canonicalInput2787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection856 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection856 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2787 hH))).trans (reductionSound856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot862 (1 : Fin 4)) = canonicalInput1334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection813 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1334 hH))).trans (oldProjectionSound813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot862 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code136).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection861 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot862 (3 : Fin 4)) = canonicalInput1300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection859 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot862 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1300 hH))).trans (reductionSound859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode469).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot862 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode469).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot862 (j : Fin 4)))
      2 72 144 4 ![144, 144, 1, 9] ![1, 1, 144, 16] reductionProjection862 ![reductionProjection856, oldProjection813, reductionProjection861, reductionProjection859]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection863 : Integer.Sparse (Fin 1613) := [(5, -36), (19, -11), (20, 2), (44, 32), (61, -96), (94, 5), (135, 36), (136, 72), (244, 40), (700, 16), (701, 80), (704, 32), (1053, -24), (1061, -48), (1251, 2)]

def reductionPivot863 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound863 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode467).moment H =
      Integer.Sparse.eval reductionProjection863 (momentVector H) := by
  have heq : reductionPivot863 = (fun u v => (normalNode467).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode467).moment H = injectiveMoment H reductionPivot863 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode467).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot863 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot863 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 18, 72, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot863 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection857, oldProjection1483, reductionProjection860, reductionProjection862, reductionProjection862] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot863 (0 : Fin 5)) = canonicalInput2784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection857 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2784 hH))).trans (reductionSound857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot863 (1 : Fin 5)) = canonicalInput1330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1483 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1330 hH))).trans (oldProjectionSound1483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot863 (2 : Fin 5)) = canonicalInput1299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection860 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1299 hH))).trans (reductionSound860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot863 (3 : Fin 5)) = canonicalInput1297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection862 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection862 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1297 hH))).trans (reductionSound862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot863 (4 : Fin 5)) = (normalNode469).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection862 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot863 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection862 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode467).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot863 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode467).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot863 (j : Fin 5)))
      1 72 288 4 ![288, 288, 18, 72, 72] ![1, 1, 16, 4, 4] reductionProjection863 ![reductionProjection857, oldProjection1483, reductionProjection860, reductionProjection862, reductionProjection862]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

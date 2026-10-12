import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical105
import NoFourMUBs.Step2.SOS.Canonical106
import NoFourMUBs.Step2.SOS.Canonical123
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions212
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical100
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical110
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical236
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical247
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical63
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical97
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical98
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical99
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6816 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -120), (20, 15), (35, -240), (40, -240), (42, 160), (94, 60), (104, 160), (106, 80), (235, -240), (243, 320), (244, 320), (246, 80), (319, 720), (480, 720), (691, -480), (692, -480), (698, 240), (700, 800), (701, 560), (703, 160), (704, 320), (745, 720), (784, 720), (796, 1440), (806, 720), (1052, -240), (1059, 80), (1251, 50)]

def reductionPivot6816 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound6816 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3464).moment H =
      Integer.Sparse.eval reductionProjection6816 (momentVector H) := by
  have heq : reductionPivot6816 = (fun u v => (normalNode3464).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3464).moment H = injectiveMoment H reductionPivot6816 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3464).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6816 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6816 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6816 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4633, reductionProjection6772, reductionProjection6753, reductionProjection6813, reductionProjection6815] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6816 (0 : Fin 5)) = (normalNode1990).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4633 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6816 (1 : Fin 5)) = (normalNode3433).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6772 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6772 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6816 (2 : Fin 5)) = canonicalInput6649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6753 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6649 hH))).trans (reductionSound6753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6816 (3 : Fin 5)) = (normalNode3588).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6813 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6816 (4 : Fin 5)) = (normalNode3589).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6815 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6816 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3464).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6816 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3464).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6816 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 2, 288] ![5, 5, 1, 720, 5] reductionProjection6816 ![reductionProjection4633, reductionProjection6772, reductionProjection6753, reductionProjection6813, reductionProjection6815]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6817 : Integer.Sparse (Fin 1613) := [(19, 1), (682, 36), (690, 12), (697, 12), (698, -4), (704, -4), (799, -36), (1251, 1), (1321, 12), (1389, 12)]

def reductionPivot6817 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound6817 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode3515).moment H =
      Integer.Sparse.eval reductionProjection6817 (momentVector H) := by
  have heq : reductionPivot6817 = (fun u v => (normalNode3515).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3515).moment H = injectiveMoment H reductionPivot6817 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3515).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6817 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6817 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6817 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection941, reductionProjection182, oldProjection947, oldProjection1303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6817 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection941 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6817 (1 : Fin 4)) = canonicalInput6796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6796 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6817 (2 : Fin 4)) = canonicalInput6588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6588 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6817 (3 : Fin 4)) = canonicalInput6571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6817 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6571 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3515).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6817 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3515).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6817 (j : Fin 4)))
      2 72 72 2 ![3, 1, 72, 72] ![24, 72, 1, 1] reductionProjection6817 ![oldProjection941, reductionProjection182, oldProjection947, oldProjection1303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6818 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (426, -720), (698, -80), (700, -80), (798, -720), (799, -720), (1219, 240), (1251, -10)]

def reductionPivot6818 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 1, 1, -3]]

theorem reductionSound6818 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3601).moment H =
      Integer.Sparse.eval reductionProjection6818 (momentVector H) := by
  have heq : reductionPivot6818 = (fun u v => (normalNode3601).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3601).moment H = injectiveMoment H reductionPivot6818 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3601).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6818 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6818 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6818 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection473, oldProjection1352, reductionProjection182, oldProjection596] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6818 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3539 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3539 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6818 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3214 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3214 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6818 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code799).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6818 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node596⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection596 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6818 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection596 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3601).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6818 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3601).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6818 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection6818 ![oldProjection473, oldProjection1352, reductionProjection182, oldProjection596]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6819 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -5), (94, -25), (104, -80), (241, -80), (694, 240), (1251, 5)]

def reductionPivot6819 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, 2, -1], ![0, -1, -2, 3], ![0, 2, 1, -3], ![1, -1, 0, 0]]

theorem reductionSound6819 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10890).moment H =
      Integer.Sparse.eval reductionProjection6819 (momentVector H) := by
  have heq : reductionPivot6819 = (fun u v => (normalNode10890).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10890).moment H = injectiveMoment H reductionPivot6819 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10890).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6819 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6819 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6819 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1267, oldProjection1307, oldProjection1301, oldProjection1308] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6819 (0 : Fin 4)) = canonicalInput21741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1267 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21741 hH))).trans (oldProjectionSound1267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6819 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1307⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1307 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6819 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7563 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1301 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7563 hH))).trans (oldProjectionSound1301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6819 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1308⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1308 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6819 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10890).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6819 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10890).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6819 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 720, 720] ![2, 10, 2, 2] reductionProjection6819 ![oldProjection1267, oldProjection1307, oldProjection1301, oldProjection1308]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6820 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -140), (20, 10), (94, 55), (104, 80), (241, 160), (243, 240), (247, 80), (426, 720), (483, 720), (682, -720), (690, -240), (694, -240), (697, -240), (698, 640), (700, 80), (704, 320), (798, 720), (799, 1440), (1219, -240), (1226, 240), (1227, 160), (1251, -5), (1321, -240), (1389, -240)]

def reductionPivot6820 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound6820 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3465).moment H =
      Integer.Sparse.eval reductionProjection6820 (momentVector H) := by
  have heq : reductionPivot6820 = (fun u v => (normalNode3465).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3465).moment H = injectiveMoment H reductionPivot6820 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3465).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6820 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6820 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 72, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6820 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1678, reductionProjection6817, oldProjection2529, reductionProjection6818, reductionProjection6819] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6820 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1678⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1678 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6820 (1 : Fin 5)) = (normalNode3515).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6817 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6820 (2 : Fin 5)) = canonicalInput6677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2529 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6677 hH))).trans (oldProjectionSound2529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6820 (3 : Fin 5)) = (normalNode3601).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6818 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6820 (4 : Fin 5)) = canonicalInput6684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6819 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6820 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6684 hH))).trans (reductionSound6819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3465).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6820 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3465).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6820 (j : Fin 5)))
      1 1440 1440 1 ![720, 72, 288, 1440, 1440] ![2, 20, 5, 1, 1] reductionProjection6820 ![oldProjection1678, reductionProjection6817, oldProjection2529, reductionProjection6818, reductionProjection6819]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6821 : Integer.Sparse (Fin 1613) := [(772, 1)]

theorem reductionSound6821 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code772).moment H =
      Integer.Sparse.eval reductionProjection6821 (momentVector H) := by
  have hc : coordinates (772 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code772) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6821, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6822 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -15), (668, -720), (697, 240), (799, -720), (800, -720), (1251, -5)]

def reductionPivot6822 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, -2, 2, -1], ![1, 1, 0, -2]]

theorem reductionSound6822 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3602).moment H =
      Integer.Sparse.eval reductionProjection6822 (momentVector H) := by
  have heq : reductionPivot6822 = (fun u v => (normalNode3602).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3602).moment H = injectiveMoment H reductionPivot6822 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3602).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6822 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6822 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6822 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection521, oldProjection1007, oldProjection597, reductionProjection182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6822 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3540 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection521 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3540 hH))).trans (oldProjectionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6822 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3215 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3215 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6822 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node597⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection597 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6822 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code799).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6822 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3602).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6822 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3602).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6822 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection6822 ![oldProjection521, oldProjection1007, oldProjection597, reductionProjection182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6823 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (81, -120), (94, 55), (241, 40), (247, 160), (483, 360), (484, 360), (610, 360), (668, 360), (694, -240), (697, -240), (698, 160), (704, 40), (772, -720), (799, 360), (800, 360), (1055, -120), (1227, 40), (1251, 20)]

def reductionPivot6823 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound6823 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3466).moment H =
      Integer.Sparse.eval reductionProjection6823 (momentVector H) := by
  have heq : reductionPivot6823 = (fun u v => (normalNode3466).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3466).moment H = injectiveMoment H reductionPivot6823 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3466).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6823 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6823 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6823 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1679, reductionProjection6821, oldProjection2597, reductionProjection6822, reductionProjection6758] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6823 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1679⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6823 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code772).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6823 (2 : Fin 5)) = canonicalInput6678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2597 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6678 hH))).trans (oldProjectionSound2597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6823 (3 : Fin 5)) = (normalNode3602).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6822 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6823 (4 : Fin 5)) = canonicalInput6685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6823 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6685 hH))).trans (reductionSound6758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3466).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6823 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3466).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6823 (j : Fin 5)))
      1 720 1440 2 ![288, 1, 1440, 1440, 1440] ![5, 1440, 1, 1, 1] reductionProjection6823 ![oldProjection1679, reductionProjection6821, oldProjection2597, reductionProjection6822, reductionProjection6758]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6824 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (93, 60), (94, -5), (241, 160), (691, -240), (694, -240), (698, 400), (775, 720), (1050, -240), (1052, -240), (1058, -480), (1221, -240), (1226, 240), (1250, 180), (1251, 30)]

def reductionPivot6824 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]

theorem reductionSound6824 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3467).moment H =
      Integer.Sparse.eval reductionProjection6824 (momentVector H) := by
  have heq : reductionPivot6824 = (fun u v => (normalNode3467).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3467).moment H = injectiveMoment H reductionPivot6824 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3467).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6824 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6824 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 360, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6824 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1680, reductionProjection3864, oldProjection1220, oldProjection1220, oldProjection1956] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6824 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1680 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6824 (1 : Fin 5)) = (normalNode3516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6824 (2 : Fin 5)) = canonicalInput6679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6679 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6824 (3 : Fin 5)) = canonicalInput6689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6689 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6824 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1956 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6824 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3467).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6824 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3467).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6824 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 360, 360, 1440] ![1, 1, 4, 4, 1] reductionProjection6824 ![oldProjection1680, reductionProjection3864, oldProjection1220, oldProjection1220, oldProjection1956]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6825 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -20), (76, -240), (81, -720), (94, 150), (247, 80), (549, 720), (565, 720), (697, -240), (698, 560), (1221, -240), (1226, 80), (1227, 80), (1251, -85), (1323, -240), (1389, -720)]

def reductionPivot6825 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound6825 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3468).moment H =
      Integer.Sparse.eval reductionProjection6825 (momentVector H) := by
  have heq : reductionPivot6825 = (fun u v => (normalNode3468).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3468).moment H = injectiveMoment H reductionPivot6825 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3468).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6825 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6825 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 144, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6825 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1683, oldProjection1942, oldProjection936, reductionProjection2902, oldProjection2813] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6825 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1683 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6825 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1942 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6825 (2 : Fin 5)) = canonicalInput6681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection936 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6681 hH))).trans (oldProjectionSound936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6825 (3 : Fin 5)) = (normalNode3603).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2902 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6825 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3126 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6825 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3126 hH))).trans (oldProjectionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3468).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6825 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3468).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6825 (j : Fin 5)))
      1 1440 1440 1 ![360, 144, 720, 1440, 1440] ![4, 10, 2, 1, 1] reductionProjection6825 ![oldProjection1683, oldProjection1942, oldProjection936, reductionProjection2902, oldProjection2813]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6826 : Integer.Sparse (Fin 1613) := [(0, 6), (76, -240), (81, -720), (94, 195), (489, 720), (565, 720), (669, 720), (697, -960), (698, 1360), (700, 400), (704, 160), (801, 720), (1059, 480), (1221, -240), (1227, 320), (1251, -215), (1389, -480)]

def reductionPivot6826 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound6826 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3469).moment H =
      Integer.Sparse.eval reductionProjection6826 (momentVector H) := by
  have heq : reductionPivot6826 = (fun u v => (normalNode3469).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3469).moment H = injectiveMoment H reductionPivot6826 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3469).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6826 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6826 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6826 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1685, reductionProjection2971, oldProjection2608, reductionProjection4649, oldProjection2767] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6826 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1685 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6826 (1 : Fin 5)) = (normalNode3519).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2971 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6826 (2 : Fin 5)) = canonicalInput6683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2608 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6683 hH))).trans (oldProjectionSound2608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6826 (3 : Fin 5)) = (normalNode3605).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6826 (4 : Fin 5)) = canonicalInput6695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6826 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6695 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3469).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6826 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3469).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6826 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 720] ![1, 1, 1, 1, 2] reductionProjection6826 ![oldProjection1685, reductionProjection2971, oldProjection2608, reductionProjection4649, oldProjection2767]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6827 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (81, -480), (94, 40), (243, 80), (247, 80), (433, 1440), (691, -240), (697, -240), (698, 880), (700, 400), (704, 80), (775, 720), (806, 720), (807, 1440), (808, 720), (865, 720), (1050, -240), (1052, -240), (1058, -480), (1059, 320), (1221, -240), (1226, 160), (1227, 240), (1251, -75)]

def reductionPivot6827 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound6827 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3470).moment H =
      Integer.Sparse.eval reductionProjection6827 (momentVector H) := by
  have heq : reductionPivot6827 = (fun u v => (normalNode3470).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3470).moment H = injectiveMoment H reductionPivot6827 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3470).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6827 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6827 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6827 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1687, oldProjection1943, oldProjection2811, reductionProjection2783, oldProjection1957] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6827 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6827 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1943⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1943 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6827 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3125 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2811 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3125 hH))).trans (oldProjectionSound2811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6827 (3 : Fin 5)) = (normalNode3607).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2783 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6827 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1957⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1957 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6827 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1957 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3470).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6827 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3470).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6827 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 2, 1440] ![5, 1, 10, 720, 1] reductionProjection6827 ![oldProjection1687, oldProjection1943, oldProjection2811, reductionProjection2783, oldProjection1957]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6828 : Integer.Sparse (Fin 1613) := [(0, 3), (76, 240), (81, 480), (243, -80), (698, -480), (700, -160), (1058, 480), (1059, -240), (1221, 240), (1226, -80), (1227, -160), (1251, 45)]

def reductionPivot6828 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]

theorem reductionSound6828 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3609).moment H =
      Integer.Sparse.eval reductionProjection6828 (momentVector H) := by
  have heq : reductionPivot6828 = (fun u v => (normalNode3609).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3609).moment H = injectiveMoment H reductionPivot6828 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3609).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6828 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6828 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 9, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6828 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1010, oldProjection1235, oldProjection953, oldProjection944] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6828 (0 : Fin 4)) = canonicalInput7926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7926 hH))).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6828 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3270 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3270 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6828 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3266 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3266 hH))).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6828 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3265 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection944 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6828 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3265 hH))).trans (oldProjectionSound944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3609).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6828 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3609).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6828 (j : Fin 4)))
      2 1440 1440 2 ![360, 9, 9, 720] ![4, 160, 160, 2] reductionProjection6828 ![oldProjection1010, oldProjection1235, oldProjection953, oldProjection944]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6829 : Integer.Sparse (Fin 1613) := [(0, 9), (76, -240), (81, -720), (94, 120), (243, 80), (426, 720), (434, 1440), (565, 720), (698, 1520), (700, 240), (1058, -720), (1059, 400), (1219, -240), (1221, -240), (1226, 480), (1227, 800), (1251, -265), (1389, -240)]

def reductionPivot6829 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound6829 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3472).moment H =
      Integer.Sparse.eval reductionProjection6829 (momentVector H) := by
  have heq : reductionPivot6829 = (fun u v => (normalNode3472).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3472).moment H = injectiveMoment H reductionPivot6829 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3472).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6829 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6829 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6829 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1690, reductionProjection4810, oldProjection2767, reductionProjection6828, oldProjection1652] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6829 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6829 (1 : Fin 5)) = (normalNode3521).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6829 (2 : Fin 5)) = canonicalInput6695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6695 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6829 (3 : Fin 5)) = (normalNode3609).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6828 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6829 (4 : Fin 5)) = canonicalInput6703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1652 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6829 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6703 hH))).trans (oldProjectionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3472).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6829 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3472).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6829 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 720, 1440, 1440] ![5, 1, 2, 1, 1] reductionProjection6829 ![oldProjection1690, reductionProjection4810, oldProjection2767, reductionProjection6828, oldProjection1652]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6830 : Integer.Sparse (Fin 1613) := [(787, 1)]

theorem reductionSound6830 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code787).moment H =
      Integer.Sparse.eval reductionProjection6830 (momentVector H) := by
  have hc : coordinates (787 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code787) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6830, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6831 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (94, -35), (241, -80), (247, -80), (690, 240), (694, 240), (698, -80), (1250, -60), (1251, 5)]

def reductionPivot6831 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 0, 2, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 1, -3]]

theorem reductionSound6831 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10893).moment H =
      Integer.Sparse.eval reductionProjection6831 (momentVector H) := by
  have heq : reductionPivot6831 = (fun u v => (normalNode10893).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10893).moment H = injectiveMoment H reductionPivot6831 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10893).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6831 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6831 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 360, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6831 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection184, oldProjection1315, oldProjection1310, oldProjection973] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6831 (0 : Fin 4)) = canonicalInput27413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27413 hH))).trans (oldProjectionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6831 (1 : Fin 4)) = canonicalInput22415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1315 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22415 hH))).trans (oldProjectionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6831 (2 : Fin 4)) = canonicalInput22399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1310 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22399 hH))).trans (oldProjectionSound1310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6831 (3 : Fin 4)) = canonicalInput22397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6831 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22397 hH))).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10893).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6831 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10893).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6831 (j : Fin 4)))
      2 1440 1440 2 ![1, 144, 360, 360] ![1440, 10, 4, 4] reductionProjection6831 ![oldProjection184, oldProjection1315, oldProjection1310, oldProjection973]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6832 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -6), (76, -72), (94, 13), (241, 24), (247, 16), (484, 72), (690, -24), (691, -24), (694, -24), (697, -96), (698, 56), (700, 8), (704, 8), (787, -144), (800, 72), (1050, -24), (1052, -72), (1059, 16), (1250, 6), (1251, -2), (1323, -24)]

def reductionPivot6832 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound6832 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3473).moment H =
      Integer.Sparse.eval reductionProjection6832 (momentVector H) := by
  have heq : reductionPivot6832 = (fun u v => (normalNode3473).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3473).moment H = injectiveMoment H reductionPivot6832 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3473).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6832 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6832 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6832 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1694, oldProjection1945, oldProjection2589, reductionProjection6830, reductionProjection6831] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6832 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1694⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1694 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6832 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1945⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1945 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6832 (2 : Fin 5)) = canonicalInput6708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2589 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6708 hH))).trans (oldProjectionSound2589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6832 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code787).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6830 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6832 (4 : Fin 5)) = canonicalInput6709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6831 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6832 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6709 hH))).trans (reductionSound6831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3473).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6832 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3473).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6832 (j : Fin 5)))
      1 144 1440 10 ![1440, 1440, 1440, 1, 1440] ![1, 1, 1, 1440, 1] reductionProjection6832 ![oldProjection1694, oldProjection1945, oldProjection2589, reductionProjection6830, reductionProjection6831]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6833 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -20), (76, -240), (81, -240), (90, 160), (94, 45), (241, 160), (243, 80), (427, 720), (559, 720), (691, -240), (697, -240), (698, 800), (700, 800), (704, 80), (781, 720), (789, 1440), (806, 720), (808, 720), (1050, -240), (1052, -240), (1058, -240), (1059, 560), (1226, 80), (1251, -95)]

def reductionPivot6833 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6833 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3474).moment H =
      Integer.Sparse.eval reductionProjection6833 (momentVector H) := by
  have heq : reductionPivot6833 = (fun u v => (normalNode3474).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3474).moment H = injectiveMoment H reductionPivot6833 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3474).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6833 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6833 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 360, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6833 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1702, oldProjection1949, oldProjection2810, oldProjection1963, oldProjection1964] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6833 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1702⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6833 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1949⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1949 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6833 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3140 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2810 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3140 hH))).trans (oldProjectionSound2810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6833 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1963⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1963 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1963 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6833 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1964⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1964 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6833 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3474).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6833 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3474).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6833 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 360, 720, 720] ![1, 1, 4, 2, 2] reductionProjection6833 ![oldProjection1702, oldProjection1949, oldProjection2810, oldProjection1963, oldProjection1964]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6834 : Integer.Sparse (Fin 1613) := [(1096, 1)]

theorem reductionSound6834 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1096).moment H =
      Integer.Sparse.eval reductionProjection6834 (momentVector H) := by
  have hc : coordinates (1096 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1096) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6834, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6835 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -4), (104, -16), (704, 16), (784, -144), (798, -144), (1096, -144), (1251, -3)]

def reductionPivot6835 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 0, 3, -4]]

theorem reductionSound6835 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3620).moment H =
      Integer.Sparse.eval reductionProjection6835 (momentVector H) := by
  have heq : reductionPivot6835 = (fun u v => (normalNode3620).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3620).moment H = injectiveMoment H reductionPivot6835 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3620).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6835 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6835 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6835 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6834, reductionProjection6812, oldProjection1307, oldProjection596] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6835 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1096).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6834 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6835 (1 : Fin 4)) = canonicalInput6777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6777 hH))).trans (reductionSound6812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6835 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3181 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1307 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3181 hH))).trans (oldProjectionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6835 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node596⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection596 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6835 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection596 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3620).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6835 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3620).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6835 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection6835 ![reductionProjection6834, reductionProjection6812, oldProjection1307, oldProjection596]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6836 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, 3), (94, 4), (236, -48), (246, 16), (704, 16), (1251, 1)]

def reductionPivot6836 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![2, -3, 2, -1], ![-1, 4, -4, 1]]

theorem reductionSound6836 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10888).moment H =
      Integer.Sparse.eval reductionProjection6836 (momentVector H) := by
  have heq : reductionPivot6836 = (fun u v => (normalNode10888).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10888).moment H = injectiveMoment H reductionPivot6836 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10888).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10888).entries)).symm
  have hshape : reductionPivot6836 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6836 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6836 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection148, oldProjection143, reductionProjection1721] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6836 (0 : Fin 3)) = canonicalInput18780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6836 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection148 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6836 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18780 hH))).trans (oldProjectionSound148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6836 (1 : Fin 3)) = canonicalInput27437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6836 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection143 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6836 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27437 hH))).trans (oldProjectionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6836 (2 : Fin 3)) = canonicalInput27441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6836 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1721 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6836 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27441 hH))).trans (reductionSound1721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10888).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6836 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10888).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6836 (j : Fin 3)))
      3 144 144 3 ![48, 48, 1] ![3, 3, 144] reductionProjection6836 ![oldProjection148, oldProjection143, reductionProjection1721]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6837 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (20, -3), (35, 24), (94, -6), (104, -16), (236, 24), (246, -8), (701, -24), (703, -24), (704, -32), (1251, -3)]

def reductionPivot6837 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound6837 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3623).moment H =
      Integer.Sparse.eval reductionProjection6837 (momentVector H) := by
  have heq : reductionPivot6837 = (fun u v => (normalNode3623).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3623).moment H = injectiveMoment H reductionPivot6837 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3623).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6837 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6837 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6837 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6836, reductionProjection6814, reductionProjection755, oldProjection1307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6837 (0 : Fin 4)) = canonicalInput9946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6836 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9946 hH))).trans (reductionSound6836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6837 (1 : Fin 4)) = canonicalInput6780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6814 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6780 hH))).trans (reductionSound6814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6837 (2 : Fin 4)) = canonicalInput6742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection755 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6742 hH))).trans (reductionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6837 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3181 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1307 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6837 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3181 hH))).trans (oldProjectionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3623).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6837 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3623).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6837 (j : Fin 4)))
      2 144 144 2 ![144, 9, 72, 144] ![1, 16, 2, 1] reductionProjection6837 ![reductionProjection6836, reductionProjection6814, reductionProjection755, oldProjection1307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6838 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -60), (19, -240), (20, 30), (35, -240), (40, -240), (42, 240), (94, 80), (104, 240), (236, -240), (241, 160), (243, 480), (246, 80), (698, 160), (700, 80), (701, 320), (703, 240), (704, 560), (784, 720), (798, 720), (1096, 720), (1251, 55)]

def reductionPivot6838 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound6838 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3477).moment H =
      Integer.Sparse.eval reductionProjection6838 (momentVector H) := by
  have heq : reductionPivot6838 = (fun u v => (normalNode3477).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3477).moment H = injectiveMoment H reductionPivot6838 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3477).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6838 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6838 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6838 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1707, reductionProjection6753, oldProjection1307, reductionProjection6835, reductionProjection6837] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6838 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1707⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1707 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6838 (1 : Fin 5)) = canonicalInput6649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6753 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6649 hH))).trans (reductionSound6753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6838 (2 : Fin 5)) = canonicalInput6736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1307 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6736 hH))).trans (oldProjectionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6838 (3 : Fin 5)) = (normalNode3620).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6835 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6838 (4 : Fin 5)) = (normalNode3623).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6837 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6838 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3477).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6838 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3477).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6838 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 288, 144] ![5, 1, 10, 5, 10] reductionProjection6838 ![oldProjection1707, reductionProjection6753, oldProjection1307, reductionProjection6835, reductionProjection6837]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6839 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -2), (94, -3), (704, -16), (796, -144), (798, -144), (805, -144), (1060, 48), (1223, 48), (1251, -1)]

def reductionPivot6839 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 1, -2, 1], ![0, 1, 3, -4], ![1, -2, 1, 0]]

theorem reductionSound6839 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3629).moment H =
      Integer.Sparse.eval reductionProjection6839 (momentVector H) := by
  have heq : reductionPivot6839 = (fun u v => (normalNode3629).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3629).moment H = injectiveMoment H reductionPivot6839 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3629).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6839 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6839 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6839 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1230, reductionProjection6809, oldProjection596, oldProjection595] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6839 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1230⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1230 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1230 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6839 (1 : Fin 4)) = canonicalInput6812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6809 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6812 hH))).trans (reductionSound6809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6839 (2 : Fin 4)) = canonicalInput6745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection596 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection596 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6745 hH))).trans (oldProjectionSound596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6839 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node595⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection595 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6839 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3629).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6839 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3629).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6839 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6839 ![oldProjection1230, reductionProjection6809, oldProjection596, oldProjection595]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6840 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -240), (20, 35), (42, 240), (94, 125), (104, 160), (241, 80), (243, 480), (244, 160), (480, 720), (692, -240), (698, 240), (700, 480), (701, 400), (703, 80), (704, 240), (796, 1440), (798, 720), (805, 720), (1060, -240), (1223, -240), (1251, 115)]

def reductionPivot6840 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, -2, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6840 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3478).moment H =
      Integer.Sparse.eval reductionProjection6840 (momentVector H) := by
  have heq : reductionPivot6840 = (fun u v => (normalNode3478).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3478).moment H = injectiveMoment H reductionPivot6840 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3478).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6840 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6840 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 72, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6840 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1713, reductionProjection6769, reductionProjection4709, reductionProjection6839, oldProjection1973] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6840 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1713⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1713 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6840 (1 : Fin 5)) = canonicalInput6659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6769 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6659 hH))).trans (reductionSound6769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6840 (2 : Fin 5)) = canonicalInput6737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4709 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6737 hH))).trans (reductionSound4709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6840 (3 : Fin 5)) = (normalNode3629).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6839 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6840 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1973⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1973 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6840 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3478).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6840 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3478).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6840 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 72, 288, 288] ![5, 1, 20, 5, 5] reductionProjection6840 ![oldProjection1713, reductionProjection6769, reductionProjection4709, reductionProjection6839, oldProjection1973]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6841 : Integer.Sparse (Fin 1613) := [(1292, 1)]

theorem reductionSound6841 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1292).moment H =
      Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
  have hc : coordinates (1292 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1292) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6841, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6842 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (94, 4), (246, 16), (704, 32), (1251, 1), (1292, -48)]

def reductionPivot6842 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![-2, -2, 3, 1], ![4, 1, -4, -1]]

theorem reductionSound6842 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7481).moment H =
      Integer.Sparse.eval reductionProjection6842 (momentVector H) := by
  have heq : reductionPivot6842 = (fun u v => (normalNode7481).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7481).moment H = injectiveMoment H reductionPivot6842 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7481).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7481).entries)).symm
  have hshape : reductionPivot6842 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6842 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6842 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection148, reductionProjection6841, oldProjection245] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6842 (0 : Fin 3)) = canonicalInput10970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6842 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection148 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6842 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10970 hH))).trans (oldProjectionSound148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6842 (1 : Fin 3)) = canonicalInput23331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6842 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6842 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23331 hH))).trans (reductionSound6841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6842 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7906 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6842 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6842 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7906 hH))).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7481).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6842 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7481).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6842 (j : Fin 3)))
      3 144 144 3 ![48, 1, 48] ![3, 144, 3] reductionProjection6842 ![oldProjection148, reductionProjection6841, oldProjection245]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6843 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -6), (94, -11), (246, -32), (319, -144), (701, -16), (703, -16), (1251, -5), (1292, 48)]

def reductionPivot6843 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 4, -4]]

theorem reductionSound6843 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3630).moment H =
      Integer.Sparse.eval reductionProjection6843 (momentVector H) := by
  have heq : reductionPivot6843 = (fun u v => (normalNode3630).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3630).moment H = injectiveMoment H reductionPivot6843 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3630).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6843 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6843 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6843 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6842, reductionProjection2530, reductionProjection762, oldProjection985] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6843 (0 : Fin 4)) = canonicalInput9947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6842 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9947 hH))).trans (reductionSound6842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6843 (1 : Fin 4)) = canonicalInput6782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2530 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2530 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6782 hH))).trans (reductionSound2530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6843 (2 : Fin 4)) = canonicalInput6763.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection762 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6763 hH))).trans (reductionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6843 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3217 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection985 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6843 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3217 hH))).trans (oldProjectionSound985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3630).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6843 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3630).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6843 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 72] ![2, 288, 2, 4] reductionProjection6843 ![reductionProjection6842, reductionProjection2530, reductionProjection762, oldProjection985]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6844 : Integer.Sparse (Fin 1613) := [(19, -20), (20, 4), (42, 16), (94, 11), (243, 64), (246, 32), (319, 144), (480, 144), (698, 48), (701, 16), (703, 16), (704, 112), (796, 144), (1060, -48), (1223, -96), (1251, 7), (1292, -48)]

def reductionPivot6844 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 3, -4]]

theorem reductionSound6844 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3480).moment H =
      Integer.Sparse.eval reductionProjection6844 (momentVector H) := by
  have heq : reductionPivot6844 = (fun u v => (normalNode3480).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3480).moment H = injectiveMoment H reductionPivot6844 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3480).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6844 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6844 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 72, 72, 72, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6844 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1714, oldProjection985, oldProjection985, oldProjection1974, reductionProjection6843] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6844 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1714⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1714 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6844 (1 : Fin 5)) = canonicalInput6667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection985 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6667 hH))).trans (oldProjectionSound985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6844 (2 : Fin 5)) = canonicalInput6747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection985 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6747 hH))).trans (oldProjectionSound985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6844 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1974⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1974 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6844 (4 : Fin 5)) = (normalNode3630).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6843 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6844 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3480).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6844 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3480).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6844 (j : Fin 5)))
      1 288 288 1 ![144, 72, 72, 72, 288] ![2, 4, 4, 4, 1] reductionProjection6844 ![oldProjection1714, oldProjection985, oldProjection985, oldProjection1974, reductionProjection6843]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6845 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (20, 15), (93, 60), (94, -40), (243, 80), (691, -240), (698, 320), (700, 640), (704, 160), (806, 720), (1047, -240), (1052, -240), (1059, 80), (1219, -480), (1251, 20)]

def reductionPivot6845 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound6845 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3481).moment H =
      Integer.Sparse.eval reductionProjection6845 (momentVector H) := by
  have heq : reductionPivot6845 = (fun u v => (normalNode3481).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3481).moment H = injectiveMoment H reductionPivot6845 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3481).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6845 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6845 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6845 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1644, oldProjection1267, oldProjection1267, oldProjection1975, oldProjection1978] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6845 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2017 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1644 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1644 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2017 hH))).trans (oldProjectionSound1644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6845 (1 : Fin 5)) = canonicalInput6668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1267 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6668 hH))).trans (oldProjectionSound1267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6845 (2 : Fin 5)) = canonicalInput6748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1267 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6748 hH))).trans (oldProjectionSound1267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6845 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1975⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6845 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1978⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1978 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6845 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3481).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6845 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3481).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6845 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 720, 1440] ![1, 2, 2, 2, 1] reductionProjection6845 ![oldProjection1644, oldProjection1267, oldProjection1267, oldProjection1975, oldProjection1978]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6846 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -40), (76, -480), (81, -480), (93, 60), (94, 80), (241, 80), (247, 160), (691, -240), (698, 240), (808, 720), (1052, -240), (1059, 80), (1251, -5), (1319, -240), (1323, -480)]

def reductionPivot6846 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound6846 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3482).moment H =
      Integer.Sparse.eval reductionProjection6846 (momentVector H) := by
  have heq : reductionPivot6846 = (fun u v => (normalNode3482).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3482).moment H = injectiveMoment H reductionPivot6846 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3482).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6846 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6846 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6846 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1716, oldProjection1206, oldProjection1206, oldProjection1977, oldProjection1979] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6846 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1716 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6846 (1 : Fin 5)) = canonicalInput6669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1206 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6669 hH))).trans (oldProjectionSound1206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6846 (2 : Fin 5)) = canonicalInput6749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1206 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6749 hH))).trans (oldProjectionSound1206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6846 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1977⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1977 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6846 (4 : Fin 5)) = canonicalInput6756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1979 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6846 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6756 hH))).trans (oldProjectionSound1979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3482).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6846 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3482).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6846 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 1440, 1440] ![1, 2, 2, 1, 1] reductionProjection6846 ![oldProjection1716, oldProjection1206, oldProjection1206, oldProjection1977, oldProjection1979]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6847 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -20), (81, -240), (94, 150), (241, 80), (247, 160), (489, 720), (697, -960), (698, 640), (700, 320), (704, 80), (801, 720), (1059, 320), (1251, -75)]

def reductionPivot6847 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound6847 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3484).moment H =
      Integer.Sparse.eval reductionProjection6847 (momentVector H) := by
  have heq : reductionPivot6847 = (fun u v => (normalNode3484).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3484).moment H = injectiveMoment H reductionPivot6847 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3484).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6847 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6847 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 288, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6847 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1719, oldProjection1081, oldProjection2760, oldProjection1982, oldProjection1640] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6847 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1719⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1719 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6847 (1 : Fin 5)) = canonicalInput6672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1081 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1081 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6672 hH))).trans (oldProjectionSound1081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6847 (2 : Fin 5)) = canonicalInput6751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2760 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6751 hH))).trans (oldProjectionSound2760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6847 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1982⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1982 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6847 (4 : Fin 5)) = canonicalInput6760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1640 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6847 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6760 hH))).trans (oldProjectionSound1640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3484).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6847 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3484).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6847 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 288, 288, 720] ![1, 10, 5, 5, 2] reductionProjection6847 ![oldProjection1719, oldProjection1081, oldProjection2760, oldProjection1982, oldProjection1640]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

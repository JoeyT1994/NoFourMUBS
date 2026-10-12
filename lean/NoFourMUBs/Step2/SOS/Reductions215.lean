import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical105
import NoFourMUBs.Step2.SOS.Canonical106
import NoFourMUBs.Step2.SOS.Canonical118
import NoFourMUBs.Step2.SOS.Canonical121
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical158
import NoFourMUBs.Step2.SOS.Canonical159
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical239
import NoFourMUBs.Step2.SOS.Canonical306
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions140
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions214
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical109
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical147
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical215
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical278
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical98
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6880 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -40), (20, 5), (76, -480), (81, -240), (88, 160), (90, 320), (94, 55), (231, -240), (241, 160), (243, 560), (426, 720), (642, 720), (691, -240), (698, 1280), (700, 320), (704, 80), (732, 720), (781, 720), (782, 1440), (809, 720), (1057, -240), (1058, -480), (1225, 80), (1226, 720), (1227, 320), (1251, -40)]

def reductionPivot6880 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6880 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3528).moment H =
      Integer.Sparse.eval reductionProjection6880 (momentVector H) := by
  have heq : reductionPivot6880 = (fun u v => (normalNode3528).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3528).moment H = injectiveMoment H reductionPivot6880 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3528).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6880 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6880 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6880 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1917, oldProjection1655, oldProjection1949, oldProjection1950, oldProjection1951] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6880 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1917⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1917 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6880 (1 : Fin 5)) = canonicalInput6583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6583 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6880 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1949⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1949 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6880 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1950⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1950 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6880 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6880 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3528).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6880 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3528).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6880 (j : Fin 5)))
      1 1440 1440 1 ![288, 72, 1440, 288, 1440] ![5, 20, 1, 5, 1] reductionProjection6880 ![oldProjection1917, oldProjection1655, oldProjection1949, oldProjection1950, oldProjection1951]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6881 : Integer.Sparse (Fin 1613) := [(426, -1), (732, -1), (781, -1), (782, -1)]

def reductionPivot6881 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 2, -1, -1], ![2, -1, 0, -1]]

theorem reductionSound6881 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3529).moment H =
      Integer.Sparse.eval reductionProjection6881 (momentVector H) := by
  have heq : reductionPivot6881 = (fun u v => (normalNode3529).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3529).moment H = injectiveMoment H reductionPivot6881 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3529).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6881 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6881 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6881 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection581, oldProjection473, oldProjection589, oldProjection590] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6881 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection581 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6881 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3079 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3079 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6881 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection589 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6881 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6881 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3529).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6881 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3529).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6881 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6881 ![oldProjection581, oldProjection473, oldProjection589, oldProjection590]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6882 : Integer.Sparse (Fin 1613) := [(76, 48), (94, -1), (243, -8), (697, 24), (698, -8), (700, -8), (704, -8), (783, -72), (810, -72), (1058, 24), (1226, -8), (1251, -1)]

def reductionPivot6882 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound6882 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3543).moment H =
      Integer.Sparse.eval reductionProjection6882 (momentVector H) := by
  have heq : reductionPivot6882 = (fun u v => (normalNode3543).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3543).moment H = injectiveMoment H reductionPivot6882 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3543).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6882 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6882 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6882 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection953, reductionProjection4070, oldProjection1011, reductionProjection1307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6882 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6882 (1 : Fin 4)) = canonicalInput6800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4070 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6800 hH))).trans (reductionSound4070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6882 (2 : Fin 4)) = canonicalInput6600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6600 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6882 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code783).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6882 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3543).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6882 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3543).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6882 (j : Fin 4)))
      2 144 144 2 ![9, 1, 72, 1] ![16, 144, 2, 144] reductionProjection6882 ![oldProjection953, reductionProjection4070, oldProjection1011, reductionProjection1307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6883 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (20, 1), (76, -144), (81, -48), (88, 32), (90, 32), (94, 6), (231, -48), (238, -48), (241, 48), (243, 96), (244, 16), (247, 16), (461, 144), (465, 144), (642, 144), (697, -48), (698, 176), (700, 96), (704, 16), (733, 144), (782, 144), (783, 288), (810, 144), (1058, -144), (1059, 32), (1226, 96), (1227, 32), (1251, -2)]

def reductionPivot6883 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6883 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3530).moment H =
      Integer.Sparse.eval reductionProjection6883 (momentVector H) := by
  have heq : reductionPivot6883 = (fun u v => (normalNode3530).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3530).moment H = injectiveMoment H reductionPivot6883 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3530).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6883 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6883 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6883 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6569, oldProjection1704, oldProjection1951, reductionProjection6745, reductionProjection6882] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6883 (0 : Fin 5)) = (normalNode3268).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6569 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6883 (1 : Fin 5)) = canonicalInput6586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6586 hH))).trans (oldProjectionSound1704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6883 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6883 (3 : Fin 5)) = (normalNode3542).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6745 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6883 (4 : Fin 5)) = (normalNode3543).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6882 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6883 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3530).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6883 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3530).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6883 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 288, 144] ![5, 1, 1, 5, 10] reductionProjection6883 ![reductionProjection6569, oldProjection1704, oldProjection1951, reductionProjection6745, reductionProjection6882]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6884 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (489, -360), (603, -360), (698, -160), (700, -240), (1059, -120)]

def reductionPivot6884 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 1, -2, 0]]

theorem reductionSound6884 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4016).moment H =
      Integer.Sparse.eval reductionProjection6884 (momentVector H) := by
  have heq : reductionPivot6884 = (fun u v => (normalNode4016).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4016).moment H = injectiveMoment H reductionPivot6884 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4016).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6884 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6884 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 36, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6884 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection490, oldProjection1066, oldProjection802, oldProjection511] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6884 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4710 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4710 hH))).trans (oldProjectionSound490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6884 (1 : Fin 4)) = canonicalInput7803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1066 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7803 hH))).trans (oldProjectionSound1066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6884 (2 : Fin 4)) = canonicalInput7571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection802 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7571 hH))).trans (oldProjectionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6884 (3 : Fin 4)) = canonicalInput7567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6884 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7567 hH))).trans (oldProjectionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4016).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6884 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4016).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6884 (j : Fin 4)))
      2 720 720 2 ![1, 36, 360, 1] ![720, 20, 2, 720] reductionProjection6884 ![oldProjection490, oldProjection1066, oldProjection802, oldProjection511]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6885 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (42, -16), (94, -2), (243, -16), (244, -16), (330, -144), (632, -144), (700, -48), (701, -64), (704, -48), (1251, -3)]

def reductionPivot6885 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]

theorem reductionSound6885 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3553).moment H =
      Integer.Sparse.eval reductionProjection6885 (momentVector H) := by
  have heq : reductionPivot6885 = (fun u v => (normalNode3553).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3553).moment H = injectiveMoment H reductionPivot6885 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3553).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6885 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6885 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6885 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection467, oldProjection1071, oldProjection780, reductionProjection5752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6885 (0 : Fin 4)) = canonicalInput10179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10179 hH))).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6885 (1 : Fin 4)) = canonicalInput6732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1071 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6732 hH))).trans (oldProjectionSound1071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6885 (2 : Fin 4)) = canonicalInput6615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6615 hH))).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6885 (3 : Fin 4)) = canonicalInput6612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5752 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6885 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6612 hH))).trans (reductionSound5752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3553).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6885 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3553).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6885 (j : Fin 4)))
      2 288 288 2 ![1, 72, 144, 1] ![288, 4, 2, 288] reductionProjection6885 ![oldProjection467, oldProjection1071, oldProjection780, reductionProjection5752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6886 : Integer.Sparse (Fin 1613) := [(779, 1)]

theorem reductionSound6886 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code779).moment H =
      Integer.Sparse.eval reductionProjection6886 (momentVector H) := by
  have hc : coordinates (779 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code779) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6886, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6887 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (20, 3), (42, 16), (76, -48), (90, 64), (94, 17), (243, 32), (244, 16), (330, 144), (489, 144), (603, 144), (632, 144), (642, 144), (697, -48), (698, 208), (700, 256), (701, 64), (704, 96), (779, -288), (1059, 64), (1117, 144), (1226, 32), (1251, 15)]

def reductionPivot6887 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -2, 0]]

theorem reductionSound6887 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3531).moment H =
      Integer.Sparse.eval reductionProjection6887 (momentVector H) := by
  have heq : reductionPivot6887 = (fun u v => (normalNode3531).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3531).moment H = injectiveMoment H reductionPivot6887 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3531).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6887 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6887 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6887 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6884, reductionProjection6885, reductionProjection6886, oldProjection1948, oldProjection1947] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6887 (0 : Fin 5)) = (normalNode4016).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6884 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6884 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6887 (1 : Fin 5)) = (normalNode3553).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6885 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6885 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6887 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code779).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6886 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6887 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6887 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1947 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6887 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3531).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6887 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3531).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6887 (j : Fin 5)))
      1 288 1440 5 ![720, 288, 1, 1440, 1440] ![2, 5, 1440, 1, 1] reductionProjection6887 ![reductionProjection6884, reductionProjection6885, reductionProjection6886, oldProjection1948, oldProjection1947]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6888 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -5), (243, -160), (698, -320), (700, -480), (1052, 240), (1059, -160), (1219, 240), (1251, -35)]

def reductionPivot6888 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound6888 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4017).moment H =
      Integer.Sparse.eval reductionProjection6888 (momentVector H) := by
  have heq : reductionPivot6888 = (fun u v => (normalNode4017).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4017).moment H = injectiveMoment H reductionPivot6888 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4017).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6888 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6888 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6888 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1352, oldProjection979, oldProjection938, oldProjection1269] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6888 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4711 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4711 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6888 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3509 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection979 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3509 hH))).trans (oldProjectionSound979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6888 (2 : Fin 4)) = canonicalInput7572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection938 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7572 hH))).trans (oldProjectionSound938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6888 (3 : Fin 4)) = canonicalInput7568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1269 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6888 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7568 hH))).trans (oldProjectionSound1269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4017).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6888 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4017).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6888 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 720, 72] ![2, 10, 2, 20] reductionProjection6888 ![oldProjection1352, oldProjection979, oldProjection938, oldProjection1269]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6889 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (40, 12), (42, -12), (45, 12), (94, -2), (243, -4), (700, -12), (701, -12), (703, -8), (704, -24), (1251, -1)]

def reductionPivot6889 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound6889 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode3554).moment H =
      Integer.Sparse.eval reductionProjection6889 (momentVector H) := by
  have heq : reductionPivot6889 = (fun u v => (normalNode3554).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3554).moment H = injectiveMoment H reductionPivot6889 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3554).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6889 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6889 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6889 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1157, reductionProjection4708, reductionProjection4501, oldProjection1158] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6889 (0 : Fin 4)) = canonicalInput10180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1157 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10180 hH))).trans (oldProjectionSound1157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6889 (1 : Fin 4)) = canonicalInput6733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4708 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6733 hH))).trans (reductionSound4708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6889 (2 : Fin 4)) = canonicalInput6616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4501 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6616 hH))).trans (reductionSound4501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6889 (3 : Fin 4)) = canonicalInput6613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1158 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6889 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6613 hH))).trans (oldProjectionSound1158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3554).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6889 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3554).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6889 (j : Fin 4)))
      2 72 144 4 ![144, 72, 144, 9] ![1, 2, 1, 16] reductionProjection6889 ![oldProjection1157, reductionProjection4708, reductionProjection4501, oldProjection1158]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6890 : Integer.Sparse (Fin 1613) := [(802, 1)]

theorem reductionSound6890 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code802).moment H =
      Integer.Sparse.eval reductionProjection6890 (momentVector H) := by
  have hc : coordinates (802 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code802) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6890, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6891 : Integer.Sparse (Fin 1613) := [(683, 9), (695, 3), (697, 3), (699, 3), (700, -2), (701, -1), (802, -9), (1321, 3), (1323, 3)]

def reductionPivot6891 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound6891 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3541).moment H =
      Integer.Sparse.eval reductionProjection6891 (momentVector H) := by
  have heq : reductionPivot6891 = (fun u v => (normalNode3541).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3541).moment H = injectiveMoment H reductionPivot6891 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3541).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6891 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6891 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6891 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1074, reductionProjection6890, reductionProjection4269, reductionProjection1219] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6891 (0 : Fin 4)) = canonicalInput15308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15308 hH))).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6891 (1 : Fin 4)) = canonicalInput6799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6890 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6799 hH))).trans (reductionSound6890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6891 (2 : Fin 4)) = canonicalInput6599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4269 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6599 hH))).trans (reductionSound4269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6891 (3 : Fin 4)) = canonicalInput6596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1219 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6891 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6596 hH))).trans (reductionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3541).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6891 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3541).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6891 (j : Fin 4)))
      2 18 18 2 ![3, 1, 3, 9] ![6, 18, 6, 2] reductionProjection6891 ![reductionProjection1074, reductionProjection6890, reductionProjection4269, reductionProjection1219]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6892 : Integer.Sparse (Fin 1613) := [(94, 1), (699, -24), (700, 24), (701, 8), (704, 8), (1251, 1)]

def reductionPivot6892 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-1, 3, -3, 1], ![3, -3, 1, -1]]

theorem reductionSound6892 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7980).moment H =
      Integer.Sparse.eval reductionProjection6892 (momentVector H) := by
  have heq : reductionPivot6892 = (fun u v => (normalNode7980).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7980).moment H = injectiveMoment H reductionPivot6892 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7980).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7980).entries)).symm
  have hshape : reductionPivot6892 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6892 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6892 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection178, oldProjection186, oldProjection187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6892 (0 : Fin 3)) = canonicalInput9345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6892 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection178 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6892 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9345 hH))).trans (oldProjectionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6892 (1 : Fin 3)) = canonicalInput22378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6892 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6892 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22378 hH))).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6892 (2 : Fin 3)) = canonicalInput22384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6892 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection187 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6892 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22384 hH))).trans (oldProjectionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7980).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6892 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7980).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6892 (j : Fin 3)))
      3 72 72 3 ![3, 1, 24] ![24, 72, 3] reductionProjection6892 ![oldProjection178, oldProjection186, oldProjection187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6893 : Integer.Sparse (Fin 1613) := [(94, -1), (502, -72), (683, 24), (697, 24), (699, 48), (700, -24), (701, -8), (704, -8), (1237, -72), (1251, -1)]

def reductionPivot6893 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 1, -3, 1]]

theorem reductionSound6893 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3540).moment H =
      Integer.Sparse.eval reductionProjection6893 (momentVector H) := by
  have heq : reductionPivot6893 = (fun u v => (normalNode3540).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3540).moment H = injectiveMoment H reductionPivot6893 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3540).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6893 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6893 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6893 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection184, reductionProjection6892, reductionProjection4269, oldProjection494] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6893 (0 : Fin 4)) = canonicalInput10171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10171 hH))).trans (reductionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6893 (1 : Fin 4)) = canonicalInput6723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6892 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6723 hH))).trans (reductionSound6892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6893 (2 : Fin 4)) = canonicalInput6599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4269 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6599 hH))).trans (reductionSound4269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6893 (3 : Fin 4)) = canonicalInput6598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection494 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6893 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6598 hH))).trans (oldProjectionSound494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3540).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6893 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3540).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6893 (j : Fin 4)))
      2 144 144 2 ![1, 72, 3, 1] ![144, 2, 48, 144] reductionProjection6893 ![reductionProjection184, reductionProjection6892, reductionProjection4269, oldProjection494]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6894 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -40), (20, 10), (40, -120), (42, 120), (45, -120), (76, -120), (90, 120), (94, 45), (243, 120), (502, 360), (683, -480), (695, -120), (697, -360), (698, 400), (699, -360), (700, 680), (701, 200), (703, 80), (704, 360), (802, 360), (1052, -120), (1059, 120), (1219, -120), (1226, 40), (1237, 360), (1251, 45), (1321, -120), (1323, -120)]

def reductionPivot6894 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound6894 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3532).moment H =
      Integer.Sparse.eval reductionProjection6894 (momentVector H) := by
  have heq : reductionPivot6894 = (fun u v => (normalNode3532).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3532).moment H = injectiveMoment H reductionPivot6894 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3532).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6894 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6894 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 18, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6894 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6888, reductionProjection6889, reductionProjection6891, reductionProjection6893, oldProjection1948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6894 (0 : Fin 5)) = (normalNode4017).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6888 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6894 (1 : Fin 5)) = (normalNode3554).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6889 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6889 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6894 (2 : Fin 5)) = (normalNode3541).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6891 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6891 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6894 (3 : Fin 5)) = (normalNode3540).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6893 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6894 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6894 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3532).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6894 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3532).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6894 (j : Fin 5)))
      1 720 1440 2 ![1440, 72, 18, 144, 1440] ![1, 20, 80, 10, 1] reductionProjection6894 ![reductionProjection6888, reductionProjection6889, reductionProjection6891, reductionProjection6893, oldProjection1948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6895 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -20), (20, 5), (81, -120), (90, 120), (94, 35), (243, 160), (465, 360), (642, 720), (698, 560), (700, 440), (701, 40), (704, 160), (783, 360), (1058, -120), (1059, 80), (1117, 720), (1226, 160), (1389, -120)]

def reductionPivot6895 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound6895 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3537).moment H =
      Integer.Sparse.eval reductionProjection6895 (momentVector H) := by
  have heq : reductionPivot6895 = (fun u v => (normalNode3537).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3537).moment H = injectiveMoment H reductionPivot6895 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3537).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6895 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6895 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6895 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2212, reductionProjection2623, reductionProjection6745, oldProjection2699, oldProjection1947] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6895 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2212 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6895 (1 : Fin 5)) = canonicalInput6719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2623 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6719 hH))).trans (reductionSound2623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6895 (2 : Fin 5)) = (normalNode3542).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6745 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6895 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3094 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2699 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3094 hH))).trans (oldProjectionSound2699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6895 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1947 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6895 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3537).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6895 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3537).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6895 (j : Fin 5)))
      1 720 1440 2 ![288, 1440, 288, 288, 1440] ![5, 1, 5, 5, 1] reductionProjection6895 ![oldProjection2212, reductionProjection2623, reductionProjection6745, oldProjection2699, oldProjection1947]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6896 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -4), (20, 1), (76, -192), (81, -48), (90, 64), (94, 18), (243, 16), (697, -240), (698, 272), (700, 128), (701, 16), (704, 48), (783, 144), (810, 144), (1058, -48), (1059, 64), (1226, 32), (1251, 7)]

def reductionPivot6896 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]

theorem reductionSound6896 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3538).moment H =
      Integer.Sparse.eval reductionProjection6896 (momentVector H) := by
  have heq : reductionPivot6896 = (fun u v => (normalNode3538).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3538).moment H = injectiveMoment H reductionPivot6896 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3538).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6896 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6896 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6896 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2213, reductionProjection2627, reductionProjection6882, oldProjection2753, oldProjection1948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6896 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2213⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2213 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6896 (1 : Fin 5)) = canonicalInput6720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2627 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6720 hH))).trans (reductionSound2627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6896 (2 : Fin 5)) = (normalNode3543).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6882 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6896 (3 : Fin 5)) = canonicalInput6594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2753 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6594 hH))).trans (oldProjectionSound2753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6896 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6896 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3538).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6896 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3538).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6896 (j : Fin 5)))
      1 288 1440 5 ![288, 288, 144, 1440, 1440] ![5, 5, 10, 1, 1] reductionProjection6896 ![oldProjection2213, reductionProjection2627, reductionProjection6882, oldProjection2753, oldProjection1948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6897 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -4), (243, -16), (322, -72), (686, 72), (692, 24), (698, -8), (700, -16), (701, -8), (704, -24), (1251, -3)]

def reductionPivot6897 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound6897 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3547).moment H =
      Integer.Sparse.eval reductionProjection6897 (momentVector H) := by
  have heq : reductionPivot6897 = (fun u v => (normalNode3547).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3547).moment H = injectiveMoment H reductionPivot6897 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3547).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6897 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6897 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6897 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2366, reductionProjection2365, oldProjection1097, oldProjection1166] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6897 (0 : Fin 4)) = (normalNode7922).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6897 (1 : Fin 4)) = canonicalInput6801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6801 hH))).trans (reductionSound2365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6897 (2 : Fin 4)) = canonicalInput6614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6614 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6897 (3 : Fin 4)) = canonicalInput6603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1166 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6897 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6603 hH))).trans (oldProjectionSound1166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3547).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6897 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3547).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6897 (j : Fin 4)))
      2 144 144 2 ![144, 1, 144, 9] ![1, 144, 1, 16] reductionProjection6897 ![reductionProjection2366, reductionProjection2365, oldProjection1097, oldProjection1166]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6898 : Integer.Sparse (Fin 1613) := [(1090, 1)]

theorem reductionSound6898 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1090).moment H =
      Integer.Sparse.eval reductionProjection6898 (momentVector H) := by
  have hc : coordinates (1090 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1090) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6898, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6899 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -4), (243, -16), (632, -144), (686, 48), (698, -16), (700, -64), (701, -16), (704, -48), (1090, -144), (1251, -7)]

def reductionPivot6899 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 1, -1, -1]]

theorem reductionSound6899 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3552).moment H =
      Integer.Sparse.eval reductionProjection6899 (momentVector H) := by
  have heq : reductionPivot6899 = (fun u v => (normalNode3552).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3552).moment H = injectiveMoment H reductionPivot6899 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3552).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6899 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6899 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6899 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6898, oldProjection1105, oldProjection1097, reductionProjection5752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6899 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1090).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6899 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3165 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1105 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3165 hH))).trans (oldProjectionSound1105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6899 (2 : Fin 4)) = canonicalInput6614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6614 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6899 (3 : Fin 4)) = canonicalInput6612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5752 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6899 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6612 hH))).trans (reductionSound5752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3552).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6899 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3552).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6899 (j : Fin 4)))
      2 288 288 2 ![1, 144, 144, 1] ![288, 2, 2, 288] reductionProjection6899 ![reductionProjection6898, oldProjection1105, oldProjection1097, reductionProjection5752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6900 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -220), (20, 20), (40, -240), (42, 240), (76, -240), (90, 240), (91, 240), (94, 40), (106, 80), (232, -240), (242, -240), (243, 960), (244, 240), (322, 720), (632, 720), (686, -960), (692, -240), (698, 480), (700, 880), (701, 320), (704, 720), (1090, 720), (1225, 320), (1226, 320), (1251, 115), (1294, -240), (1323, -240)]

def reductionPivot6900 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound6900 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3544).moment H =
      Integer.Sparse.eval reductionProjection6900 (momentVector H) := by
  have heq : reductionPivot6900 = (fun u v => (normalNode3544).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3544).moment H = injectiveMoment H reductionPivot6900 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3544).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6900 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6900 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6900 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6505, oldProjection1946, reductionProjection6897, reductionProjection6899, oldProjection2144] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6900 (0 : Fin 5)) = (normalNode3271).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6505 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6900 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6900 (2 : Fin 5)) = (normalNode3547).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6900 (3 : Fin 5)) = (normalNode3552).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6899 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6900 (4 : Fin 5)) = canonicalInput6604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2144 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6900 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6604 hH))).trans (oldProjectionSound2144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3544).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6900 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3544).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6900 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 288, 288] ![5, 1, 10, 5, 5] reductionProjection6900 ![reductionProjection6505, oldProjection1946, reductionProjection6897, reductionProjection6899, oldProjection2144]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6901 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (20, -5), (94, -4), (108, -16), (236, 48), (242, 48), (243, -32), (244, -16), (246, -16), (247, -16), (700, -16), (704, -16), (747, -144), (1251, -3)]

def reductionPivot6901 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound6901 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4923).moment H =
      Integer.Sparse.eval reductionProjection6901 (momentVector H) := by
  have heq : reductionPivot6901 = (fun u v => (normalNode4923).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4923).moment H = injectiveMoment H reductionPivot6901 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4923).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6901 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6901 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6901 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2418, reductionProjection6339, reductionProjection6447, reductionProjection6514] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6901 (0 : Fin 4)) = canonicalInput19607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19607 hH))).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6901 (1 : Fin 4)) = canonicalInput9967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6339 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9967 hH))).trans (reductionSound6339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6901 (2 : Fin 4)) = canonicalInput9849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6447 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9849 hH))).trans (reductionSound6447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6901 (3 : Fin 4)) = canonicalInput9845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6901 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9845 hH))).trans (reductionSound6514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4923).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6901 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4923).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6901 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection6901 ![reductionProjection2418, reductionProjection6339, reductionProjection6447, reductionProjection6514]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6902 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (19, -320), (20, 65), (35, -240), (40, -240), (42, 240), (94, 115), (104, 240), (108, 80), (236, -240), (242, -240), (243, 640), (244, 80), (246, 80), (247, 80), (322, 720), (686, -960), (691, -240), (692, -480), (698, 240), (700, 640), (701, 480), (703, 240), (704, 880), (747, 720), (784, 720), (1251, 120)]

def reductionPivot6902 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6902 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3545).moment H =
      Integer.Sparse.eval reductionProjection6902 (momentVector H) := by
  have heq : reductionPivot6902 = (fun u v => (normalNode3545).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3545).moment H = injectiveMoment H reductionPivot6902 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3545).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot6902 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6902 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6902 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6901, oldProjection2827, reductionProjection6850, reductionProjection4483, reductionProjection6897] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6902 (0 : Fin 5)) = (normalNode4923).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6901 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6901 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6902 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3160 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2827 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3160 hH))).trans (oldProjectionSound2827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6902 (2 : Fin 5)) = canonicalInput6609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6850 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6609 hH))).trans (reductionSound6850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6902 (3 : Fin 5)) = canonicalInput6601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4483 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6601 hH))).trans (reductionSound4483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6902 (4 : Fin 5)) = (normalNode3547).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6902 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3545).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6902 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3545).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6902 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 1440, 144] ![5, 1, 5, 1, 10] reductionProjection6902 ![reductionProjection6901, oldProjection2827, reductionProjection6850, reductionProjection4483, reductionProjection6897]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6903 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (19, -220), (20, 45), (40, -240), (42, 240), (45, -240), (94, 155), (104, 160), (105, 80), (108, 80), (241, 80), (243, 400), (244, 80), (247, 80), (311, 720), (322, 720), (332, 720), (686, -960), (691, -240), (692, -720), (694, -240), (698, 320), (700, 800), (701, 480), (703, 160), (704, 1040), (1251, 160)]

def reductionPivot6903 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6903 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3546).moment H =
      Integer.Sparse.eval reductionProjection6903 (momentVector H) := by
  have heq : reductionPivot6903 = (fun u v => (normalNode3546).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3546).moment H = injectiveMoment H reductionPivot6903 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3546).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot6903 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6903 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 288, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6903 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2322, reductionProjection4709, oldProjection2011, reductionProjection4483, reductionProjection6897] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6903 (0 : Fin 5)) = canonicalInput10174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2322 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10174 hH))).trans (oldProjectionSound2322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6903 (1 : Fin 5)) = canonicalInput6726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4709 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6726 hH))).trans (reductionSound4709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6903 (2 : Fin 5)) = canonicalInput6610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2011 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6610 hH))).trans (oldProjectionSound2011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6903 (3 : Fin 5)) = canonicalInput6602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4483 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6602 hH))).trans (reductionSound4483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6903 (4 : Fin 5)) = (normalNode3547).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6903 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3546).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6903 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3546).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6903 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 288, 1440, 144] ![1, 20, 5, 1, 10] reductionProjection6903 ![oldProjection2322, reductionProjection4709, oldProjection2011, reductionProjection4483, reductionProjection6897]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6904 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 2), (94, 3), (704, 16), (1060, -48), (1251, 1), (1292, -48)]

def reductionPivot6904 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![0, -4, 1, 3], ![2, 3, -2, -3]]

theorem reductionSound6904 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9122).moment H =
      Integer.Sparse.eval reductionProjection6904 (momentVector H) := by
  have heq : reductionPivot6904 = (fun u v => (normalNode9122).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9122).moment H = injectiveMoment H reductionPivot6904 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9122).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9122).entries)).symm
  have hshape : reductionPivot6904 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6904 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6904 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection213, reductionProjection6841, oldProjection245] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6904 (0 : Fin 3)) = canonicalInput10975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6904 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6904 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10975 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6904 (1 : Fin 3)) = canonicalInput23334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6904 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6904 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23334 hH))).trans (reductionSound6841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6904 (2 : Fin 3)) = canonicalInput23341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6904 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6904 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23341 hH))).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9122).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6904 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9122).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6904 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6904 ![oldProjection213, reductionProjection6841, oldProjection245]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6905 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -6), (94, -3), (243, -32), (244, -16), (246, -16), (700, -32), (704, -48), (1060, 48), (1090, -144), (1251, -5), (1292, 48)]

def reductionPivot6905 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -2, 3], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound6905 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4924).moment H =
      Integer.Sparse.eval reductionProjection6905 (momentVector H) := by
  have heq : reductionPivot6905 = (fun u v => (normalNode4924).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4924).moment H = injectiveMoment H reductionPivot6905 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4924).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6905 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6905 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6905 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6904, oldProjection1072, reductionProjection6447, reductionProjection6898] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6905 (0 : Fin 4)) = canonicalInput11818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6904 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11818 hH))).trans (reductionSound6904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6905 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4411 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1072 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4411 hH))).trans (oldProjectionSound1072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6905 (2 : Fin 4)) = canonicalInput9849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6447 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9849 hH))).trans (reductionSound6447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6905 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1090).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6905 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4924).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6905 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4924).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6905 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection6905 ![reductionProjection6904, oldProjection1072, reductionProjection6447, reductionProjection6898]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6906 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (241, -16), (243, -48), (311, -144), (319, -144), (632, -144), (698, -32), (704, -32), (1251, -1)]

def reductionPivot6906 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, -1, -1, 1]]

theorem reductionSound6906 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3555).moment H =
      Integer.Sparse.eval reductionProjection6906 (momentVector H) := by
  have heq : reductionPivot6906 = (fun u v => (normalNode3555).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3555).moment H = injectiveMoment H reductionPivot6906 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3555).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6906 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6906 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6906 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1306, reductionProjection2530, reductionProjection5752, oldProjection461] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6906 (0 : Fin 4)) = canonicalInput20225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20225 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6906 (1 : Fin 4)) = canonicalInput6808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2530 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2530 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6808 hH))).trans (reductionSound2530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6906 (2 : Fin 4)) = canonicalInput6618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5752 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6618 hH))).trans (reductionSound5752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6906 (3 : Fin 4)) = canonicalInput6611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection461 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6906 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection461 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6611 hH))).trans (oldProjectionSound461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3555).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6906 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3555).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6906 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6906 ![oldProjection1306, reductionProjection2530, reductionProjection5752, oldProjection461]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6907 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -280), (20, 65), (42, 80), (94, 55), (241, 80), (243, 720), (244, 160), (246, 160), (311, 720), (319, 720), (632, 1440), (686, -480), (698, 400), (700, 640), (701, 320), (703, 80), (704, 800), (1060, -240), (1090, 1440), (1251, 100), (1292, -240)]

def reductionPivot6907 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound6907 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3548).moment H =
      Integer.Sparse.eval reductionProjection6907 (momentVector H) := by
  have heq : reductionPivot6907 = (fun u v => (normalNode3548).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3548).moment H = injectiveMoment H reductionPivot6907 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3548).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6907 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6907 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6907 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6905, reductionProjection4698, reductionProjection6906, reductionProjection4497, reductionProjection6899] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6907 (0 : Fin 5)) = (normalNode4924).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6905 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6907 (1 : Fin 5)) = canonicalInput6716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4698 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6716 hH))).trans (reductionSound4698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6907 (2 : Fin 5)) = (normalNode3555).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6906 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6907 (3 : Fin 5)) = canonicalInput6605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4497 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6605 hH))).trans (reductionSound4497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6907 (4 : Fin 5)) = (normalNode3552).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6899 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6907 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3548).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6907 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3548).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6907 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 288, 288, 288] ![5, 2, 5, 5, 5] reductionProjection6907 ![reductionProjection6905, reductionProjection4698, reductionProjection6906, reductionProjection4497, reductionProjection6899]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6908 : Integer.Sparse (Fin 1613) := [(19, 10), (20, 1), (229, 24), (243, -8), (244, -16), (700, -8), (701, -8), (704, -16), (1090, -72), (1251, -3), (1321, 24)]

def reductionPivot6908 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -2, 3], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound6908 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4925).moment H =
      Integer.Sparse.eval reductionProjection6908 (momentVector H) := by
  have heq : reductionPivot6908 = (fun u v => (normalNode4925).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4925).moment H = injectiveMoment H reductionPivot6908 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4925).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6908 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6908 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6908 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1504, reductionProjection4715, oldProjection908, reductionProjection6898] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6908 (0 : Fin 4)) = canonicalInput11879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11879 hH))).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6908 (1 : Fin 4)) = canonicalInput9942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9942 hH))).trans (reductionSound4715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6908 (2 : Fin 4)) = canonicalInput9850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection908 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9850 hH))).trans (oldProjectionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6908 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1090).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6908 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4925).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6908 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4925).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6908 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 1] ![1, 1, 1, 144] reductionProjection6908 ![reductionProjection1504, reductionProjection4715, oldProjection908, reductionProjection6898]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6909 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (243, 32), (1223, -48), (1225, 32), (1226, 16)]

def reductionPivot6909 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-2, 4, -1, -1], ![3, -3, -1, 1]]

theorem reductionSound6909 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9945).moment H =
      Integer.Sparse.eval reductionProjection6909 (momentVector H) := by
  have heq : reductionPivot6909 = (fun u v => (normalNode9945).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9945).moment H = injectiveMoment H reductionPivot6909 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9945).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9945).entries)).symm
  have hshape : reductionPivot6909 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6909 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6909 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection228, oldProjection221, oldProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6909 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6899 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6909 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection228 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6909 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6899 hH))).trans (oldProjectionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6909 (1 : Fin 3)) = canonicalInput27390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6909 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6909 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27390 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6909 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8900 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6909 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6909 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8900 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9945).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6909 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9945).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6909 (j : Fin 3)))
      3 144 144 3 ![3, 48, 1] ![48, 3, 144] reductionProjection6909 ![oldProjection228, oldProjection221, oldProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6910 : Integer.Sparse (Fin 1613) := [(785, 1)]

theorem reductionSound6910 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code785).moment H =
      Integer.Sparse.eval reductionProjection6910 (momentVector H) := by
  have hc : coordinates (785 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code785) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6910, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6911 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 3), (243, -32), (632, -144), (785, -144), (809, -144), (1223, 48), (1225, -32), (1226, -16)]

def reductionPivot6911 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3], ![0, 2, -1, -1], ![1, -1, -1, 1]]

theorem reductionSound6911 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3556).moment H =
      Integer.Sparse.eval reductionProjection6911 (momentVector H) := by
  have heq : reductionPivot6911 = (fun u v => (normalNode3556).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3556).moment H = injectiveMoment H reductionPivot6911 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3556).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6911 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6911 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6911 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6909, oldProjection604, reductionProjection5752, reductionProjection6910] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6911 (0 : Fin 4)) = (normalNode9945).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6909 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6911 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3282 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection604 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3282 hH))).trans (oldProjectionSound604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6911 (2 : Fin 4)) = canonicalInput6618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5752 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6618 hH))).trans (reductionSound5752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6911 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code785).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6910 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6911 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3556).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6911 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3556).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6911 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6911 ![reductionProjection6909, oldProjection604, reductionProjection5752, reductionProjection6910]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

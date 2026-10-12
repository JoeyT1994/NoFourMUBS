import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions205
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical100
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical238
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical99
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6592 : Integer.Sparse (Fin 1613) := [(736, 1)]

theorem reductionSound6592 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code736).moment H =
      Integer.Sparse.eval reductionProjection6592 (momentVector H) := by
  have hc : coordinates (736 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code736) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6592, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6593 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (104, -8), (233, 12), (238, 12), (240, 24), (241, -4), (247, -8), (736, -36), (1251, -1)]

def reductionPivot6593 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -2, 2, -2]]

theorem reductionSound6593 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode3299).moment H =
      Integer.Sparse.eval reductionProjection6593 (momentVector H) := by
  have heq : reductionPivot6593 = (fun u v => (normalNode3299).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3299).moment H = injectiveMoment H reductionPivot6593 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3299).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6593 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6593 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6593 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6591, oldProjection1055, reductionProjection6592, oldProjection1302] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6593 (0 : Fin 4)) = canonicalInput9699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6591 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9699 hH))).trans (reductionSound6591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6593 (1 : Fin 4)) = canonicalInput6344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6344 hH))).trans (oldProjectionSound1055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6593 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code736).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6592 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6593 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2977 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1302 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6593 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2977 hH))).trans (oldProjectionSound1302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3299).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6593 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3299).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6593 (j : Fin 4)))
      2 72 144 4 ![144, 144, 1, 72] ![1, 1, 144, 2] reductionProjection6593 ![reductionProjection6591, oldProjection1055, reductionProjection6592, oldProjection1302]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6594 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -60), (17, 30), (19, -70), (20, 15), (93, 180), (94, 80), (104, 80), (233, -120), (235, -120), (238, -600), (240, -480), (241, 120), (247, 160), (691, -240), (736, 360), (1050, -120), (1057, -480), (1058, -480), (1250, 210), (1251, 50)]

def reductionPivot6594 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, 2, -2]]

theorem reductionSound6594 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3282).moment H =
      Integer.Sparse.eval reductionProjection6594 (momentVector H) := by
  have heq : reductionPivot6594 = (fun u v => (normalNode3282).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3282).moment H = injectiveMoment H reductionPivot6594 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3282).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6594 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6594 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6594 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1956, reductionProjection6593, oldProjection1920, oldProjection1920, reductionProjection6488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6594 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1956 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6594 (1 : Fin 5)) = (normalNode3299).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6593 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6593 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6594 (2 : Fin 5)) = canonicalInput6259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1920 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6259 hH))).trans (oldProjectionSound1920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6594 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1920⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1920 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6594 (4 : Fin 5)) = (normalNode3288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6488 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6594 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3282).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6594 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3282).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6594 (j : Fin 5)))
      1 720 1440 2 ![1440, 72, 1440, 1440, 288] ![1, 20, 1, 1, 5] reductionProjection6594 ![oldProjection1956, reductionProjection6593, oldProjection1920, oldProjection1920, reductionProjection6488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6595 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -3), (137, -144), (143, -144), (241, 16), (247, -16), (543, -144), (1251, 1)]

def reductionPivot6595 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 0, 2, -2], ![1, -2, 1, 0], ![1, 1, 0, -2]]

theorem reductionSound6595 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3301).moment H =
      Integer.Sparse.eval reductionProjection6595 (momentVector H) := by
  have heq : reductionPivot6595 = (fun u v => (normalNode3301).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3301).moment H = injectiveMoment H reductionPivot6595 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3301).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6595 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6595 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6595 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection400, oldProjection404, oldProjection1037, oldProjection498] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6595 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4271 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection400 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4271 hH))).trans (oldProjectionSound400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6595 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3022 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection404 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3022 hH))).trans (oldProjectionSound404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6595 (2 : Fin 4)) = canonicalInput6282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1037 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6282 hH))).trans (oldProjectionSound1037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6595 (3 : Fin 4)) = canonicalInput6279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection498 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6595 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6279 hH))).trans (oldProjectionSound498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3301).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6595 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3301).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6595 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection6595 ![oldProjection400, oldProjection404, oldProjection1037, oldProjection498]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6596 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -220), (20, 5), (38, -960), (45, -480), (81, -480), (94, 170), (137, 720), (143, 1440), (231, -240), (241, 160), (242, -240), (247, 640), (543, 720), (697, -960), (698, 640), (700, 320), (1059, 80), (1061, -720), (1214, -240), (1219, -960), (1227, 240), (1251, 100)]

def reductionPivot6596 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2]]

theorem reductionSound6596 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3283).moment H =
      Integer.Sparse.eval reductionProjection6596 (momentVector H) := by
  have heq : reductionPivot6596 = (fun u v => (normalNode3283).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3283).moment H = injectiveMoment H reductionPivot6596 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3283).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6596 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6596 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6596 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1639, reductionProjection6595, oldProjection1472, reductionProjection2340, reductionProjection6492] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6596 (0 : Fin 5)) = canonicalInput6691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1639 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6691 hH))).trans (oldProjectionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6596 (1 : Fin 5)) = (normalNode3301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6595 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6596 (2 : Fin 5)) = canonicalInput6260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1472 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6260 hH))).trans (oldProjectionSound1472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6596 (3 : Fin 5)) = (normalNode3294).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6596 (4 : Fin 5)) = (normalNode3293).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6492 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6596 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3283).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6596 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3283).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6596 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 1440, 1440] ![5, 5, 1, 1, 1] reductionProjection6596 ![oldProjection1639, reductionProjection6595, oldProjection1472, reductionProjection2340, reductionProjection6492]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6597 : Integer.Sparse (Fin 1613) := [(20, 1), (32, -48), (37, -48), (94, -3), (105, 16), (243, 16)]

def reductionPivot6597 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 3, -3], ![2, -2, 1, -1], ![-1, 2, -4, 3]]

theorem reductionSound6597 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10903).moment H =
      Integer.Sparse.eval reductionProjection6597 (momentVector H) := by
  have heq : reductionPivot6597 = (fun u v => (normalNode10903).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10903).moment H = injectiveMoment H reductionPivot6597 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10903).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10903).entries)).symm
  have hshape : reductionPivot6597 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6597 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6597 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection84, oldProjection195, reductionProjection232] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6597 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7621 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6597 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6597 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7621 hH))).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6597 (1 : Fin 3)) = canonicalInput31826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6597 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection195 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6597 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31826 hH))).trans (oldProjectionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6597 (2 : Fin 3)) = canonicalInput31827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6597 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection232 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6597 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31827 hH))).trans (reductionSound232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10903).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6597 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10903).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6597 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection6597 ![oldProjection84, oldProjection195, reductionProjection232]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6598 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (32, 24), (37, 48), (38, 24), (94, 2), (105, -16), (241, -16), (243, -8), (737, -72), (1251, -1)]

def reductionPivot6598 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, -2, 1, -1]]

theorem reductionSound6598 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3306).moment H =
      Integer.Sparse.eval reductionProjection6598 (momentVector H) := by
  have heq : reductionPivot6598 = (fun u v => (normalNode3306).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3306).moment H = injectiveMoment H reductionPivot6598 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3306).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6598 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6598 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6598 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6597, oldProjection1159, reductionProjection6512, oldProjection1300] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6598 (0 : Fin 4)) = canonicalInput9706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6597 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9706 hH))).trans (reductionSound6597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6598 (1 : Fin 4)) = canonicalInput6350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1159 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6350 hH))).trans (oldProjectionSound1159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6598 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code737).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6512 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6598 (3 : Fin 4)) = canonicalInput6290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1300 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6598 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6290 hH))).trans (oldProjectionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3306).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6598 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3306).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6598 (j : Fin 4)))
      2 144 144 2 ![144, 144, 1, 144] ![1, 1, 144, 1] reductionProjection6598 ![reductionProjection6597, oldProjection1159, reductionProjection6512, oldProjection1300]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6599 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -120), (20, 5), (32, -120), (37, -480), (38, -360), (94, 35), (104, 160), (105, 80), (233, -120), (238, -120), (240, -240), (241, 280), (243, 120), (247, 160), (307, 720), (690, -360), (697, -480), (698, 160), (700, 40), (736, 360), (737, 360), (789, 360), (1059, 40), (1251, -5)]

def reductionPivot6599 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, 1, -1]]

theorem reductionSound6599 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3284).moment H =
      Integer.Sparse.eval reductionProjection6599 (momentVector H) := by
  have heq : reductionPivot6599 = (fun u v => (normalNode3284).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3284).moment H = injectiveMoment H reductionPivot6599 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3284).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6599 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6599 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 72, 72, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6599 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1960, reductionProjection6598, oldProjection1930, oldProjection1930, reductionProjection6593] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6599 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1960⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6599 (1 : Fin 5)) = (normalNode3306).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6599 (2 : Fin 5)) = canonicalInput6276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1930 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6276 hH))).trans (oldProjectionSound1930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6599 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1930⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1930 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6599 (4 : Fin 5)) = (normalNode3299).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6593 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6599 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6593 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3284).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6599 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3284).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6599 (j : Fin 5)))
      1 720 720 1 ![720, 144, 72, 72, 72] ![1, 5, 10, 10, 10] reductionProjection6599 ![oldProjection1960, reductionProjection6598, oldProjection1930, oldProjection1930, reductionProjection6593]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6600 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (108, -8), (231, 12), (236, 12), (241, -8), (242, 24), (247, -4), (746, -36), (1251, -1)]

def reductionPivot6600 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 1, -2]]

theorem reductionSound6600 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode3314).moment H =
      Integer.Sparse.eval reductionProjection6600 (momentVector H) := by
  have heq : reductionPivot6600 = (fun u v => (normalNode3314).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3314).moment H = injectiveMoment H reductionPivot6600 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3314).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6600 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6600 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6600 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6339, reductionProjection6342, reductionProjection2332, reductionProjection2331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6600 (0 : Fin 4)) = canonicalInput9714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6339 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9714 hH))).trans (reductionSound6339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6600 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code746).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6600 (2 : Fin 4)) = canonicalInput6320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2332 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6320 hH))).trans (reductionSound2332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6600 (3 : Fin 4)) = canonicalInput6318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2331 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6600 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6318 hH))).trans (reductionSound2331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3314).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6600 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3314).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6600 (j : Fin 4)))
      2 72 144 4 ![144, 1, 72, 144] ![1, 144, 2, 1] reductionProjection6600 ![reductionProjection6339, reductionProjection6342, reductionProjection2332, reductionProjection2331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6601 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -100), (17, 60), (19, -340), (20, 65), (76, -480), (93, 180), (94, 120), (105, 80), (108, 160), (231, -1200), (232, -480), (235, -240), (236, -240), (241, 480), (242, -960), (243, 560), (247, 240), (691, -240), (698, 400), (746, 720), (1057, -480), (1226, 160), (1251, 50), (1294, -480), (1323, -960)]

def reductionPivot6601 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound6601 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3285).moment H =
      Integer.Sparse.eval reductionProjection6601 (momentVector H) := by
  have heq : reductionPivot6601 = (fun u v => (normalNode3285).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3285).moment H = injectiveMoment H reductionPivot6601 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3285).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6601 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6601 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6601 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1977, oldProjection1934, oldProjection1934, reductionProjection6356, reductionProjection6600] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6601 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1977⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1977 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6601 (1 : Fin 5)) = canonicalInput6328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1934 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6328 hH))).trans (oldProjectionSound1934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6601 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1934⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1934 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6601 (3 : Fin 5)) = (normalNode3315).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6356 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6601 (4 : Fin 5)) = (normalNode3314).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6600 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6601 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3285).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6601 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3285).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6601 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 72] ![1, 1, 1, 5, 20] reductionProjection6601 ![oldProjection1977, oldProjection1934, oldProjection1934, reductionProjection6356, reductionProjection6600]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6602 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 4), (20, 1), (94, -2)]

def reductionPivot6602 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -3, 4], ![0, 4, -4], ![1, -2, 1]]

theorem reductionSound6602 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode6292).moment H =
      Integer.Sparse.eval reductionProjection6602 (momentVector H) := by
  have heq : reductionPivot6602 = (fun u v => (normalNode6292).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6292).moment H = injectiveMoment H reductionPivot6602 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6292).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot6602 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6602 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 16, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6602 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection59, oldProjection55, oldProjection54] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6602 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6602 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection59 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6602 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection59 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound59 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6602 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node55⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6602 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection55 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6602 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection55 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound55 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6602 (2 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6602 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6602 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6292).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6602 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6292).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6602 (j : Fin 3)))
      3 48 48 3 ![16, 16, 16] ![3, 3, 3] reductionProjection6602 ![oldProjection59, oldProjection55, oldProjection54]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6603 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 2), (17, 12), (19, -8), (20, -5), (94, 1)]

def reductionPivot6603 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 1, -1], ![-3, 4, -2, 1], ![4, -4, 1, -1]]

theorem reductionSound6603 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9750).moment H =
      Integer.Sparse.eval reductionProjection6603 (momentVector H) := by
  have heq : reductionPivot6603 = (fun u v => (normalNode9750).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9750).moment H = injectiveMoment H reductionPivot6603 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9750).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9750).entries)).symm
  have hshape : reductionPivot6603 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6603 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6603 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection6602, reductionProjection6576, oldProjection278] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6603 (0 : Fin 3)) = canonicalInput21696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6603 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6602 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6603 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21696 hH))).trans (reductionSound6602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6603 (1 : Fin 3)) = canonicalInput31110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6603 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6576 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6603 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31110 hH))).trans (reductionSound6576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6603 (2 : Fin 3)) = canonicalInput31113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6603 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection278 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6603 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31113 hH))).trans (oldProjectionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9750).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6603 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9750).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6603 (j : Fin 3)))
      3 144 144 3 ![48, 48, 24] ![3, 3, 6] reductionProjection6603 ![reductionProjection6602, reductionProjection6576, oldProjection278]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6604 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (106, 16), (235, -48), (243, 16), (244, 32), (246, 16)]

def reductionPivot6604 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![2, -4, 2, 0], ![-1, 4, -4, 1]]

theorem reductionSound6604 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10899).moment H =
      Integer.Sparse.eval reductionProjection6604 (momentVector H) := by
  have heq : reductionPivot6604 = (fun u v => (normalNode10899).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10899).moment H = injectiveMoment H reductionPivot6604 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10899).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10899).entries)).symm
  have hshape : reductionPivot6604 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6604 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6604 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection156, reductionProjection1742, reductionProjection1729] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6604 (0 : Fin 3)) = canonicalInput22418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6604 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection156 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6604 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22418 hH))).trans (oldProjectionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6604 (1 : Fin 3)) = canonicalInput31813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6604 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1742 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6604 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31813 hH))).trans (reductionSound1742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6604 (2 : Fin 3)) = canonicalInput31815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6604 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1729 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6604 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31815 hH))).trans (reductionSound1729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10899).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6604 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10899).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6604 (j : Fin 3)))
      3 144 144 3 ![48, 3, 1] ![3, 48, 144] reductionProjection6604 ![oldProjection156, reductionProjection1742, reductionProjection1729]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6605 : Integer.Sparse (Fin 1613) := [(3, 16), (4, -3), (17, -12), (19, -8), (20, 11), (94, 1), (106, -16), (235, 48), (243, -16), (244, -48), (246, -32), (1251, -1)]

def reductionPivot6605 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound6605 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3316).moment H =
      Integer.Sparse.eval reductionProjection6605 (momentVector H) := by
  have heq : reductionPivot6605 = (fun u v => (normalNode3316).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3316).moment H = injectiveMoment H reductionPivot6605 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3316).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6605 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6605 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6605 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6603, reductionProjection6604, reductionProjection2482, oldProjection1227] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6605 (0 : Fin 4)) = canonicalInput9716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6603 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9716 hH))).trans (reductionSound6603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6605 (1 : Fin 4)) = canonicalInput6358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6604 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6358 hH))).trans (reductionSound6604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6605 (2 : Fin 4)) = canonicalInput6323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2482 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6323 hH))).trans (reductionSound2482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6605 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3005 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1227 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6605 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3005 hH))).trans (oldProjectionSound1227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3316).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6605 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3316).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6605 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection6605 ![reductionProjection6603, reductionProjection6604, reductionProjection2482, oldProjection1227]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6606 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -200), (4, 15), (17, 60), (19, -80), (20, 15), (93, 180), (94, -120), (106, 80), (108, 160), (235, -240), (243, 720), (244, 240), (246, 160), (247, 80), (691, -240), (698, 80), (700, 240), (704, 160), (747, 720), (1057, -480), (1225, 160), (1226, 160), (1251, 45), (1290, -240)]

def reductionPivot6606 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound6606 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3286).moment H =
      Integer.Sparse.eval reductionProjection6606 (momentVector H) := by
  have heq : reductionPivot6606 = (fun u v => (normalNode3286).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3286).moment H = injectiveMoment H reductionPivot6606 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3286).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6606 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6606 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6606 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1978, oldProjection1935, oldProjection1935, reductionProjection6519, reductionProjection6605] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6606 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1978⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1978 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6606 (1 : Fin 5)) = canonicalInput6329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1935 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6329 hH))).trans (oldProjectionSound1935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6606 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1935⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1935 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6606 (3 : Fin 5)) = (normalNode3317).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6519 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6606 (4 : Fin 5)) = (normalNode3316).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6605 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6606 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3286).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6606 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3286).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6606 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 144, 288, 288] ![1, 10, 10, 5, 5] reductionProjection6606 ![oldProjection1978, oldProjection1935, oldProjection1935, reductionProjection6519, reductionProjection6605]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6607 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (108, 16), (225, -24), (247, 16), (1251, 1)]

def reductionPivot6607 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 2, -2], ![1, -1, 2, -2], ![-1, 2, -4, 3]]

theorem reductionSound6607 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode11170).moment H =
      Integer.Sparse.eval reductionProjection6607 (momentVector H) := by
  have heq : reductionPivot6607 = (fun u v => (normalNode11170).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11170).moment H = injectiveMoment H reductionPivot6607 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11170).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11170).entries)).symm
  have hshape : reductionPivot6607 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6607 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6607 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection144, oldProjection144, reductionProjection1688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6607 (0 : Fin 3)) = canonicalInput27438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6607 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6607 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27438 hH))).trans (oldProjectionSound144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6607 (1 : Fin 3)) = canonicalInput33365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6607 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6607 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33365 hH))).trans (oldProjectionSound144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6607 (2 : Fin 3)) = canonicalInput33367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6607 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6607 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33367 hH))).trans (reductionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11170).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6607 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11170).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6607 (j : Fin 3)))
      3 72 144 6 ![48, 48, 1] ![3, 3, 144] reductionProjection6607 ![oldProjection144, oldProjection144, reductionProjection1688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6608 : Integer.Sparse (Fin 1613) := [(19, 12), (94, -3), (108, -32), (225, 24), (241, -16), (748, -72), (1251, -3)]

def reductionPivot6608 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, -1, 2, -2]]

theorem reductionSound6608 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3318).moment H =
      Integer.Sparse.eval reductionProjection6608 (momentVector H) := by
  have heq : reductionPivot6608 = (fun u v => (normalNode3318).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3318).moment H = injectiveMoment H reductionPivot6608 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3318).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6608 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6608 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6608 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6607, reductionProjection6536, reductionProjection2332, reductionProjection2332] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6608 (0 : Fin 4)) = canonicalInput9718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6607 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9718 hH))).trans (reductionSound6607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6608 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code748).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6536 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6608 (2 : Fin 4)) = canonicalInput6325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2332 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6325 hH))).trans (reductionSound2332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6608 (3 : Fin 4)) = canonicalInput6320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2332 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6608 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6320 hH))).trans (reductionSound2332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3318).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6608 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3318).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6608 (j : Fin 4)))
      2 144 144 2 ![72, 1, 72, 72] ![2, 144, 2, 2] reductionProjection6608 ![reductionProjection6607, reductionProjection6536, reductionProjection2332, reductionProjection2332]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6609 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -40), (19, -320), (20, 45), (94, 180), (108, 800), (225, -240), (241, 320), (243, 80), (247, 400), (698, 80), (747, 720), (748, 720), (751, 1440), (808, 720), (1251, 120), (1290, -240), (1319, -720)]

def reductionPivot6609 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound6609 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3287).moment H =
      Integer.Sparse.eval reductionProjection6609 (momentVector H) := by
  have heq : reductionPivot6609 = (fun u v => (normalNode3287).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3287).moment H = injectiveMoment H reductionPivot6609 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3287).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6609 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6609 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6609 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1979, oldProjection1936, oldProjection1936, reductionProjection6608, reductionProjection6519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6609 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1979⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1979 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6609 (1 : Fin 5)) = canonicalInput6330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1936 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6330 hH))).trans (oldProjectionSound1936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6609 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1936⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1936 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6609 (3 : Fin 5)) = (normalNode3318).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6608 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6609 (4 : Fin 5)) = (normalNode3317).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6519 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6609 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3287).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6609 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3287).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6609 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 144, 288] ![1, 1, 1, 10, 5] reductionProjection6609 ![oldProjection1979, oldProjection1936, oldProjection1936, reductionProjection6608, reductionProjection6519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6610 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 30), (38, 120), (45, 120), (94, -20), (238, 120), (240, 120), (241, -40), (247, -80), (327, -360), (698, -80), (700, -40), (704, -40), (1059, -40), (1251, -15)]

def reductionPivot6610 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 0, 0, -1]]

theorem reductionSound6610 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3323).moment H =
      Integer.Sparse.eval reductionProjection6610 (momentVector H) := by
  have heq : reductionPivot6610 = (fun u v => (normalNode3323).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3323).moment H = injectiveMoment H reductionPivot6610 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3323).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6610 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6610 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6610 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection785, oldProjection773, oldProjection786, oldProjection465] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6610 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4283 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection785 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4283 hH))).trans (oldProjectionSound785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6610 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3040 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection773 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3040 hH))).trans (oldProjectionSound773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6610 (2 : Fin 4)) = canonicalInput6348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6348 hH))).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6610 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection465 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6610 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3023 hH))).trans (oldProjectionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3323).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6610 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3323).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6610 (j : Fin 4)))
      2 720 720 2 ![72, 9, 360, 1] ![10, 80, 2, 720] reductionProjection6610 ![oldProjection785, oldProjection773, oldProjection786, oldProjection465]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6611 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -4), (19, -48), (20, 3), (38, -192), (45, -96), (81, -96), (93, 12), (94, 32), (108, 16), (231, -96), (238, -96), (240, -48), (241, 80), (242, -48), (243, 32), (247, 96), (327, 144), (333, 144), (694, -48), (697, -192), (698, 96), (700, 32), (704, 16), (1057, -48), (1058, -48), (1059, 32), (1226, 16), (1227, 16), (1250, 24), (1251, 6), (1323, -48), (1389, -48)]

def reductionPivot6611 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]

theorem reductionSound6611 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3289).moment H =
      Integer.Sparse.eval reductionProjection6611 (momentVector H) := by
  have heq : reductionPivot6611 = (fun u v => (normalNode3289).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3289).moment H = injectiveMoment H reductionPivot6611 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3289).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6611 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6611 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6611 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1635, oldProjection1459, reductionProjection6610, oldProjection1934, reductionProjection2318] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6611 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3196 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1635 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3196 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6611 (1 : Fin 5)) = canonicalInput6333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1459 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6333 hH))).trans (oldProjectionSound1459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6611 (2 : Fin 5)) = (normalNode3323).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6610 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6611 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1934⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1934 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6611 (4 : Fin 5)) = (normalNode3321).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2318 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6611 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3289).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6611 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3289).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6611 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 720, 1440, 720] ![1, 1, 2, 1, 2] reductionProjection6611 ![oldProjection1635, oldProjection1459, reductionProjection6610, oldProjection1934, reductionProjection2318]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6612 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -2), (94, -7), (231, 48), (238, 48), (240, 48), (241, -32), (242, 48), (243, -16), (244, -16), (246, -16), (247, -32), (700, -16), (704, -16), (740, -144), (1251, -5)]

def reductionPivot6612 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, 1, -2], ![1, -2, 3, -2], ![1, 0, -1, 0]]

theorem reductionSound6612 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3324).moment H =
      Integer.Sparse.eval reductionProjection6612 (momentVector H) := by
  have heq : reductionPivot6612 = (fun u v => (normalNode3324).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3324).moment H = injectiveMoment H reductionPivot6612 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3324).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6612 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6612 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6612 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6566, oldProjection1194, oldProjection1243, reductionProjection6547] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6612 (0 : Fin 4)) = canonicalInput9725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6566 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9725 hH))).trans (reductionSound6566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6612 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3041 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1194 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3041 hH))).trans (oldProjectionSound1194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6612 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3025 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1243 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3025 hH))).trans (oldProjectionSound1243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6612 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code740).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6547 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6612 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3324).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6612 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3324).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6612 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 1] ![2, 32, 2, 288] reductionProjection6612 ![reductionProjection6566, oldProjection1194, oldProjection1243, reductionProjection6547]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6613 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 1), (19, -8), (93, 12), (94, 3), (1294, -48)]

def reductionPivot6613 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-3, 4, 1, -2], ![4, -3, -2, 1]]

theorem reductionSound6613 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9728).moment H =
      Integer.Sparse.eval reductionProjection6613 (momentVector H) := by
  have heq : reductionPivot6613 = (fun u v => (normalNode9728).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9728).moment H = injectiveMoment H reductionPivot6613 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9728).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9728).entries)).symm
  have hshape : reductionPivot6613 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6613 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6613 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection6351, reductionProjection6602, oldProjection257] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6613 (0 : Fin 3)) = canonicalInput17994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6613 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6613 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17994 hH))).trans (reductionSound6351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6613 (1 : Fin 3)) = canonicalInput26659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6613 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6602 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6613 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26659 hH))).trans (reductionSound6602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6613 (2 : Fin 3)) = canonicalInput26664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6613 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection257 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6613 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26664 hH))).trans (oldProjectionSound257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9728).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6613 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9728).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6613 (j : Fin 3)))
      3 144 144 3 ![1, 48, 48] ![144, 3, 3] reductionProjection6613 ![reductionProjection6351, reductionProjection6602, oldProjection257]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6614 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 12), (93, -12), (94, -3), (106, -16), (232, 96), (242, 48), (243, -32), (244, -16), (246, -16), (1057, 48), (1225, -16), (1251, -4), (1294, 48)]

def reductionPivot6614 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -2, 4, -3], ![1, 0, -1, 0]]

theorem reductionSound6614 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3322).moment H =
      Integer.Sparse.eval reductionProjection6614 (momentVector H) := by
  have heq : reductionPivot6614 = (fun u v => (normalNode3322).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3322).moment H = injectiveMoment H reductionPivot6614 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3322).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6614 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6614 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6614 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6613, reductionProjection6582, oldProjection1174, reductionProjection6448] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6614 (0 : Fin 4)) = canonicalInput9722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6613 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9722 hH))).trans (reductionSound6613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6614 (1 : Fin 4)) = canonicalInput6359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6582 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6359 hH))).trans (reductionSound6582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6614 (2 : Fin 4)) = canonicalInput6342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6342 hH))).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6614 (3 : Fin 4)) = canonicalInput6340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6448 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6614 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6340 hH))).trans (reductionSound6448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3322).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6614 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3322).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6614 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 144] ![2, 32, 2, 2] reductionProjection6614 ![reductionProjection6613, reductionProjection6582, oldProjection1174, reductionProjection6448]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6615 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -60), (4, 5), (19, -340), (20, 35), (76, -480), (93, 120), (94, 100), (106, 80), (231, -1200), (232, -480), (238, -480), (240, -240), (241, 240), (242, -720), (243, 720), (244, 240), (246, 160), (247, 240), (697, -240), (698, 240), (700, 240), (704, 160), (740, 720), (1057, -480), (1058, -240), (1225, 80), (1226, 160), (1250, 120), (1251, 110), (1294, -240), (1323, -960)]

def reductionPivot6615 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, -1, 0]]

theorem reductionSound6615 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3290).moment H =
      Integer.Sparse.eval reductionProjection6615 (momentVector H) := by
  have heq : reductionPivot6615 = (fun u v => (normalNode3290).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3290).moment H = injectiveMoment H reductionPivot6615 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3290).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6615 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6615 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6615 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1980, reductionProjection707, reductionProjection6612, reductionProjection6614, oldProjection1934] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6615 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1980 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6615 (1 : Fin 5)) = (normalNode3327).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection707 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6615 (2 : Fin 5)) = (normalNode3324).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6612 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6615 (3 : Fin 5)) = (normalNode3322).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6614 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6615 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1934⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1934 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6615 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3290).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6615 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3290).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6615 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 288, 1440] ![1, 5, 5, 5, 1] reductionProjection6615 ![oldProjection1980, reductionProjection707, reductionProjection6612, reductionProjection6614, oldProjection1934]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6616 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (38, 96), (94, -8), (241, -32), (247, -32), (327, -144), (697, 96), (698, -16), (700, -16), (701, -16), (704, -32), (1251, -7)]

def reductionPivot6616 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 0, -1, 0]]

theorem reductionSound6616 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3329).moment H =
      Integer.Sparse.eval reductionProjection6616 (momentVector H) := by
  have heq : reductionPivot6616 = (fun u v => (normalNode3329).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3329).moment H = injectiveMoment H reductionPivot6616 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3329).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6616 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6616 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6616 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1248, oldProjection1087, oldProjection1243, oldProjection465] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6616 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4427 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1248 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4427 hH))).trans (oldProjectionSound1248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6616 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3045 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1087 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3045 hH))).trans (oldProjectionSound1087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6616 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3025 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1243 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3025 hH))).trans (oldProjectionSound1243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6616 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection465 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6616 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3023 hH))).trans (oldProjectionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3329).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6616 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3329).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6616 (j : Fin 4)))
      2 288 288 2 ![72, 9, 144, 1] ![4, 32, 2, 288] reductionProjection6616 ![oldProjection1248, oldProjection1087, oldProjection1243, oldProjection465]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6617 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (37, -48), (45, -48), (94, 1), (243, 16), (703, 16)]

def reductionPivot6617 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, 3, -1, -2], ![2, -4, -1, 3]]

theorem reductionSound6617 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9137).moment H =
      Integer.Sparse.eval reductionProjection6617 (momentVector H) := by
  have heq : reductionPivot6617 = (fun u v => (normalNode9137).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9137).moment H = injectiveMoment H reductionPivot6617 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9137).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9137).entries)).symm
  have hshape : reductionPivot6617 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6617 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6617 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection84, oldProjection89, oldProjection82] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6617 (0 : Fin 3)) = canonicalInput11675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6617 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6617 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11675 hH))).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6617 (1 : Fin 3)) = canonicalInput23387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6617 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6617 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23387 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6617 (2 : Fin 3)) = canonicalInput23422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6617 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection82 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6617 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection82 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23422 hH))).trans (oldProjectionSound82 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9137).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6617 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9137).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6617 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6617 ![oldProjection84, oldProjection89, oldProjection82]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6618 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -3), (37, 48), (38, 96), (45, 48), (94, -4), (241, -16), (243, -32), (247, -16), (700, -16), (701, -16), (703, -16), (704, -16), (742, -144), (1251, -5)]

def reductionPivot6618 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, 2, -3], ![1, -2, 2, -1], ![1, 0, -1, 0]]

theorem reductionSound6618 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3326).moment H =
      Integer.Sparse.eval reductionProjection6618 (momentVector H) := by
  have heq : reductionPivot6618 = (fun u v => (normalNode3326).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3326).moment H = injectiveMoment H reductionPivot6618 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3326).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6618 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6618 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6618 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6617, oldProjection1087, oldProjection1082, reductionProjection6332] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6618 (0 : Fin 4)) = canonicalInput9728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6617 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9728 hH))).trans (reductionSound6617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6618 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3045 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1087 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3045 hH))).trans (oldProjectionSound1087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6618 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3029 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1082 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3029 hH))).trans (oldProjectionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6618 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code742).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6332 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6618 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3326).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6618 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3326).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6618 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 1] ![2, 32, 2, 288] reductionProjection6618 ![reductionProjection6617, oldProjection1087, oldProjection1082, reductionProjection6332]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6619 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -340), (20, 30), (37, -240), (38, -1200), (45, -480), (81, -240), (94, 185), (231, -240), (238, -480), (240, -480), (241, 480), (242, -240), (243, 240), (244, 80), (246, 80), (247, 560), (327, 1440), (697, -960), (698, 560), (700, 480), (701, 160), (703, 80), (704, 480), (740, 720), (742, 720), (801, 720), (1059, 240), (1251, 130)]

def reductionPivot6619 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 0, -1, 0]]

theorem reductionSound6619 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3291).moment H =
      Integer.Sparse.eval reductionProjection6619 (momentVector H) := by
  have heq : reductionPivot6619 = (fun u v => (normalNode3291).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3291).moment H = injectiveMoment H reductionPivot6619 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3291).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6619 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6619 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6619 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1982, reductionProjection6616, reductionProjection6618, reductionProjection6612, reductionProjection6610] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6619 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1982⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1982 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6619 (1 : Fin 5)) = (normalNode3329).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6616 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6619 (2 : Fin 5)) = (normalNode3326).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6618 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6619 (3 : Fin 5)) = (normalNode3324).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6612 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6619 (4 : Fin 5)) = (normalNode3323).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6610 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6619 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3291).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6619 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3291).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6619 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 288, 720] ![5, 5, 5, 5, 2] reductionProjection6619 ![oldProjection1982, reductionProjection6616, reductionProjection6618, reductionProjection6612, reductionProjection6610]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6620 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -260), (20, 15), (38, -1440), (81, -480), (94, 155), (231, -480), (238, -480), (241, 480), (243, 240), (244, 80), (247, 480), (327, 1440), (697, -1440), (698, 560), (700, 480), (701, 160), (704, 320), (1059, 240), (1250, 120), (1251, 55), (1323, -480), (1389, -480)]

def reductionPivot6620 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]

theorem reductionSound6620 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3295).moment H =
      Integer.Sparse.eval reductionProjection6620 (momentVector H) := by
  have heq : reductionPivot6620 = (fun u v => (normalNode3295).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3295).moment H = injectiveMoment H reductionPivot6620 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3295).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6620 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6620 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6620 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1674, reductionProjection6616, reductionProjection6616, reductionProjection707, oldProjection1459] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6620 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3228 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1674 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3228 hH))).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6620 (1 : Fin 5)) = canonicalInput6345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6616 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6345 hH))).trans (reductionSound6616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6620 (2 : Fin 5)) = (normalNode3329).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6616 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6620 (3 : Fin 5)) = (normalNode3327).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection707 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6620 (4 : Fin 5)) = canonicalInput6333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1459 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6620 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6333 hH))).trans (oldProjectionSound1459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3295).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6620 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3295).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6620 (j : Fin 5)))
      1 1440 1440 1 ![720, 288, 288, 288, 1440] ![2, 5, 5, 5, 1] reductionProjection6620 ![oldProjection1674, reductionProjection6616, reductionProjection6616, reductionProjection707, oldProjection1459]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6621 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 8), (94, 1), (225, -48), (233, -48), (1251, 1)]

def reductionPivot6621 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -2, 2, 0], ![-1, -2, 2, 1], ![2, 4, -4, -2]]

theorem reductionSound6621 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10212).moment H =
      Integer.Sparse.eval reductionProjection6621 (momentVector H) := by
  have heq : reductionPivot6621 = (fun u v => (normalNode10212).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10212).moment H = injectiveMoment H reductionPivot6621 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10212).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10212).entries)).symm
  have hshape : reductionPivot6621 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6621 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6621 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1688, reductionProjection1719, oldProjection139] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6621 (0 : Fin 3)) = canonicalInput14012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6621 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6621 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14012 hH))).trans (reductionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6621 (1 : Fin 3)) = canonicalInput24430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6621 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6621 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24430 hH))).trans (reductionSound1719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6621 (2 : Fin 3)) = canonicalInput24433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6621 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection139 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6621 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24433 hH))).trans (oldProjectionSound139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10212).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6621 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10212).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6621 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6621 ![reductionProjection1688, reductionProjection1719, oldProjection139]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6622 : Integer.Sparse (Fin 1613) := [(3, 8), (20, -1), (94, -8), (104, -32), (108, -48), (225, 48), (233, 48), (240, 48), (241, -32), (247, -48), (1251, -7)]

def reductionPivot6622 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -3, 4], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, 2, -2]]

theorem reductionSound6622 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4786).moment H =
      Integer.Sparse.eval reductionProjection6622 (momentVector H) := by
  have heq : reductionPivot6622 = (fun u v => (normalNode4786).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4786).moment H = injectiveMoment H reductionPivot6622 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4786).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6622 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6622 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6622 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6621, oldProjection1236, reductionProjection2598, oldProjection994] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6622 (0 : Fin 4)) = canonicalInput11804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6621 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11804 hH))).trans (reductionSound6621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6622 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4284 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1236 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4284 hH))).trans (oldProjectionSound1236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6622 (2 : Fin 4)) = canonicalInput9703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9703 hH))).trans (reductionSound2598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6622 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4272 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection994 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6622 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4272 hH))).trans (oldProjectionSound994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4786).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6622 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4786).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6622 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection6622 ![reductionProjection6621, oldProjection1236, reductionProjection2598, oldProjection994]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6623 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (238, 96), (240, 48), (241, -16), (247, -16), (736, -144), (748, -144), (1057, 48), (1058, 48), (1251, -1)]

def reductionPivot6623 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, -1, 2, -2]]

theorem reductionSound6623 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3303).moment H =
      Integer.Sparse.eval reductionProjection6623 (momentVector H) := by
  have heq : reductionPivot6623 = (fun u v => (normalNode3303).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3303).moment H = injectiveMoment H reductionPivot6623 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3303).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6623 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6623 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6623 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection916, reductionProjection6536, oldProjection1055, reductionProjection6592] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6623 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node916⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection916 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6623 (1 : Fin 4)) = canonicalInput6377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6536 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6377 hH))).trans (reductionSound6536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6623 (2 : Fin 4)) = canonicalInput6284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6284 hH))).trans (oldProjectionSound1055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6623 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code736).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6592 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6623 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3303).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6623 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3303).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6623 (j : Fin 4)))
      2 288 288 2 ![3, 1, 144, 1] ![96, 288, 2, 288] reductionProjection6623 ![oldProjection916, reductionProjection6536, oldProjection1055, reductionProjection6592]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

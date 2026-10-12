import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical124
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical211
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical83
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical84
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical85
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical87
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical88
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical89
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6112 : Integer.Sparse (Fin 1613) := [(3, 40), (4, -3), (19, 52), (20, -10), (46, -32), (94, -14), (104, -64), (108, -48), (244, -16), (245, -16), (246, -96), (679, 48), (700, -16), (701, -48), (703, -112), (704, -96), (1251, -7)]

def reductionPivot6112 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, -1, 3], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, 4, -5]]

theorem reductionSound6112 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode2987).moment H =
      Integer.Sparse.eval reductionProjection6112 (momentVector H) := by
  have heq : reductionPivot6112 = (fun u v => (normalNode2987).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2987).moment H = injectiveMoment H reductionPivot6112 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2987).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6112 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6112 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6112 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection261, reductionProjection6107, oldProjection552, oldProjection552, oldProjection565] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6112 (0 : Fin 5)) = (normalNode120).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection261 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6112 (1 : Fin 5)) = (normalNode2986).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6107 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6112 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node552⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection552 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6112 (3 : Fin 5)) = canonicalInput5827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection552 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5827 hH))).trans (oldProjectionSound552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6112 (4 : Fin 5)) = canonicalInput5829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection565 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6112 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection565 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5829 hH))).trans (oldProjectionSound565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2987).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6112 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2987).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6112 (j : Fin 5)))
      1 96 96 1 ![96, 96, 96, 96, 96] ![1, 1, 1, 1, 1] reductionProjection6112 ![reductionProjection261, reductionProjection6107, oldProjection552, oldProjection552, oldProjection565]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6113 : Integer.Sparse (Fin 1613) := [(46, -1), (701, -1), (703, -1)]

def reductionPivot6113 : Matrix (Fin 4) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, -1, 3], ![1, 4, -5], ![2, -3, 1]]

theorem reductionSound6113 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode2988).moment H =
      Integer.Sparse.eval reductionProjection6113 (momentVector H) := by
  have heq : reductionPivot6113 = (fun u v => (normalNode2988).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2988).moment H = injectiveMoment H reductionPivot6113 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2988).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot6113 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6113 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6113 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection250, oldProjection38, oldProjection39] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6113 (0 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code46).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6113 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection250 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6113 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6113 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node38⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6113 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection38 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6113 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6113 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2866 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6113 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection39 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6113 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection39 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2866 hH))).trans (oldProjectionSound39 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode2988).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6113 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2988).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6113 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection6113 ![reductionProjection250, oldProjection38, oldProjection39]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6114 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 12), (81, 48), (94, -16), (228, 48), (241, -16), (243, -16), (247, -16), (698, -80), (700, -32), (704, -32), (1059, -16), (1226, -16), (1227, -16), (1251, 3)]

def reductionPivot6114 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![2, -1, -1]]

theorem reductionSound6114 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode2989).moment H =
      Integer.Sparse.eval reductionProjection6114 (momentVector H) := by
  have heq : reductionPivot6114 = (fun u v => (normalNode2989).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2989).moment H = injectiveMoment H reductionPivot6114 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2989).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6114 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6114 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 240, 480, 480, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6114 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1138, oldProjection870, oldProjection535, oldProjection556, oldProjection560] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6114 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw494 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1138 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical494 hH))).trans (oldProjectionSound1138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6114 (1 : Fin 5)) = canonicalInput5801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection870 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection870 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5801 hH))).trans (oldProjectionSound870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6114 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2732 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection535 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2732 hH))).trans (oldProjectionSound535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6114 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node556⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection556 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6114 (4 : Fin 5)) = canonicalInput5824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection560 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6114 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5824 hH))).trans (oldProjectionSound560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2989).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6114 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2989).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6114 (j : Fin 5)))
      1 96 480 5 ![480, 240, 480, 480, 240] ![1, 2, 1, 1, 2] reductionProjection6114 ![oldProjection1138, oldProjection870, oldProjection535, oldProjection556, oldProjection560]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6115 : Integer.Sparse (Fin 1613) := [(81, -24), (94, 1), (229, -24), (683, -24), (700, 16), (1251, 1)]

def reductionPivot6115 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![-1, 2, -1], ![1, 2, -3], ![2, -2, 0]]

theorem reductionSound6115 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode3002).moment H =
      Integer.Sparse.eval reductionProjection6115 (momentVector H) := by
  have heq : reductionPivot6115 = (fun u v => (normalNode3002).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3002).moment H = injectiveMoment H reductionPivot6115 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3002).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6115 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6115 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 24, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6115 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection135, oldProjection105, oldProjection111, oldProjection160] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6115 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node135⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection135 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6115 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2673 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection105 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2673 hH))).trans (oldProjectionSound105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6115 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2693 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2693 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6115 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6115 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3002).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6115 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3002).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6115 (j : Fin 4)))
      2 48 48 2 ![1, 24, 1, 1] ![48, 2, 48, 48] reductionProjection6115 ![oldProjection135, oldProjection105, oldProjection111, oldProjection160]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6116 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (42, -80), (81, 240), (90, -80), (94, -55), (229, 240), (243, -80), (244, -80), (683, 240), (698, -400), (700, -560), (701, -240), (704, -320), (1059, -160), (1251, -40)]

def reductionPivot6116 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, -1, 1], ![0, 1, -1], ![1, 2, -3], ![2, -2, 0]]

theorem reductionSound6116 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode2990).moment H =
      Integer.Sparse.eval reductionProjection6116 (momentVector H) := by
  have heq : reductionPivot6116 = (fun u v => (normalNode2990).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2990).moment H = injectiveMoment H reductionPivot6116 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2990).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6116 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6116 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 24, 48, 6, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6116 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection336, oldProjection527, reductionProjection6115, oldProjection557, oldProjection559] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6116 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node336⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection336 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6116 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node527⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection527 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6116 (2 : Fin 5)) = canonicalInput5821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6115 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5821 hH))).trans (reductionSound6115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6116 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node557⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection557 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection557 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6116 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2749 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection559 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6116 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2749 hH))).trans (oldProjectionSound559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2990).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6116 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2990).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6116 (j : Fin 5)))
      1 480 480 1 ![48, 24, 48, 6, 480] ![10, 20, 10, 80, 1] reductionProjection6116 ![oldProjection336, oldProjection527, reductionProjection6115, oldProjection557, oldProjection559]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6117 : Integer.Sparse (Fin 1613) := [(76, -1), (230, -1), (682, -1), (684, -1)]

def reductionPivot6117 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, -1, 3], ![-1, 2, -1], ![1, -3, 2], ![2, 1, -3]]

theorem reductionSound6117 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3004).moment H =
      Integer.Sparse.eval reductionProjection6117 (momentVector H) := by
  have heq : reductionPivot6117 = (fun u v => (normalNode3004).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3004).moment H = injectiveMoment H reductionPivot6117 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3004).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6117 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6117 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6117 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection103, reductionProjection94, oldProjection159, reductionProjection1710] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6117 (0 : Fin 4)) = canonicalInput9271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9271 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6117 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code684).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection94 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection94 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound94 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6117 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6117 (3 : Fin 4)) = canonicalInput5805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1710 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6117 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5805 hH))).trans (reductionSound1710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3004).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6117 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3004).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6117 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6117 ![oldProjection103, reductionProjection94, oldProjection159, reductionProjection1710]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6118 : Integer.Sparse (Fin 1613) := [(94, 1), (240, -24), (696, -24), (697, -24), (698, 8), (704, 8), (1251, 1)]

def reductionPivot6118 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![0, 2, -2], ![1, -2, 1], ![1, 2, -3]]

theorem reductionSound6118 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode3026).moment H =
      Integer.Sparse.eval reductionProjection6118 (momentVector H) := by
  have heq : reductionPivot6118 = (fun u v => (normalNode3026).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3026).moment H = injectiveMoment H reductionPivot6118 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3026).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6118 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6118 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 24, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6118 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection152, oldProjection180, oldProjection183, oldProjection184] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6118 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection152 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6118 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection180 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6118 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection183 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6118 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6118 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3026).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6118 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3026).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6118 (j : Fin 4)))
      2 48 48 2 ![1, 24, 1, 1] ![48, 2, 48, 48] reductionProjection6118 ![oldProjection152, oldProjection180, oldProjection183, oldProjection184]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6119 : Integer.Sparse (Fin 1613) := [(19, 8), (37, 96), (55, 48), (76, 48), (94, 1), (104, -16), (230, 48), (240, 48), (241, -32), (243, -16), (682, 96), (684, 48), (690, 96), (696, 48), (697, 96), (698, -32), (704, -16), (1052, 48), (1226, -16), (1251, 5)]

def reductionPivot6119 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, -1, 1], ![0, 2, -2], ![1, -2, 1], ![2, 1, -3]]

theorem reductionSound6119 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode2991).moment H =
      Integer.Sparse.eval reductionProjection6119 (momentVector H) := by
  have heq : reductionPivot6119 = (fun u v => (normalNode2991).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2991).moment H = injectiveMoment H reductionPivot6119 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2991).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6119 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6119 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 2, 2, 12, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6119 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection337, oldProjection528, reductionProjection6117, oldProjection541, reductionProjection6118] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6119 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node337⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection337 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6119 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node528⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection528 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection528 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6119 (2 : Fin 5)) = canonicalInput5822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6117 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6117 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5822 hH))).trans (reductionSound6117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6119 (3 : Fin 5)) = canonicalInput5825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection541 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5825 hH))).trans (oldProjectionSound541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6119 (4 : Fin 5)) = (normalNode3026).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6118 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6119 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2991).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6119 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2991).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6119 (j : Fin 5)))
      1 96 96 1 ![96, 2, 2, 12, 48] ![1, 48, 48, 8, 2] reductionProjection6119 ![oldProjection337, oldProjection528, reductionProjection6117, oldProjection541, reductionProjection6118]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6120 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -2), (42, -32), (94, 1), (243, -32), (244, -16), (700, -48), (701, -64), (704, -32), (1251, -5)]

def reductionPivot6120 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound6120 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode2992).moment H =
      Integer.Sparse.eval reductionProjection6120 (momentVector H) := by
  have heq : reductionPivot6120 = (fun u v => (normalNode2992).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2992).moment H = injectiveMoment H reductionPivot6120 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2992).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6120 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6120 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 48, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6120 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection324, oldProjection320, oldProjection173, oldProjection173, oldProjection565] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6120 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw503 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical503 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6120 (1 : Fin 5)) = canonicalInput5802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection320 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5802 hH))).trans (oldProjectionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6120 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2740 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2740 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6120 (3 : Fin 5)) = canonicalInput5828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection173 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5828 hH))).trans (oldProjectionSound173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6120 (4 : Fin 5)) = canonicalInput5829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection565 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6120 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection565 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5829 hH))).trans (oldProjectionSound565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2992).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6120 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2992).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6120 (j : Fin 5)))
      1 96 96 1 ![96, 96, 48, 48, 96] ![1, 1, 2, 2, 1] reductionProjection6120 ![oldProjection324, oldProjection320, oldProjection173, oldProjection173, oldProjection565]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6121 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 5), (76, 120), (94, 5), (241, -20), (243, -20), (682, 120), (697, 60), (698, -120), (704, -20), (1052, 60), (1221, 120), (1226, -80), (1227, -20), (1251, 5)]

def reductionPivot6121 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, 1, -1], ![0, 1, -1], ![1, -2, 1], ![2, 0, -2]]

theorem reductionSound6121 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * (normalNode2993).moment H =
      Integer.Sparse.eval reductionProjection6121 (momentVector H) := by
  have heq : reductionPivot6121 = (fun u v => (normalNode2993).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2993).moment H = injectiveMoment H reductionPivot6121 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2993).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6121 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6121 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![12, 96, 96, 480, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6121 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection699, oldProjection536, oldProjection536, oldProjection555, oldProjection569] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6121 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw517 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection699 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical517 hH))).trans (oldProjectionSound699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6121 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node536⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection536 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6121 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2784 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection536 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2784 hH))).trans (oldProjectionSound536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6121 (3 : Fin 5)) = canonicalInput5833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection555 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5833 hH))).trans (oldProjectionSound555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6121 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node569⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection569 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6121 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2993).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6121 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2993).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6121 (j : Fin 5)))
      1 120 480 4 ![12, 96, 96, 480, 480] ![40, 5, 5, 1, 1] reductionProjection6121 ![oldProjection699, oldProjection536, oldProjection536, oldProjection555, oldProjection569]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6122 : Integer.Sparse (Fin 1613) := [(76, -3), (81, -3), (90, 1), (686, -3), (698, 1), (1226, 1)]

def reductionPivot6122 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, -1, 3], ![-1, 3, -2], ![1, -2, 1], ![2, -1, -1]]

theorem reductionSound6122 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode3007).moment H =
      Integer.Sparse.eval reductionProjection6122 (momentVector H) := by
  have heq : reductionPivot6122 = (fun u v => (normalNode3007).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3007).moment H = injectiveMoment H reductionPivot6122 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3007).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6122 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6122 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6122 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection111, oldProjection161, oldProjection109, oldProjection103] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6122 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3985 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3985 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6122 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6122 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2701 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2701 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6122 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6122 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2699 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3007).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6122 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3007).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6122 (j : Fin 4)))
      2 6 6 2 ![1, 1, 3, 1] ![6, 6, 2, 6] reductionProjection6122 ![oldProjection111, oldProjection161, oldProjection109, oldProjection103]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6123 : Integer.Sparse (Fin 1613) := [(0, 3), (58, 240), (76, 240), (81, 480), (90, -80), (94, -35), (241, -80), (243, -80), (681, -480), (686, 240), (697, 240), (698, -320), (700, -240), (704, -80), (1052, 240), (1059, -160), (1226, -80), (1251, 30)]

def reductionPivot6123 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, 1, -1], ![0, 2, -2], ![1, -2, 1], ![2, -1, -1]]

theorem reductionSound6123 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode2994).moment H =
      Integer.Sparse.eval reductionProjection6123 (momentVector H) := by
  have heq : reductionPivot6123 = (fun u v => (normalNode2994).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2994).moment H = injectiveMoment H reductionPivot6123 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2994).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6123 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6123 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 1, 6, 480, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6123 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection345, reductionProjection390, reductionProjection6122, oldProjection556, oldProjection572] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6123 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node345⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection345 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6123 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code681).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection390 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6123 (2 : Fin 5)) = canonicalInput5831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6122 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5831 hH))).trans (reductionSound6122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6123 (3 : Fin 5)) = canonicalInput5834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection556 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5834 hH))).trans (oldProjectionSound556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6123 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node572⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection572 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6123 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection572 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2994).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6123 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2994).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6123 (j : Fin 5)))
      1 480 480 1 ![48, 1, 6, 480, 240] ![10, 480, 80, 1, 2] reductionProjection6123 ![oldProjection345, reductionProjection390, reductionProjection6122, oldProjection556, oldProjection572]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6124 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 5), (81, 60), (94, -15), (243, -20), (247, -20), (682, 60), (697, 180), (698, -120), (700, -40), (704, -40), (1059, -20), (1219, 60), (1226, -20), (1227, -40), (1251, 5), (1389, 60)]

def reductionPivot6124 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound6124 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * (normalNode2995).moment H =
      Integer.Sparse.eval reductionProjection6124 (momentVector H) := by
  have heq : reductionPivot6124 = (fun u v => (normalNode2995).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2995).moment H = injectiveMoment H reductionPivot6124 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2995).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6124 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6124 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 2, 240, 480, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6124 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection697, oldProjection539, oldProjection560, oldProjection569, oldProjection572] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6124 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw531 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection697 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical531 hH))).trans (oldProjectionSound697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6124 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection539 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6124 (2 : Fin 5)) = canonicalInput5832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection560 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5832 hH))).trans (oldProjectionSound560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6124 (3 : Fin 5)) = canonicalInput5835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection569 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5835 hH))).trans (oldProjectionSound569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6124 (4 : Fin 5)) = canonicalInput5836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection572 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6124 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection572 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5836 hH))).trans (oldProjectionSound572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2995).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6124 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2995).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6124 (j : Fin 5)))
      1 120 480 4 ![480, 2, 240, 480, 240] ![1, 240, 2, 1, 2] reductionProjection6124 ![oldProjection697, oldProjection539, oldProjection560, oldProjection569, oldProjection572]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6125 : Integer.Sparse (Fin 1613) := [(42, 8), (90, 8), (94, 1), (683, -24), (698, 8), (700, 24), (701, 8), (704, 8), (1251, 1)]

def reductionPivot6125 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, 1, -1], ![1, 2, -3], ![2, -3, 1]]

theorem reductionSound6125 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode2996).moment H =
      Integer.Sparse.eval reductionProjection6125 (momentVector H) := by
  have heq : reductionPivot6125 = (fun u v => (normalNode2996).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2996).moment H = injectiveMoment H reductionPivot6125 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2996).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6125 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6125 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6125 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection95, oldProjection160, oldProjection178, oldProjection180] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6125 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6125 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6125 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node178⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection178 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6125 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2822 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection180 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6125 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2822 hH))).trans (oldProjectionSound180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2996).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6125 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2996).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6125 (j : Fin 4)))
      2 48 48 2 ![3, 1, 3, 24] ![16, 48, 16, 2] reductionProjection6125 ![oldProjection95, oldProjection160, oldProjection178, oldProjection180]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6126 : Integer.Sparse (Fin 1613) := [(58, -24), (94, 1), (243, 8), (686, -24), (698, 8), (700, 16), (704, 8), (1251, 1)]

def reductionPivot6126 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -1, 3], ![0, 3, -3], ![1, -2, 1], ![2, -1, -1]]

theorem reductionSound6126 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode2997).moment H =
      Integer.Sparse.eval reductionProjection6126 (momentVector H) := by
  have heq : reductionPivot6126 = (fun u v => (normalNode2997).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2997).moment H = injectiveMoment H reductionPivot6126 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2997).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6126 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6126 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6126 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection98, oldProjection161, oldProjection170, oldProjection187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6126 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection98 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection98 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound98 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6126 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6126 (2 : Fin 4)) = canonicalInput5838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection170 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5838 hH))).trans (oldProjectionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6126 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection187 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6126 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2997).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6126 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2997).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6126 (j : Fin 4)))
      2 48 48 2 ![1, 1, 3, 24] ![48, 48, 16, 2] reductionProjection6126 ![oldProjection98, oldProjection161, oldProjection170, oldProjection187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6127 : Integer.Sparse (Fin 1613) := [(19, 8), (76, 96), (94, 1), (227, 48), (230, 96), (243, -32), (682, 96), (684, 48), (698, -32), (704, -32), (1221, 48), (1226, -32), (1251, 5)]

def reductionPivot6127 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![-1, 2, -1], ![0, 1, -1], ![1, -2, 1], ![2, 1, -3]]

theorem reductionSound6127 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode3000).moment H =
      Integer.Sparse.eval reductionProjection6127 (momentVector H) := by
  have heq : reductionPivot6127 = (fun u v => (normalNode3000).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3000).moment H = injectiveMoment H reductionPivot6127 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3000).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6127 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6127 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 1, 2, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6127 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1711, oldProjection532, oldProjection159, reductionProjection6117, oldProjection536] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6127 (0 : Fin 5)) = (normalNode975).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1711 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6127 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node532⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection532 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6127 (2 : Fin 5)) = canonicalInput5804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5804 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6127 (3 : Fin 5)) = (normalNode3004).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6117 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6117 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6127 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node536⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection536 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6127 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3000).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6127 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3000).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6127 (j : Fin 5)))
      1 96 96 1 ![96, 96, 1, 2, 96] ![1, 1, 96, 48, 1] reductionProjection6127 ![reductionProjection1711, oldProjection532, oldProjection159, reductionProjection6117, oldProjection536]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6128 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (81, 120), (94, -20), (228, 60), (241, -20), (243, -20), (247, -20), (682, 60), (697, 60), (698, -140), (704, -20), (1226, -60), (1227, -40), (1251, 5), (1389, 60)]

def reductionPivot6128 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![-1, 2, -1], ![1, -1, 0], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound6128 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * (normalNode3001).moment H =
      Integer.Sparse.eval reductionProjection6128 (momentVector H) := by
  have heq : reductionPivot6128 = (fun u v => (normalNode3001).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3001).moment H = injectiveMoment H reductionPivot6128 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3001).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6128 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6128 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 480, 2, 480, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6128 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection419, oldProjection868, oldProjection539, oldProjection374, oldProjection708] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6128 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1348 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection419 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1348 hH))).trans (oldProjectionSound419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6128 (1 : Fin 5)) = canonicalInput5803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection868 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection868 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5803 hH))).trans (oldProjectionSound868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6128 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection539 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6128 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection374 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2689 hH))).trans (oldProjectionSound374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6128 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2690 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection708 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6128 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2690 hH))).trans (oldProjectionSound708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3001).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6128 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3001).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6128 (j : Fin 5)))
      1 120 480 4 ![480, 480, 2, 480, 480] ![1, 1, 240, 1, 1] reductionProjection6128 ![oldProjection419, oldProjection868, oldProjection539, oldProjection374, oldProjection708]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6129 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (81, 240), (90, -80), (94, -5), (681, -240), (682, 120), (686, 120), (698, -280), (1221, 240), (1226, -200), (1227, -120), (1251, 30), (1389, 120)]

def reductionPivot6129 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, -1, 3], ![-1, 2, -1], ![0, 1, -1], ![1, -2, 1], ![2, -1, -1]]

theorem reductionSound6129 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode3003).moment H =
      Integer.Sparse.eval reductionProjection6129 (momentVector H) := by
  have heq : reductionPivot6129 = (fun u v => (normalNode3003).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3003).moment H = injectiveMoment H reductionPivot6129 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3003).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6129 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6129 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 6, 1, 480, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6129 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection626, reductionProjection6122, reductionProjection390, oldProjection376, oldProjection536] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6129 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6129 (1 : Fin 5)) = (normalNode3007).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6122 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6129 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code681).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection390 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6129 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2681 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection376 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2681 hH))).trans (oldProjectionSound376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6129 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node536⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection536 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6129 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3003).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6129 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3003).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6129 (j : Fin 5)))
      1 240 480 2 ![480, 6, 1, 480, 96] ![1, 80, 480, 1, 5] reductionProjection6129 ![oldProjection626, reductionProjection6122, reductionProjection390, oldProjection376, oldProjection536]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6130 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -160), (81, 240), (88, -80), (90, -240), (91, -80), (94, -10), (231, 240), (243, -240), (244, -80), (683, 240), (698, -480), (700, -480), (701, -80), (704, -80), (1059, -160), (1226, -240), (1227, -80), (1251, 5)]

def reductionPivot6130 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![-1, 3, -2], ![0, 1, -1], ![1, 0, -1], ![2, -2, 0]]

theorem reductionSound6130 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode3005).moment H =
      Integer.Sparse.eval reductionProjection6130 (momentVector H) := by
  have heq : reductionPivot6130 = (fun u v => (normalNode3005).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3005).moment H = injectiveMoment H reductionPivot6130 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3005).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6130 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6130 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 480, 3, 6, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6130 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1716, oldProjection377, oldProjection107, oldProjection378, reductionProjection6125] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6130 (0 : Fin 5)) = (normalNode977).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1716 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6130 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2682 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection377 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2682 hH))).trans (oldProjectionSound377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6130 (2 : Fin 5)) = canonicalInput5806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection107 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5806 hH))).trans (oldProjectionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6130 (3 : Fin 5)) = canonicalInput5807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection378 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5807 hH))).trans (oldProjectionSound378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6130 (4 : Fin 5)) = canonicalInput5808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6125 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6130 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5808 hH))).trans (reductionSound6125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3005).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6130 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3005).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6130 (j : Fin 5)))
      1 480 480 1 ![6, 480, 3, 6, 48] ![80, 1, 160, 80, 10] reductionProjection6130 ![reductionProjection1716, oldProjection377, oldProjection107, oldProjection378, reductionProjection6125]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6131 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 60), (20, -5), (76, 480), (81, 240), (88, -80), (90, -160), (94, -50), (231, 240), (241, -160), (243, -160), (247, -80), (683, 480), (697, 480), (698, -400), (700, -80), (1226, -240), (1251, -5), (1323, 480)]

def reductionPivot6131 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![-1, 3, -2], ![1, -1, 0], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound6131 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode3006).moment H =
      Integer.Sparse.eval reductionProjection6131 (momentVector H) := by
  have heq : reductionPivot6131 = (fun u v => (normalNode3006).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3006).moment H = injectiveMoment H reductionPivot6131 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3006).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6131 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6131 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 480, 2, 2, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6131 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection427, oldProjection374, reductionProjection375, reductionProjection375, oldProjection372] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6131 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node427⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection427 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6131 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection374 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2689 hH))).trans (oldProjectionSound374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6131 (2 : Fin 5)) = (normalNode3008).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection375 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6131 (3 : Fin 5)) = canonicalInput5809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection375 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5809 hH))).trans (reductionSound375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6131 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2700 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection372 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6131 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2700 hH))).trans (oldProjectionSound372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3006).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6131 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3006).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6131 (j : Fin 5)))
      1 480 480 1 ![96, 480, 2, 2, 480] ![5, 1, 240, 240, 1] reductionProjection6131 ![oldProjection427, oldProjection374, reductionProjection375, reductionProjection375, oldProjection372]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6132 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (42, 16), (94, 4), (685, -48), (701, 32), (703, 16), (704, 32), (1251, 1)]

def reductionPivot6132 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, -1, 3], ![-1, 4, -3], ![1, -3, 2], ![1, 0, -1]]

theorem reductionSound6132 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode3013).moment H =
      Integer.Sparse.eval reductionProjection6132 (momentVector H) := by
  have heq : reductionPivot6132 = (fun u v => (normalNode3013).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3013).moment H = injectiveMoment H reductionPivot6132 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3013).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6132 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6132 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6132 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection245, oldProjection189, oldProjection158, reductionProjection6011] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6132 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6770 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6770 hH))).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6132 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node189⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection189 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6132 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2707 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection158 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2707 hH))).trans (oldProjectionSound158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6132 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code685).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6011 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6132 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3013).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6132 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3013).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6132 (j : Fin 4)))
      2 96 96 2 ![48, 48, 3, 1] ![2, 2, 32, 96] reductionProjection6132 ![oldProjection245, oldProjection189, oldProjection158, reductionProjection6011]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6133 : Integer.Sparse (Fin 1613) := [(78, -1), (686, -1), (692, -1), (1223, -1)]

def reductionPivot6133 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, -1, 3], ![-1, 4, -3], ![0, -2, 2], ![2, -1, -1]]

theorem reductionSound6133 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3010).moment H =
      Integer.Sparse.eval reductionProjection6133 (momentVector H) := by
  have heq : reductionPivot6133 = (fun u v => (normalNode3010).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3010).moment H = injectiveMoment H reductionPivot6133 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3010).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6133 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6133 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6133 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection225, oldProjection164, oldProjection161, reductionProjection422] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6133 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6769 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6769 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6133 (1 : Fin 4)) = canonicalInput5839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5839 hH))).trans (oldProjectionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6133 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection161 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6133 (3 : Fin 4)) = canonicalInput5813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6133 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5813 hH))).trans (reductionSound422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3010).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6133 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3010).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6133 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6133 ![oldProjection225, oldProjection164, oldProjection161, reductionProjection422]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6134 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -5), (42, -16), (78, 96), (94, -11), (104, -16), (243, -16), (685, 48), (686, 96), (691, 48), (692, 96), (700, -16), (701, -32), (703, -16), (704, -64), (1057, 48), (1223, 96), (1251, -6)]

def reductionPivot6134 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, -1, 3], ![-1, 4, -3], ![0, -2, 2], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound6134 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode3009).moment H =
      Integer.Sparse.eval reductionProjection6134 (momentVector H) := by
  have heq : reductionPivot6134 = (fun u v => (normalNode3009).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3009).moment H = injectiveMoment H reductionPivot6134 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3009).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot6134 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6134 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 96, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6134 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection877, oldProjection549, reductionProjection6132, reductionProjection6133, reductionProjection6133] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6134 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node877⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection877 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6134 (1 : Fin 5)) = canonicalInput5837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection549 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5837 hH))).trans (oldProjectionSound549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6134 (2 : Fin 5)) = (normalNode3013).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6132 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6134 (3 : Fin 5)) = canonicalInput5812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6133 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5812 hH))).trans (reductionSound6133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6134 (4 : Fin 5)) = (normalNode3010).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6133 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6134 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3009).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6134 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3009).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6134 (j : Fin 5)))
      1 96 96 1 ![96, 48, 96, 2, 2] ![1, 2, 1, 48, 48] reductionProjection6134 ![oldProjection877, oldProjection549, reductionProjection6132, reductionProjection6133, reductionProjection6133]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6135 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 180), (20, -35), (42, -240), (76, 240), (90, -80), (91, -80), (94, -100), (232, 240), (243, -320), (244, -160), (246, -80), (685, 240), (686, 480), (698, -160), (700, -320), (701, -320), (703, -80), (704, -560), (1251, -70)]

def reductionPivot6135 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![-1, 4, -3], ![1, -2, 1], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound6135 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode3011).moment H =
      Integer.Sparse.eval reductionProjection6135 (momentVector H) := by
  have heq : reductionPivot6135 = (fun u v => (normalNode3011).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3011).moment H = injectiveMoment H reductionPivot6135 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3011).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6135 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6135 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 480, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6135 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1713, oldProjection363, reductionProjection6132, oldProjection540, oldProjection540] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6135 (0 : Fin 5)) = (normalNode982).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1713 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6135 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2698 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection363 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2698 hH))).trans (oldProjectionSound363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6135 (2 : Fin 5)) = (normalNode3013).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6132 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6135 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node540⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection540 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6135 (4 : Fin 5)) = canonicalInput5814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection540 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6135 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5814 hH))).trans (oldProjectionSound540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3011).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6135 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3011).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6135 (j : Fin 5)))
      1 480 480 1 ![96, 480, 96, 96, 96] ![5, 1, 5, 5, 5] reductionProjection6135 ![reductionProjection1713, oldProjection363, reductionProjection6132, oldProjection540, oldProjection540]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6136 : Integer.Sparse (Fin 1613) := [(688, 1)]

theorem reductionSound6136 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code688).moment H =
      Integer.Sparse.eval reductionProjection6136 (momentVector H) := by
  have hc : coordinates (688 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code688) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6136, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6137 : Integer.Sparse (Fin 1613) := [(3, 4), (20, -1), (94, -1), (96, -16), (703, -16)]

def reductionPivot6137 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, 0, -1], ![-2, -1, 3], ![0, -3, 3], ![1, 4, -5]]

theorem reductionSound6137 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode3016).moment H =
      Integer.Sparse.eval reductionProjection6137 (momentVector H) := by
  have heq : reductionPivot6137 = (fun u v => (normalNode3016).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3016).moment H = injectiveMoment H reductionPivot6137 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3016).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot6137 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6137 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6137 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection49, oldProjection39, reductionProjection68] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6137 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6773 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6137 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6137 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6773 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6137 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node39⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6137 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection39 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6137 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection39 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound39 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6137 (2 : Fin 3)) = canonicalInput5817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6137 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection68 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6137 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection68 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5817 hH))).trans (reductionSound68 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode3016).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6137 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3016).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6137 (j : Fin 3)))
      3 48 48 3 ![16, 1, 1] ![3, 48, 48] reductionProjection6137 ![oldProjection49, oldProjection39, reductionProjection68]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6138 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 2), (94, -1), (96, 16), (104, 16), (105, 16), (243, 16), (688, -48), (703, 16), (704, 16), (1251, 1)]

def reductionPivot6138 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, -1, 3], ![0, -3, 3], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound6138 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode3014).moment H =
      Integer.Sparse.eval reductionProjection6138 (momentVector H) := by
  have heq : reductionPivot6138 = (fun u v => (normalNode3014).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3014).moment H = injectiveMoment H reductionPivot6138 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3014).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6138 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6138 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6138 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection195, oldProjection166, reductionProjection6136, reductionProjection6137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6138 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection195 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6138 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6138 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code688).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6138 (3 : Fin 4)) = (normalNode3016).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6137 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6138 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3014).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6138 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3014).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6138 (j : Fin 4)))
      2 96 96 2 ![48, 48, 1, 48] ![2, 2, 96, 2] reductionProjection6138 ![oldProjection195, oldProjection166, reductionProjection6136, reductionProjection6137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6139 : Integer.Sparse (Fin 1613) := [(687, 1)]

theorem reductionSound6139 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code687).moment H =
      Integer.Sparse.eval reductionProjection6139 (momentVector H) := by
  have hc : coordinates (687 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code687) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6139, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6140 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -1), (96, 2), (687, -6), (701, 2), (703, 4)]

def reductionPivot6140 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, -1, 3], ![0, -3, 3], ![0, 4, -4], ![1, 0, -1]]

theorem reductionSound6140 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode3015).moment H =
      Integer.Sparse.eval reductionProjection6140 (momentVector H) := by
  have heq : reductionPivot6140 = (fun u v => (normalNode3015).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3015).moment H = injectiveMoment H reductionPivot6140 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3015).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6140 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6140 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6140 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection278, oldProjection189, reductionProjection6137, reductionProjection6139] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6140 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node278⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection278 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6140 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2856 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection189 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2856 hH))).trans (oldProjectionSound189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6140 (2 : Fin 4)) = canonicalInput5816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6137 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5816 hH))).trans (reductionSound6137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6140 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code687).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6139 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6140 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3015).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6140 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3015).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6140 (j : Fin 4)))
      2 12 48 8 ![24, 48, 48, 1] ![2, 1, 1, 48] reductionProjection6140 ![oldProjection278, oldProjection189, reductionProjection6137, reductionProjection6139]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6141 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 80), (19, 180), (20, -25), (94, -60), (95, -80), (96, -80), (104, -240), (105, -80), (236, 240), (241, -160), (243, -160), (246, -80), (688, 240), (694, 240), (698, -80), (703, -160), (704, -240), (1251, -40)]

def reductionPivot6141 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound6141 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode3017).moment H =
      Integer.Sparse.eval reductionProjection6141 (momentVector H) := by
  have heq : reductionPivot6141 = (fun u v => (normalNode3017).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3017).moment H = injectiveMoment H reductionPivot6141 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3017).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6141 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6141 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 96, 48, 96, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6141 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1724, reductionProjection6138, oldProjection166, oldProjection543, oldProjection544] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6141 (0 : Fin 5)) = (normalNode987).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1724 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6141 (1 : Fin 5)) = (normalNode3014).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6138 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6141 (2 : Fin 5)) = canonicalInput5818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5818 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6141 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node543⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection543 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6141 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node544⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection544 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6141 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection544 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3017).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6141 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3017).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6141 (j : Fin 5)))
      1 480 480 1 ![48, 96, 48, 96, 480] ![10, 5, 10, 5, 1] reductionProjection6141 ![reductionProjection1724, reductionProjection6138, oldProjection166, oldProjection543, oldProjection544]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6142 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 8), (20, -3), (94, -5), (95, -8), (96, -8), (104, -24), (235, 24), (244, -8), (246, -16), (687, 24), (691, 24), (692, 48), (700, -8), (701, -24), (703, -32), (704, -32), (1251, -2)]

def reductionPivot6142 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, -1, 3], ![0, -2, 2], ![0, 4, -4], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound6142 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode3018).moment H =
      Integer.Sparse.eval reductionProjection6142 (momentVector H) := by
  have heq : reductionPivot6142 = (fun u v => (normalNode3018).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3018).moment H = injectiveMoment H reductionPivot6142 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3018).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6142 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6142 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 12, 48, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6142 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1730, reductionProjection6140, oldProjection549, oldProjection550, oldProjection550] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6142 (0 : Fin 5)) = (normalNode991).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1730 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6142 (1 : Fin 5)) = (normalNode3015).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6140 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6142 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node549⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection549 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6142 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node550⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection550 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6142 (4 : Fin 5)) = canonicalInput5819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection550 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6142 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5819 hH))).trans (oldProjectionSound550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3018).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6142 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3018).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6142 (j : Fin 5)))
      1 48 96 2 ![48, 12, 48, 96, 96] ![2, 8, 2, 1, 1] reductionProjection6142 ![reductionProjection1730, reductionProjection6140, oldProjection549, oldProjection550, oldProjection550]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6143 : Integer.Sparse (Fin 1613) := [(3, 1), (245, -2), (703, -2)]

def reductionPivot6143 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-2, -1, 3], ![0, 5, -5], ![1, -3, 2]]

theorem reductionSound6143 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode3031).moment H =
      Integer.Sparse.eval reductionProjection6143 (momentVector H) := by
  have heq : reductionPivot6143 = (fun u v => (normalNode3031).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3031).moment H = injectiveMoment H reductionPivot6143 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3031).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot6143 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6143 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![2, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6143 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection60, oldProjection39, reductionProjection121] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6143 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node60⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6143 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection60 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6143 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection60 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound60 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6143 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2866 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6143 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection39 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6143 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection39 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2866 hH))).trans (oldProjectionSound39 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6143 (2 : Fin 3)) = canonicalInput5840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6143 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection121 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6143 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound5840 hH))).trans (reductionSound121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode3031).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6143 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3031).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6143 (j : Fin 3)))
      3 6 6 3 ![2, 1, 1] ![3, 6, 6] reductionProjection6143 ![oldProjection60, oldProjection39, reductionProjection121]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

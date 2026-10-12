import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical128
import NoFourMUBs.Step2.SOS.Canonical137
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions009
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical110
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection320 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -1), (26, 8), (27, 4), (54, -12), (104, 8), (105, 4), (703, 8)]

def reductionPivot320 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, 0, 3], ![0, -2, 2], ![1, -1, 0], ![1, 4, -5]]

theorem reductionSound320 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode156).moment H =
      Integer.Sparse.eval reductionProjection320 (momentVector H) := by
  have heq : reductionPivot320 = (fun u v => (normalNode156).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode156).moment H = injectiveMoment H reductionPivot320 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode156).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot320 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot320 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![12, 3, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot320 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection165, reductionProjection318, reductionProjection319, oldProjection75] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot320 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection165 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot320 (1 : Fin 4)) = (normalNode175).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection318 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot320 (2 : Fin 4)) = canonicalInput587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection319 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound587 hH))).trans (reductionSound319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot320 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw478 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection75 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot320 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection75 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical478 hH))).trans (oldProjectionSound75 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode156).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot320 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode156).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot320 (j : Fin 4)))
      2 24 24 2 ![12, 3, 1, 3] ![2, 8, 24, 8] reductionProjection320 ![oldProjection165, reductionProjection318, reductionProjection319, oldProjection75]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection321 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 12), (20, -1), (26, -32), (27, -8), (40, 48), (42, -32), (54, 24), (77, 24), (88, -16), (91, -8), (94, -2), (104, -32), (105, -24), (241, -32), (243, -72), (700, -8), (701, -8), (703, -16), (704, -32), (1251, -3)]

def reductionPivot321 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 0, 3], ![0, -2, 2], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound321 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode155).moment H =
      Integer.Sparse.eval reductionProjection321 (momentVector H) := by
  have heq : reductionPivot321 = (fun u v => (normalNode155).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode155).moment H = injectiveMoment H reductionPivot321 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode155).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot321 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot321 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 24] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot321 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection359, oldProjection324, oldProjection309, oldProjection309, reductionProjection320] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot321 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node359⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection359 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot321 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw503 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical503 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot321 (2 : Fin 5)) = canonicalInput586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection309 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound586 hH))).trans (oldProjectionSound309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot321 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw476 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection309 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical476 hH))).trans (oldProjectionSound309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot321 (4 : Fin 5)) = (normalNode156).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection320 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot321 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode155).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot321 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode155).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot321 (j : Fin 5)))
      1 48 96 2 ![96, 96, 96, 96, 24] ![1, 1, 1, 1, 4] reductionProjection321 ![oldProjection359, oldProjection324, oldProjection309, oldProjection309, reductionProjection320]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection322 : Integer.Sparse (Fin 1613) := [(63, 1)]

theorem reductionSound322 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code63).moment H =
      Integer.Sparse.eval reductionProjection322 (momentVector H) := by
  have hc : coordinates (63 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code63) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection322, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection323 : Integer.Sparse (Fin 1613) := [(26, 1), (27, 1), (42, 1), (46, 1), (63, -3), (243, 1), (246, 1), (703, 2), (704, 1)]

def reductionPivot323 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![1, -2, 1], ![1, -1, 0], ![1, 4, -5]]

theorem reductionSound323 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode164).moment H =
      Integer.Sparse.eval reductionProjection323 (momentVector H) := by
  have heq : reductionPivot323 = (fun u v => (normalNode164).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode164).moment H = injectiveMoment H reductionPivot323 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode164).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot323 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot323 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot323 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection251, reductionProjection318, reductionProjection322, oldProjection87] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot323 (0 : Fin 4)) = (normalNode143).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection251 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot323 (1 : Fin 4)) = (normalNode175).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection318 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot323 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code63).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot323 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot323 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical574 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode164).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot323 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode164).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot323 (j : Fin 4)))
      2 6 6 2 ![3, 3, 1, 3] ![2, 2, 6, 2] reductionProjection323 ![reductionProjection251, reductionProjection318, reductionProjection322, oldProjection87]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection324 : Integer.Sparse (Fin 1613) := [(3, 16), (4, -1), (19, 20), (20, -5), (26, -64), (27, -48), (42, -64), (46, -64), (54, 48), (63, 96), (94, -3), (104, -32), (105, -16), (243, -64), (245, -16), (246, -64), (700, -16), (701, -32), (703, -128), (704, -64), (1251, -3)]

def reductionPivot324 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![1, 4, -5]]

theorem reductionSound324 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode157).moment H =
      Integer.Sparse.eval reductionProjection324 (momentVector H) := by
  have heq : reductionPivot324 = (fun u v => (normalNode157).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode157).moment H = injectiveMoment H reductionPivot324 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode157).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot324 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot324 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 24, 6, 6, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot324 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection261, reductionProjection320, reductionProjection323, reductionProjection323, oldProjection324] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot324 (0 : Fin 5)) = (normalNode120).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection261 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot324 (1 : Fin 5)) = (normalNode156).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection320 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot324 (2 : Fin 5)) = (normalNode164).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection323 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot324 (3 : Fin 5)) = canonicalInput591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection323 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound591 hH))).trans (reductionSound323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot324 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw503 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot324 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical503 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode157).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot324 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode157).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot324 (j : Fin 5)))
      1 96 96 1 ![96, 24, 6, 6, 96] ![1, 4, 16, 16, 1] reductionProjection324 ![reductionProjection261, reductionProjection320, reductionProjection323, reductionProjection323, oldProjection324]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection325 : Integer.Sparse (Fin 1613) := [(45, -3), (62, -3), (243, 1), (698, 1), (700, 1), (1219, -3)]

def reductionPivot325 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![1, -2, 1], ![1, 1, -2], ![1, 2, -3]]

theorem reductionSound325 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode165).moment H =
      Integer.Sparse.eval reductionProjection325 (momentVector H) := by
  have heq : reductionPivot325 = (fun u v => (normalNode165).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode165).moment H = injectiveMoment H reductionPivot325 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode165).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot325 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot325 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot325 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection89, oldProjection100, oldProjection170, oldProjection223] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot325 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot325 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot325 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw575 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection170 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical575 hH))).trans (oldProjectionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot325 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw576 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot325 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical576 hH))).trans (oldProjectionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode165).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot325 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode165).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot325 (j : Fin 4)))
      2 6 6 2 ![1, 1, 3, 1] ![6, 6, 2, 6] reductionProjection325 ![oldProjection89, oldProjection100, oldProjection170, oldProjection223]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection326 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 120), (20, -10), (45, 480), (62, 480), (94, -30), (104, -80), (108, -160), (243, -160), (247, -160), (691, 240), (694, 240), (698, -160), (700, -240), (704, -160), (1047, 240), (1219, 480), (1251, -55)]

def reductionPivot326 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![0, -1, 1], ![1, -1, 0], ![1, 1, -2], ![1, 2, -3]]

theorem reductionSound326 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode158).moment H =
      Integer.Sparse.eval reductionProjection326 (momentVector H) := by
  have heq : reductionPivot326 = (fun u v => (normalNode158).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode158).moment H = injectiveMoment H reductionPivot326 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode158).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot326 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot326 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 2, 6, 480, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot326 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection246, oldProjection332, reductionProjection325, oldProjection563, oldProjection1132] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot326 (0 : Fin 5)) = (normalNode121).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection246 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot326 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node332⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection332 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot326 (2 : Fin 5)) = (normalNode165).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection325 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection325 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot326 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw504 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection563 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical504 hH))).trans (oldProjectionSound563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot326 (4 : Fin 5)) = canonicalInput592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1132 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot326 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound592 hH))).trans (oldProjectionSound1132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode158).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot326 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode158).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot326 (j : Fin 5)))
      1 480 480 1 ![96, 2, 6, 480, 240] ![5, 240, 80, 1, 2] reductionProjection326 ![reductionProjection246, oldProjection332, reductionProjection325, oldProjection563, oldProjection1132]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection327 : Integer.Sparse (Fin 1613) := [(27, -1), (42, -1), (46, -1)]

def reductionPivot327 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![1, 4, -5], ![2, -3, 1]]

theorem reductionSound327 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode166).moment H =
      Integer.Sparse.eval reductionProjection327 (momentVector H) := by
  have heq : reductionPivot327 = (fun u v => (normalNode166).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode166).moment H = injectiveMoment H reductionPivot327 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode166).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot327 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot327 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot327 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection250, oldProjection18, reductionProjection113] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot327 (0 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code46).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot327 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection250 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot327 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot327 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw583 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot327 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection18 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot327 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical583 hH))).trans (oldProjectionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot327 (2 : Fin 3)) = canonicalInput606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot327 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection113 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot327 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound606 hH))).trans (reductionSound113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode166).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot327 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode166).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot327 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection327 ![reductionProjection250, oldProjection18, reductionProjection113]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection328 : Integer.Sparse (Fin 1613) := [(27, 1), (42, 2), (46, 2), (54, -3), (245, 1), (700, 1), (701, 2)]

def reductionPivot328 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![0, -1, 1], ![1, 4, -5], ![2, -2, 0]]

theorem reductionSound328 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode159).moment H =
      Integer.Sparse.eval reductionProjection328 (momentVector H) := by
  have heq : reductionPivot328 = (fun u v => (normalNode159).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode159).moment H = injectiveMoment H reductionPivot328 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode159).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot328 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot328 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot328 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection262, reductionProjection319, oldProjection88, reductionProjection327] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot328 (0 : Fin 4)) = (normalNode122).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection262 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot328 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code54).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection319 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot328 (2 : Fin 4)) = canonicalInput593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection88 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound593 hH))).trans (oldProjectionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot328 (3 : Fin 4)) = (normalNode166).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection327 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot328 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode159).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot328 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode159).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot328 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection328 ![reductionProjection262, reductionProjection319, oldProjection88, reductionProjection327]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection329 : Integer.Sparse (Fin 1613) := [(20, -1), (42, -32), (60, -32), (94, 3), (243, -48), (700, -48), (1251, 8)]

def reductionPivot329 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![3, -2, -1]]

theorem reductionSound329 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode160).moment H =
      Integer.Sparse.eval reductionProjection329 (momentVector H) := by
  have heq : reductionPivot329 = (fun u v => (normalNode160).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode160).moment H = injectiveMoment H reductionPivot329 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode160).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot329 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot329 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 48, 48, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot329 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection312, oldProjection188, oldProjection188, oldProjection188, oldProjection341] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot329 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node312⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection312 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot329 (1 : Fin 5)) = canonicalInput594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound594 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot329 (2 : Fin 5)) = canonicalInput596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound596 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot329 (3 : Fin 5)) = canonicalInput597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound597 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot329 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node341⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection341 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot329 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode160).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot329 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode160).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot329 (j : Fin 5)))
      1 96 96 1 ![96, 48, 48, 48, 48] ![1, 2, 2, 2, 2] reductionProjection329 ![oldProjection312, oldProjection188, oldProjection188, oldProjection188, oldProjection341]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection330 : Integer.Sparse (Fin 1613) := [(26, 2), (27, 1), (42, 2), (88, 1), (91, 1), (243, 3), (703, 1), (704, 1)]

def reductionPivot330 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 0, 3], ![1, -3, 2], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound330 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode170).moment H =
      Integer.Sparse.eval reductionProjection330 (momentVector H) := by
  have heq : reductionPivot330 = (fun u v => (normalNode170).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode170).moment H = injectiveMoment H reductionPivot330 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode170).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot330 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot330 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot330 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection113, oldProjection87, oldProjection79, reductionProjection318] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot330 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node113⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection113 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot330 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical574 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot330 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw570 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection79 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection79 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical570 hH))).trans (oldProjectionSound79 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot330 (3 : Fin 4)) = (normalNode175).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection318 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot330 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode170).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot330 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode170).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot330 (j : Fin 4)))
      2 6 6 2 ![3, 3, 3, 3] ![2, 2, 2, 2] reductionProjection330 ![oldProjection113, oldProjection87, oldProjection79, reductionProjection318]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection331 : Integer.Sparse (Fin 1613) := [(42, 2), (63, -3), (89, -3), (243, 2), (704, 2)]

def reductionPivot331 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 0, 3], ![1, -2, 1], ![1, -2, 1], ![1, 3, -4]]

theorem reductionSound331 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode171).moment H =
      Integer.Sparse.eval reductionProjection331 (momentVector H) := by
  have heq : reductionPivot331 = (fun u v => (normalNode171).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode171).moment H = injectiveMoment H reductionPivot331 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode171).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot331 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot331 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot331 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection115, oldProjection87, oldProjection87, reductionProjection322] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot331 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot331 (1 : Fin 4)) = canonicalInput604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound604 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot331 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical574 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot331 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code63).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot331 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode171).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot331 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode171).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot331 (j : Fin 4)))
      2 6 6 2 ![1, 3, 3, 1] ![6, 2, 2, 6] reductionProjection331 ![oldProjection115, oldProjection87, oldProjection87, reductionProjection322]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection332 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (26, -32), (27, -16), (42, -64), (46, -16), (63, 48), (88, -16), (89, 48), (90, -16), (91, -16), (94, -1), (243, -96), (246, -16), (698, -32), (700, -32), (701, -32), (703, -48), (704, -64), (1226, -16), (1251, -3)]

def reductionPivot332 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound332 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode161).moment H =
      Integer.Sparse.eval reductionProjection332 (momentVector H) := by
  have heq : reductionPivot332 = (fun u v => (normalNode161).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode161).moment H = injectiveMoment H reductionPivot332 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode161).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot332 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot332 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 3, 6, 6, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot332 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection252, oldProjection87, reductionProjection330, reductionProjection331, oldProjection349] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot332 (0 : Fin 5)) = (normalNode134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection252 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot332 (1 : Fin 5)) = canonicalInput595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound595 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot332 (2 : Fin 5)) = (normalNode170).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection330 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot332 (3 : Fin 5)) = (normalNode171).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection331 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot332 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node349⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection349 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot332 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode161).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot332 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode161).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot332 (j : Fin 5)))
      1 96 96 1 ![48, 3, 6, 6, 96] ![2, 32, 16, 16, 1] reductionProjection332 ![reductionProjection252, oldProjection87, reductionProjection330, reductionProjection331, oldProjection349]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection333 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 16), (38, 48), (56, 96), (94, -5), (241, -32), (243, -16), (247, -32), (697, 96), (698, -48), (700, -64), (1052, 96), (1059, -16), (1219, 96), (1251, -2)]

def reductionPivot333 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![0, 2, -2], ![1, -1, 0], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound333 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode162).moment H =
      Integer.Sparse.eval reductionProjection333 (momentVector H) := by
  have heq : reductionPivot333 = (fun u v => (normalNode162).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode162).moment H = injectiveMoment H reductionPivot333 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode162).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot333 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot333 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![24, 480, 2, 2, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot333 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection322, oldProjection1139, oldProjection351, oldProjection351, oldProjection663] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot333 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node322⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection322 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot333 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw534 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1139 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical534 hH))).trans (oldProjectionSound1139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot333 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node351⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection351 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot333 (3 : Fin 5)) = canonicalInput599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection351 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound599 hH))).trans (oldProjectionSound351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot333 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw551 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection663 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot333 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical551 hH))).trans (oldProjectionSound663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode162).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot333 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode162).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot333 (j : Fin 5)))
      1 96 480 5 ![24, 480, 2, 2, 480] ![20, 1, 240, 240, 1] reductionProjection333 ![oldProjection322, oldProjection1139, oldProjection351, oldProjection351, oldProjection663]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection334 : Integer.Sparse (Fin 1613) := [(19, 24), (20, -3), (42, -96), (44, -80), (60, -32), (61, 144), (94, -5), (243, -48), (244, -48), (700, -96), (701, -144), (704, -96), (1251, -6)]

def reductionPivot334 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, 0, 3], ![0, 4, -4], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0]]

theorem reductionSound334 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode163).moment H =
      Integer.Sparse.eval reductionProjection334 (momentVector H) := by
  have heq : reductionPivot334 = (fun u v => (normalNode163).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode163).moment H = injectiveMoment H reductionPivot334 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode163).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot334 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot334 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![24, 48, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot334 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5, oldProjection341, reductionProjection8, reductionProjection8, reductionProjection8] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot334 (0 : Fin 5)) = (normalNode140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound5 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot334 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw562 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection341 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical562 hH))).trans (oldProjectionSound341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot334 (2 : Fin 5)) = (normalNode173).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot334 (3 : Fin 5)) = canonicalInput600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound600 hH))).trans (reductionSound8 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot334 (4 : Fin 5)) = canonicalInput601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot334 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound601 hH))).trans (reductionSound8 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode163).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot334 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode163).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot334 (j : Fin 5)))
      1 96 96 1 ![24, 48, 96, 96, 96] ![4, 2, 1, 1, 1] reductionProjection334 ![reductionProjection5, oldProjection341, reductionProjection8, reductionProjection8, reductionProjection8]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection335 : Integer.Sparse (Fin 1613) := [(59, 1)]

theorem reductionSound335 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code59).moment H =
      Integer.Sparse.eval reductionProjection335 (momentVector H) := by
  have hc : coordinates (59 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code59) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection335, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection336 : Integer.Sparse (Fin 1613) := [(57, 1)]

theorem reductionSound336 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code57).moment H =
      Integer.Sparse.eval reductionProjection336 (momentVector H) := by
  have hc : coordinates (57 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code57) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection336, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection337 : Integer.Sparse (Fin 1613) := [(56, -1), (57, -1), (59, -1), (82, -1)]

def reductionPivot337 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 0, 3], ![0, 2, -2], ![1, 1, -2], ![2, -4, 2]]

theorem reductionSound337 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode169).moment H =
      Integer.Sparse.eval reductionProjection337 (momentVector H) := by
  have heq : reductionPivot337 = (fun u v => (normalNode169).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode169).moment H = injectiveMoment H reductionPivot337 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode169).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot337 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot337 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot337 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection112, reductionProjection335, reductionProjection336, oldProjection97] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot337 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection112 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot337 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code59).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection335 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot337 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code57).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot337 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot337 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode169).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot337 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode169).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot337 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection337 ![oldProjection112, reductionProjection335, reductionProjection336, oldProjection97]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection338 : Integer.Sparse (Fin 1613) := [(27, -1), (42, -1), (91, -1)]

def reductionPivot338 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 0, 3], ![1, 3, -4], ![2, -4, 2]]

theorem reductionSound338 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode172).moment H =
      Integer.Sparse.eval reductionProjection338 (momentVector H) := by
  have heq : reductionPivot338 = (fun u v => (normalNode172).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode172).moment H = injectiveMoment H reductionPivot338 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode172).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot338 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot338 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot338 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection22, reductionProjection113, oldProjection18] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot338 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node22⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot338 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection22 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot338 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection22 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound22 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot338 (1 : Fin 3)) = canonicalInput606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot338 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection113 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot338 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound606 hH))).trans (reductionSound113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot338 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw583 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot338 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection18 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot338 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical583 hH))).trans (oldProjectionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode172).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot338 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode172).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot338 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection338 ![oldProjection22, reductionProjection113, oldProjection18]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection339 : Integer.Sparse (Fin 1613) := [(27, 1), (42, 2), (57, -3), (88, 1), (90, 2), (91, 2), (700, 1)]

def reductionPivot339 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 0, 3], ![0, 1, -1], ![1, 2, -3], ![2, -4, 2]]

theorem reductionSound339 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode168).moment H =
      Integer.Sparse.eval reductionProjection339 (momentVector H) := by
  have heq : reductionPivot339 = (fun u v => (normalNode168).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode168).moment H = injectiveMoment H reductionPivot339 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode168).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot339 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot339 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot339 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection54, reductionProjection336, reductionProjection338, oldProjection95] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot339 (0 : Fin 4)) = (normalNode235).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot339 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code57).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot339 (2 : Fin 4)) = (normalNode172).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection338 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot339 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot339 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode168).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot339 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode168).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot339 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection339 ![reductionProjection54, reductionProjection336, reductionProjection338, oldProjection95]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection340 : Integer.Sparse (Fin 1613) := [(27, -8), (42, -24), (56, 72), (57, 72), (59, 48), (82, 72), (88, -24), (90, -48), (91, -24), (94, -1), (243, -8), (698, -24), (700, -24), (1226, -24), (1251, -1)]

def reductionPivot340 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, 0, 3], ![0, 1, -1], ![0, 1, -1], ![1, 1, -2], ![2, -4, 2]]

theorem reductionSound340 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode167).moment H =
      Integer.Sparse.eval reductionProjection340 (momentVector H) := by
  have heq : reductionPivot340 = (fun u v => (normalNode167).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode167).moment H = injectiveMoment H reductionPivot340 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode167).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot340 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot340 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 2, 2, 6, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot340 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection61, reductionProjection337, reductionProjection337, reductionProjection339, oldProjection343] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot340 (0 : Fin 5)) = (normalNode224).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection61 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection61 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound61 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot340 (1 : Fin 5)) = canonicalInput598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection337 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound598 hH))).trans (reductionSound337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot340 (2 : Fin 5)) = (normalNode169).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection337 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot340 (3 : Fin 5)) = (normalNode168).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection339 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot340 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node343⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection343 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot340 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode167).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot340 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode167).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot340 (j : Fin 5)))
      1 48 48 1 ![6, 2, 2, 6, 48] ![8, 24, 24, 8, 1] reductionProjection340 ![reductionProjection61, reductionProjection337, reductionProjection337, reductionProjection339, oldProjection343]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection341 : Integer.Sparse (Fin 1613) := [(65, 1)]

theorem reductionSound341 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code65).moment H =
      Integer.Sparse.eval reductionProjection341 (momentVector H) := by
  have hc : coordinates (65 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code65) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection341, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection342 : Integer.Sparse (Fin 1613) := [(955, 1)]

theorem reductionSound342 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code955).moment H =
      Integer.Sparse.eval reductionProjection342 (momentVector H) := by
  have hc : coordinates (955 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code955) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection342, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection343 : Integer.Sparse (Fin 1613) := [(955, -1), (1004, -1), (1015, -1), (1024, -1)]

def reductionPivot343 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -3, 1, 1], ![1, 1, 1, -3]]

theorem reductionSound343 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4530).moment H =
      Integer.Sparse.eval reductionProjection343 (momentVector H) := by
  have heq : reductionPivot343 = (fun u v => (normalNode4530).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4530).moment H = injectiveMoment H reductionPivot343 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4530).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot343 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot343 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot343 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection342, reductionProjection289, oldProjection619, oldProjection616] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot343 (0 : Fin 4)) = canonicalInput10780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10780 hH))).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot343 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1024).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot343 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node619⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection619 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot343 (3 : Fin 4)) = canonicalInput8779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot343 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8779 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4530).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot343 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4530).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot343 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection343 ![reductionProjection342, reductionProjection289, oldProjection619, oldProjection616]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection344 : Integer.Sparse (Fin 1613) := [(426, -1), (1004, -1), (1015, -1), (1016, -1)]

def reductionPivot344 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 1, 1, -3]]

theorem reductionSound344 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4466).moment H =
      Integer.Sparse.eval reductionProjection344 (momentVector H) := by
  have heq : reductionPivot344 = (fun u v => (normalNode4466).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4466).moment H = injectiveMoment H reductionPivot344 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4466).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot344 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot344 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot344 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection473, oldProjection616, oldProjection619, oldProjection620] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot344 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3539 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3539 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot344 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot344 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node619⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection619 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot344 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node620⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection620 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot344 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection620 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4466).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot344 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4466).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot344 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection344 ![oldProjection473, oldProjection616, oldProjection619, oldProjection620]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection345 : Integer.Sparse (Fin 1613) := [(50, 1), (65, -2), (426, 2), (934, 2), (955, 1), (1004, 4), (1015, 2), (1016, 1), (1024, 2), (1203, 1)]

def reductionPivot345 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound345 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode176).moment H =
      Integer.Sparse.eval reductionProjection345 (momentVector H) := by
  have heq : reductionPivot345 = (fun u v => (normalNode176).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode176).moment H = injectiveMoment H reductionPivot345 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode176).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot345 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot345 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot345 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection293, reductionProjection315, reductionProjection341, reductionProjection343, reductionProjection344] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot345 (0 : Fin 5)) = canonicalInput500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection293 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound500 hH))).trans (reductionSound293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot345 (1 : Fin 5)) = canonicalInput660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection315 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound660 hH))).trans (reductionSound315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot345 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code65).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection341 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot345 (3 : Fin 5)) = canonicalInput670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection343 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound670 hH))).trans (reductionSound343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot345 (4 : Fin 5)) = canonicalInput671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection344 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot345 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound671 hH))).trans (reductionSound344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode176).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot345 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode176).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot345 (j : Fin 5)))
      1 2 2 1 ![2, 2, 1, 2, 2] ![1, 1, 2, 1, 1] reductionProjection345 ![reductionProjection293, reductionProjection315, reductionProjection341, reductionProjection343, reductionProjection344]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection346 : Integer.Sparse (Fin 1613) := [(426, -9), (698, -2), (955, -9), (1015, -9), (1226, -2), (1227, 1)]

def reductionPivot346 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound346 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4211).moment H =
      Integer.Sparse.eval reductionProjection346 (momentVector H) := by
  have heq : reductionPivot346 = (fun u v => (normalNode4211).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4211).moment H = injectiveMoment H reductionPivot346 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4211).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot346 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot346 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot346 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection945, oldProjection619, reductionProjection342, oldProjection473] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot346 (0 : Fin 4)) = canonicalInput20795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection945 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20795 hH))).trans (oldProjectionSound945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot346 (1 : Fin 4)) = canonicalInput8975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection619 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8975 hH))).trans (oldProjectionSound619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot346 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot346 (3 : Fin 4)) = canonicalInput8242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot346 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8242 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4211).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot346 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4211).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot346 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection346 ![oldProjection945, oldProjection619, reductionProjection342, oldProjection473]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection347 : Integer.Sparse (Fin 1613) := [(66, 1)]

theorem reductionSound347 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code66).moment H =
      Integer.Sparse.eval reductionProjection347 (momentVector H) := by
  have hc : coordinates (66 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code66) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection347, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection348 : Integer.Sparse (Fin 1613) := [(66, -1), (955, -1), (1024, -2)]

def reductionPivot348 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound348 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode181).moment H =
      Integer.Sparse.eval reductionProjection348 (momentVector H) := by
  have heq : reductionPivot348 = (fun u v => (normalNode181).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode181).moment H = injectiveMoment H reductionPivot348 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode181).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot348 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot348 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot348 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection342, reductionProjection347, reductionProjection289, reductionProjection289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot348 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot348 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code66).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection347 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot348 (2 : Fin 4)) = canonicalInput675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound675 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot348 (3 : Fin 4)) = canonicalInput672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot348 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound672 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode181).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot348 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode181).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot348 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection348 ![reductionProjection342, reductionProjection347, reductionProjection289, reductionProjection289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection349 : Integer.Sparse (Fin 1613) := [(64, 1)]

theorem reductionSound349 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code64).moment H =
      Integer.Sparse.eval reductionProjection349 (momentVector H) := by
  have hc : coordinates (64 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code64) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection349, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection350 : Integer.Sparse (Fin 1613) := [(426, -1), (1004, -1), (1024, -1), (1198, -1)]

def reductionPivot350 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, -3, 1, 1], ![1, 0, -2, 1]]

theorem reductionSound350 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4554).moment H =
      Integer.Sparse.eval reductionProjection350 (momentVector H) := by
  have heq : reductionPivot350 = (fun u v => (normalNode4554).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4554).moment H = injectiveMoment H reductionPivot350 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4554).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot350 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot350 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot350 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection616, reductionProjection156, oldProjection473, reductionProjection289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot350 (0 : Fin 4)) = canonicalInput10810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10810 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot350 (1 : Fin 4)) = canonicalInput8943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection156 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8943 hH))).trans (reductionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot350 (2 : Fin 4)) = canonicalInput8923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8923 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot350 (3 : Fin 4)) = canonicalInput8921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot350 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8921 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4554).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot350 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4554).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot350 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection350 ![oldProjection616, reductionProjection156, oldProjection473, reductionProjection289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection351 : Integer.Sparse (Fin 1613) := [(64, -18), (66, 9), (426, 18), (698, 2), (955, 27), (1004, 18), (1015, 18), (1024, 36), (1198, 9), (1226, 2), (1227, -1)]

def reductionPivot351 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-3, 1, 1, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound351 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode177).moment H =
      Integer.Sparse.eval reductionProjection351 (momentVector H) := by
  have heq : reductionPivot351 = (fun u v => (normalNode177).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode177).moment H = injectiveMoment H reductionPivot351 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode177).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot351 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot351 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 2, 2, 1, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot351 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection346, reductionProjection348, reductionProjection343, reductionProjection349, reductionProjection350] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot351 (0 : Fin 5)) = (normalNode4211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot351 (1 : Fin 5)) = canonicalInput695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection348 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound695 hH))).trans (reductionSound348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot351 (2 : Fin 5)) = canonicalInput669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection343 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound669 hH))).trans (reductionSound343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot351 (3 : Fin 5)) = canonicalInput664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection349 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound664 hH))).trans (reductionSound349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot351 (4 : Fin 5)) = canonicalInput663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection350 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot351 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound663 hH))).trans (reductionSound350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode177).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot351 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode177).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot351 (j : Fin 5)))
      1 18 18 1 ![18, 2, 2, 1, 2] ![1, 9, 9, 18, 9] reductionProjection351 ![reductionProjection346, reductionProjection348, reductionProjection343, reductionProjection349, reductionProjection350]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

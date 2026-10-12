import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical062
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical065
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical117
import NoFourMUBs.Step2.SOS.Canonical118
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions101
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical224
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical59
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical60
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical61
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical66
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection4448 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 20), (56, -60), (76, -120), (79, -120), (81, -180), (84, -60), (87, -60), (88, 20), (90, 100), (94, 10), (243, 40), (432, 180), (441, 180), (682, -60), (697, -60), (698, 220), (700, 80), (704, 20), (763, 360), (768, 180), (782, 180), (919, 180), (1058, -120), (1226, 160), (1227, 80), (1251, -5), (1389, -60)]

def reductionPivot4448 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound4448 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode1846).moment H =
      Integer.Sparse.eval reductionProjection4448 (momentVector H) := by
  have heq : reductionPivot4448 = (fun u v => (normalNode1846).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1846).moment H = injectiveMoment H reductionPivot4448 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1846).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4448 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4448 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 18, 1440, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4448 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4445, reductionProjection4447, oldProjection1951, reductionProjection4278, reductionProjection302] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4448 (0 : Fin 5)) = canonicalInput4892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4445 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4892 hH))).trans (reductionSound4445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4448 (1 : Fin 5)) = (normalNode1904).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4447 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4448 (2 : Fin 5)) = canonicalInput3853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3853 hH))).trans (oldProjectionSound1951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4448 (3 : Fin 5)) = (normalNode1869).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4278 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4448 (4 : Fin 5)) = canonicalInput3849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4448 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3849 hH))).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1846).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4448 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1846).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4448 (j : Fin 5)))
      1 360 1440 4 ![720, 18, 1440, 18, 1440] ![2, 80, 1, 80, 1] reductionProjection4448 ![reductionProjection4445, reductionProjection4447, oldProjection1951, reductionProjection4278, reductionProjection302]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4449 : Integer.Sparse (Fin 1613) := [(433, -1), (434, -1), (446, -1), (669, -1)]

def reductionPivot4449 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound4449 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1852).moment H =
      Integer.Sparse.eval reductionProjection4449 (momentVector H) := by
  have heq : reductionPivot4449 = (fun u v => (normalNode1852).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1852).moment H = injectiveMoment H reductionPivot4449 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1852).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4449 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4449 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4449 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection522, reductionProjection4118, oldProjection477, oldProjection476] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4449 (0 : Fin 4)) = canonicalInput4901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection522 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4901 hH))).trans (oldProjectionSound522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4449 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code446).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4449 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4449 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4449 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1852).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4449 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1852).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4449 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection4449 ![oldProjection522, reductionProjection4118, oldProjection477, oldProjection476]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4450 : Integer.Sparse (Fin 1613) := [(422, 1)]

theorem reductionSound4450 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code422).moment H =
      Integer.Sparse.eval reductionProjection4450 (momentVector H) := by
  have hc : coordinates (422 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code422) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4450, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4451 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 480), (94, -15), (432, -720), (565, -720), (698, -160), (1058, 240), (1227, -80), (1251, -5), (1389, 240)]

def reductionPivot4451 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound4451 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1860).moment H =
      Integer.Sparse.eval reductionProjection4451 (momentVector H) := by
  have heq : reductionPivot4451 = (fun u v => (normalNode1860).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1860).moment H = injectiveMoment H reductionPivot4451 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1860).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4451 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4451 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4451 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, oldProjection943, oldProjection944, reductionProjection150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4451 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3080 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3080 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4451 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1935 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1935 hH))).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4451 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1794 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection944 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1794 hH))).trans (oldProjectionSound944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4451 (3 : Fin 4)) = canonicalInput3857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4451 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3857 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1860).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4451 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1860).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4451 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 720, 1] ![1440, 2, 2, 1440] reductionProjection4451 ![oldProjection505, oldProjection943, oldProjection944, reductionProjection150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4452 : Integer.Sparse (Fin 1613) := [(0, 9), (81, -960), (94, 170), (422, -1440), (432, 720), (434, 720), (549, 720), (565, 1440), (698, 880), (1058, -480), (1226, 160), (1227, 320), (1251, -135), (1389, -480)]

def reductionPivot4452 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound4452 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1854).moment H =
      Integer.Sparse.eval reductionProjection4452 (momentVector H) := by
  have heq : reductionPivot4452 = (fun u v => (normalNode1854).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1854).moment H = injectiveMoment H reductionPivot4452 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1854).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4452 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4452 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 360, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4452 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1942, oldProjection1683, reductionProjection4450, oldProjection1649, reductionProjection4451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4452 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1942 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4452 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1683 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4452 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code422).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4450 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4452 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4452 (4 : Fin 5)) = (normalNode1860).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4451 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4452 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1854).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4452 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1854).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4452 (j : Fin 5)))
      1 1440 1440 1 ![144, 360, 1, 1440, 1440] ![10, 4, 1440, 1, 1] reductionProjection4452 ![oldProjection1942, oldProjection1683, reductionProjection4450, oldProjection1649, reductionProjection4451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4453 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (81, -720), (94, 80), (241, 80), (247, 80), (423, 720), (431, 1440), (433, 2160), (697, -480), (698, 960), (700, 160), (1058, -480), (1226, 240), (1227, 320), (1251, -75)]

def reductionPivot4453 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound4453 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1855).moment H =
      Integer.Sparse.eval reductionProjection4453 (momentVector H) := by
  have heq : reductionPivot4453 = (fun u v => (normalNode1855).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1855).moment H = injectiveMoment H reductionPivot4453 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1855).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4453 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4453 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4453 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2719, oldProjection2425, reductionProjection4431, reductionProjection4329, oldProjection1648] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4453 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3070 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2719 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3070 hH))).trans (oldProjectionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4453 (1 : Fin 5)) = canonicalInput4006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2425 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4006 hH))).trans (oldProjectionSound2425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4453 (2 : Fin 5)) = (normalNode1867).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4431 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4453 (3 : Fin 5)) = canonicalInput3844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4329 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3844 hH))).trans (reductionSound4329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4453 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1648 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4453 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1855).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4453 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1855).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4453 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 144] ![1, 1, 1, 5, 10] reductionProjection4453 ![oldProjection2719, oldProjection2425, reductionProjection4431, reductionProjection4329, oldProjection1648]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4454 : Integer.Sparse (Fin 1613) := [(0, 11), (81, 240), (94, -65), (698, -480), (700, -160), (1059, -160), (1226, -80), (1251, 40)]

def reductionPivot4454 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -1, 2], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, -2, 1]]

theorem reductionSound4454 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10238).moment H =
      Integer.Sparse.eval reductionProjection4454 (momentVector H) := by
  have heq : reductionPivot4454 = (fun u v => (normalNode10238).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10238).moment H = injectiveMoment H reductionPivot4454 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10238).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4454 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4454 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4454 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1081, oldProjection1207, oldProjection1235, oldProjection1003] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4454 (0 : Fin 4)) = canonicalInput22738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1081 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1081 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22738 hH))).trans (oldProjectionSound1081 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4454 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7183 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1207 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7183 hH))).trans (oldProjectionSound1207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4454 (2 : Fin 4)) = canonicalInput20180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20180 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4454 (3 : Fin 4)) = canonicalInput20178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1003 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4454 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20178 hH))).trans (oldProjectionSound1003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10238).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4454 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10238).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4454 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 9, 720] ![10, 2, 160, 2] reductionProjection4454 ![oldProjection1081, oldProjection1207, oldProjection1235, oldProjection1003]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4455 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -180), (94, 35), (420, 360), (427, 180), (433, 360), (489, 360), (698, 220), (700, 80), (1058, -60), (1059, 80), (1226, 60), (1227, 40), (1251, -40), (1389, -120)]

def reductionPivot4455 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound4455 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode1856).moment H =
      Integer.Sparse.eval reductionProjection4455 (momentVector H) := by
  have heq : reductionPivot4455 = (fun u v => (normalNode1856).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1856).moment H = injectiveMoment H reductionPivot4455 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1856).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4455 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4455 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 360, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4455 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4454, oldProjection2424, oldProjection1657, reductionProjection4340, reductionProjection4340] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4455 (0 : Fin 5)) = canonicalInput6581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4454 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6581 hH))).trans (reductionSound4454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4455 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1915 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2424 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1915 hH))).trans (oldProjectionSound2424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4455 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1657⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1657 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4455 (3 : Fin 5)) = canonicalInput3846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3846 hH))).trans (reductionSound4340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4455 (4 : Fin 5)) = (normalNode1865).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4455 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1856).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4455 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1856).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4455 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 360, 1440, 1440] ![1, 1, 4, 1, 1] reductionProjection4455 ![reductionProjection4454, oldProjection2424, oldProjection1657, reductionProjection4340, reductionProjection4340]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4456 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (395, -720), (432, -720), (512, -720), (698, -80), (700, -80), (1219, 240), (1251, -10)]

def reductionPivot4456 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -3, 0], ![1, -1, 1, -1]]

theorem reductionSound4456 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1868).moment H =
      Integer.Sparse.eval reductionProjection4456 (momentVector H) := by
  have heq : reductionPivot4456 = (fun u v => (normalNode1868).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1868).moment H = injectiveMoment H reductionPivot4456 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1868).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot4456 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4456 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4456 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1352, reductionProjection4387, reductionProjection150, reductionProjection4078] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4456 (0 : Fin 4)) = canonicalInput17156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1352 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17156 hH))).trans (oldProjectionSound1352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4456 (1 : Fin 4)) = canonicalInput4229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4387 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4229 hH))).trans (reductionSound4387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4456 (2 : Fin 4)) = canonicalInput3860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3860 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4456 (3 : Fin 4)) = canonicalInput3848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4456 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3848 hH))).trans (reductionSound4078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1868).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4456 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1868).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4456 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection4456 ![oldProjection1352, reductionProjection4387, reductionProjection150, reductionProjection4078]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4457 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -720), (94, 30), (395, 720), (422, -1440), (423, 720), (432, 720), (433, 720), (512, 720), (565, 720), (698, 720), (700, 80), (775, 720), (808, 720), (1052, -480), (1055, -240), (1058, -240), (1059, 240), (1219, -240), (1221, -240), (1226, 80), (1227, 320), (1251, -115), (1389, -240)]

def reductionPivot4457 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound4457 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1858).moment H =
      Integer.Sparse.eval reductionProjection4457 (momentVector H) := by
  have heq : reductionPivot4457 = (fun u v => (normalNode1858).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1858).moment H = injectiveMoment H reductionPivot4457 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1858).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4457 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4457 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4457 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1944, oldProjection1688, reductionProjection4456, oldProjection1654, reductionProjection4450] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4457 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4457 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4457 (2 : Fin 5)) = (normalNode1868).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4456 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4457 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4457 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code422).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4450 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4457 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1858).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4457 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1858).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4457 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 1] ![1, 2, 1, 1, 1440] reductionProjection4457 ![oldProjection1944, oldProjection1688, reductionProjection4456, oldProjection1654, reductionProjection4450]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4458 : Integer.Sparse (Fin 1613) := [(58, 1), (81, 2), (420, -3), (431, -3), (487, -3)]

def reductionPivot4458 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound4458 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1864).moment H =
      Integer.Sparse.eval reductionProjection4458 (momentVector H) := by
  have heq : reductionPivot4458 = (fun u v => (normalNode1864).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1864).moment H = injectiveMoment H reductionPivot4458 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1864).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4458 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4458 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4458 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2390, reductionProjection4077, reductionProjection2388, reductionProjection2377] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4458 (0 : Fin 4)) = (normalNode6700).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2390 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4458 (1 : Fin 4)) = canonicalInput4205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4077 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4205 hH))).trans (reductionSound4077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4458 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code431).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2388 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4458 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code420).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4458 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1864).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4458 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1864).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4458 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection4458 ![reductionProjection2390, reductionProjection4077, reductionProjection2388, reductionProjection2377]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4459 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 80), (56, -480), (58, -240), (60, 80), (81, -240), (82, -240), (88, 80), (90, 320), (94, 15), (241, 160), (243, 320), (298, 720), (426, 720), (435, 720), (437, 1440), (438, 720), (698, 640), (700, 1120), (704, 80), (1052, -480), (1058, -240), (1059, 480), (1226, 240), (1227, 80), (1251, -50)]

def reductionPivot4459 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound4459 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1870).moment H =
      Integer.Sparse.eval reductionProjection4459 (momentVector H) := by
  have heq : reductionPivot4459 = (fun u v => (normalNode1870).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1870).moment H = injectiveMoment H reductionPivot4459 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1870).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4459 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4459 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1440, 1440, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4459 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2437, oldProjection1647, reductionProjection4416, reductionProjection4358, reductionProjection4422] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4459 (0 : Fin 5)) = (normalNode1316).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2437 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2437 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4459 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4459 (2 : Fin 5)) = (normalNode1878).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4416 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4459 (3 : Fin 5)) = (normalNode1883).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4358 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4459 (4 : Fin 5)) = (normalNode1886).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4422 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4459 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1870).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4459 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1870).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4459 (j : Fin 5)))
      1 1440 1440 1 ![18, 1440, 1440, 1440, 18] ![80, 1, 1, 1, 80] reductionProjection4459 ![reductionProjection2437, oldProjection1647, reductionProjection4416, reductionProjection4358, reductionProjection4422]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4460 : Integer.Sparse (Fin 1613) := [(42, -8), (56, 24), (60, -16), (94, -1), (439, -72), (698, -8), (700, -32), (701, -8), (1059, -16), (1251, -1)]

def reductionPivot4460 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, -3, 1]]

theorem reductionSound4460 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1892).moment H =
      Integer.Sparse.eval reductionProjection4460 (momentVector H) := by
  have heq : reductionPivot4460 = (fun u v => (normalNode1892).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1892).moment H = injectiveMoment H reductionPivot4460 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1892).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4460 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4460 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4460 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1191, reductionProjection4333, reductionProjection1336, reductionProjection4421] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4460 (0 : Fin 4)) = canonicalInput7558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1191 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7558 hH))).trans (oldProjectionSound1191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4460 (1 : Fin 4)) = canonicalInput4057.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4333 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4057 hH))).trans (reductionSound4333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4460 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code439).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4460 (3 : Fin 4)) = canonicalInput3867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4421 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4460 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3867 hH))).trans (reductionSound4421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1892).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4460 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1892).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4460 (j : Fin 4)))
      2 144 144 2 ![72, 9, 1, 9] ![2, 16, 144, 16] reductionProjection4460 ![oldProjection1191, reductionProjection4333, reductionProjection1336, reductionProjection4421]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4461 : Integer.Sparse (Fin 1613) := [(0, -2), (42, 120), (56, -360), (60, 160), (82, -120), (90, 160), (94, 5), (243, 80), (244, 40), (299, 360), (427, 360), (438, 720), (439, 360), (698, 560), (700, 800), (701, 80), (1058, -120), (1059, 200), (1251, -25)]

def reductionPivot4461 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0]]

theorem reductionSound4461 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1871).moment H =
      Integer.Sparse.eval reductionProjection4461 (momentVector H) := by
  have heq : reductionPivot4461 = (fun u v => (normalNode1871).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1871).moment H = injectiveMoment H reductionPivot4461 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1871).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4461 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4461 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 360, 18, 18, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4461 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2481, oldProjection1650, reductionProjection4422, reductionProjection4422, reductionProjection4460] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4461 (0 : Fin 5)) = (normalNode1323).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2481 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4461 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1650 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4461 (2 : Fin 5)) = (normalNode1886).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4422 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4461 (3 : Fin 5)) = canonicalInput3864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4422 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3864 hH))).trans (reductionSound4422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4461 (4 : Fin 5)) = (normalNode1892).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4460 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4461 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1871).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4461 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1871).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4461 (j : Fin 5)))
      1 720 720 1 ![18, 360, 18, 18, 144] ![40, 2, 40, 40, 5] reductionProjection4461 ![reductionProjection2481, oldProjection1650, reductionProjection4422, reductionProjection4422, reductionProjection4460]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4462 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -20), (20, 5), (42, 160), (56, -720), (58, -480), (60, 160), (81, -480), (82, -240), (90, 320), (94, 85), (243, 240), (302, 720), (433, 720), (445, 720), (446, 1440), (686, -240), (698, 1520), (700, 1920), (701, 80), (704, 320), (1058, -240), (1059, 720), (1226, 160), (1227, 80), (1251, -50)]

def reductionPivot4462 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound4462 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1872).moment H =
      Integer.Sparse.eval reductionProjection4462 (momentVector H) := by
  have heq : reductionPivot4462 = (fun u v => (normalNode1872).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1872).moment H = injectiveMoment H reductionPivot4462 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1872).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4462 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4462 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4462 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2275, oldProjection1653, reductionProjection4426, reductionProjection4127, reductionProjection4132] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4462 (0 : Fin 5)) = (normalNode1326).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2275 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4462 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1653 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4462 (2 : Fin 5)) = (normalNode1890).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4426 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4462 (3 : Fin 5)) = (normalNode1894).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4462 (4 : Fin 5)) = (normalNode1895).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4132 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4462 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1872).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4462 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1872).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4462 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection4462 ![reductionProjection2275, oldProjection1653, reductionProjection4426, reductionProjection4127, reductionProjection4132]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4463 : Integer.Sparse (Fin 1613) := [(0, -3), (40, -240), (56, -720), (58, -960), (81, -960), (82, -240), (90, 320), (94, 30), (243, 320), (297, 720), (423, 720), (436, 720), (437, 1440), (686, -480), (692, -240), (698, 720), (700, 800), (704, 160), (1052, -720), (1058, -240), (1059, 320), (1226, 320), (1227, 160), (1251, -15)]

def reductionPivot4463 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound4463 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1873).moment H =
      Integer.Sparse.eval reductionProjection4463 (momentVector H) := by
  have heq : reductionPivot4463 = (fun u v => (normalNode1873).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1873).moment H = injectiveMoment H reductionPivot4463 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1873).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4463 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4463 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1440, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4463 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2212, oldProjection1654, reductionProjection4138, reductionProjection3241, reductionProjection3241] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4463 (0 : Fin 5)) = (normalNode1329).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2212 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4463 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4463 (2 : Fin 5)) = (normalNode1896).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4138 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4463 (3 : Fin 5)) = (normalNode1898).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3241 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4463 (4 : Fin 5)) = canonicalInput3868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3241 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4463 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3868 hH))).trans (reductionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1873).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4463 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1873).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4463 (j : Fin 5)))
      1 1440 1440 1 ![18, 1440, 144, 1440, 1440] ![80, 1, 10, 1, 1] reductionProjection4463 ![reductionProjection2212, oldProjection1654, reductionProjection4138, reductionProjection3241, reductionProjection3241]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4464 : Integer.Sparse (Fin 1613) := [(0, -1), (56, -480), (58, -240), (81, -1200), (82, -240), (88, 80), (90, 320), (94, 40), (228, -240), (243, 240), (298, 720), (426, 720), (437, 720), (438, 1440), (444, 720), (506, 720), (686, -240), (698, 1200), (700, 160), (1052, -240), (1058, -240), (1059, 80), (1223, -240), (1225, 80), (1226, 720), (1227, 400), (1251, -55)]

def reductionPivot4464 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound4464 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1874).moment H =
      Integer.Sparse.eval reductionProjection4464 (momentVector H) := by
  have heq : reductionPivot4464 = (fun u v => (normalNode1874).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1874).moment H = injectiveMoment H reductionPivot4464 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1874).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4464 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4464 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 72, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4464 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2443, oldProjection1655, reductionProjection3241, reductionProjection4434, reductionProjection4144] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4464 (0 : Fin 5)) = (normalNode1330).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2443 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4464 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4464 (2 : Fin 5)) = (normalNode1898).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3241 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4464 (3 : Fin 5)) = (normalNode1899).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4434 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4434 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4464 (4 : Fin 5)) = (normalNode1900).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4144 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4464 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1874).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4464 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1874).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4464 (j : Fin 5)))
      1 1440 1440 1 ![18, 72, 1440, 288, 288] ![80, 20, 1, 5, 5] reductionProjection4464 ![reductionProjection2443, oldProjection1655, reductionProjection3241, reductionProjection4434, reductionProjection4144]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4465 : Integer.Sparse (Fin 1613) := [(76, 3), (243, -1), (439, -9), (444, -9), (508, -9), (698, -1), (1058, 3), (1226, -1)]

def reductionPivot4465 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound4465 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1901).moment H =
      Integer.Sparse.eval reductionProjection4465 (momentVector H) := by
  have heq : reductionPivot4465 = (fun u v => (normalNode1901).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1901).moment H = injectiveMoment H reductionPivot4465 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1901).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot4465 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4465 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4465 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection953, oldProjection496, reductionProjection1408, reductionProjection1336] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4465 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4465 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2125 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection496 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2125 hH))).trans (oldProjectionSound496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4465 (2 : Fin 4)) = canonicalInput3877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3877 hH))).trans (reductionSound1408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4465 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code439).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4465 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1901).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4465 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1901).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4465 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection4465 ![oldProjection953, oldProjection496, reductionProjection1408, reductionProjection1336]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4466 : Integer.Sparse (Fin 1613) := [(0, -4), (56, -240), (76, -480), (81, -480), (82, -240), (88, 160), (90, 160), (94, 45), (228, -480), (241, 240), (243, 320), (299, 720), (427, 720), (438, 720), (439, 1440), (444, 1440), (508, 1440), (698, 800), (1058, -720), (1226, 640), (1227, 320), (1251, -35)]

def reductionPivot4466 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound4466 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1875).moment H =
      Integer.Sparse.eval reductionProjection4466 (momentVector H) := by
  have heq : reductionPivot4466 = (fun u v => (normalNode1875).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1875).moment H = injectiveMoment H reductionPivot4466 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1875).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4466 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4466 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 360, 288, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4466 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2471, oldProjection1657, reductionProjection4144, reductionProjection4465, reductionProjection4465] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4466 (0 : Fin 5)) = (normalNode1332).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2471 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4466 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1657⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1657 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4466 (2 : Fin 5)) = (normalNode1900).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4144 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4466 (3 : Fin 5)) = (normalNode1901).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4465 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4466 (4 : Fin 5)) = canonicalInput3869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4465 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4466 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3869 hH))).trans (reductionSound4465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1875).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4466 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1875).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4466 (j : Fin 5)))
      1 1440 1440 1 ![18, 360, 288, 18, 18] ![80, 4, 5, 80, 80] reductionProjection4466 ![reductionProjection2471, oldProjection1657, reductionProjection4144, reductionProjection4465, reductionProjection4465]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4467 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -16), (40, -48), (56, -48), (58, -96), (76, -48), (81, -96), (90, 16), (94, 39), (104, 16), (241, 48), (243, 16), (435, 288), (436, 144), (446, 288), (485, 288), (691, -48), (698, 224), (700, 160), (704, 80), (1050, -48), (1052, -48), (1059, 48), (1251, 13)]

def reductionPivot4467 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound4467 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1876).moment H =
      Integer.Sparse.eval reductionProjection4467 (momentVector H) := by
  have heq : reductionPivot4467 = (fun u v => (normalNode1876).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1876).moment H = injectiveMoment H reductionPivot4467 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1876).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot4467 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4467 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4467 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2826, oldProjection2429, reductionProjection4138, reductionProjection4418, reductionProjection4418] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4467 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3087 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2826 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3087 hH))).trans (oldProjectionSound2826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4467 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1948 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2429 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2429 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1948 hH))).trans (oldProjectionSound2429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4467 (2 : Fin 5)) = (normalNode1896).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4138 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4467 (3 : Fin 5)) = canonicalInput3861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4418 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3861 hH))).trans (reductionSound4418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4467 (4 : Fin 5)) = (normalNode1880).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4418 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4467 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1876).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4467 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1876).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4467 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 144, 1440, 1440] ![1, 1, 10, 1, 1] reductionProjection4467 ![oldProjection2826, oldProjection2429, reductionProjection4138, reductionProjection4418, reductionProjection4418]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4468 : Integer.Sparse (Fin 1613) := [(19, 1), (81, 12), (94, -1), (241, -4), (243, -4), (698, -20), (700, -12), (1052, 12), (1059, -12), (1251, 4)]

def reductionPivot4468 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound4468 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9855).moment H =
      Integer.Sparse.eval reductionProjection4468 (momentVector H) := by
  have heq : reductionPivot4468 = (fun u v => (normalNode9855).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9855).moment H = injectiveMoment H reductionPivot4468 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9855).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4468 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4468 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4468 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection819, oldProjection1202, oldProjection1190, oldProjection802] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4468 (0 : Fin 4)) = canonicalInput22534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22534 hH))).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4468 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1202⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1202 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4468 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1190 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4468 (3 : Fin 4)) = canonicalInput19549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection802 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4468 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19549 hH))).trans (oldProjectionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9855).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4468 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9855).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4468 (j : Fin 4)))
      2 72 720 20 ![720, 720, 720, 360] ![1, 1, 1, 2] reductionProjection4468 ![oldProjection819, oldProjection1202, oldProjection1190, oldProjection802]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4469 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (94, -15), (435, -720), (445, -720), (484, -720), (698, -80), (1251, -20), (1323, 240)]

def reductionPivot4469 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound4469 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1879).moment H =
      Integer.Sparse.eval reductionProjection4469 (momentVector H) := by
  have heq : reductionPivot4469 = (fun u v => (normalNode1879).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1879).moment H = injectiveMoment H reductionPivot4469 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1879).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4469 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4469 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4469 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection948, oldProjection488, reductionProjection1104, reductionProjection4110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4469 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4469 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2122 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2122 hH))).trans (oldProjectionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4469 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code445).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4469 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code435).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4469 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1879).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4469 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1879).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4469 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection4469 ![oldProjection948, oldProjection488, reductionProjection1104, reductionProjection4110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4470 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -60), (20, 5), (42, 80), (56, -240), (58, -480), (60, 80), (76, -240), (81, -720), (90, 80), (94, 75), (241, 160), (243, 400), (435, 1440), (437, 720), (445, 720), (446, 720), (484, 720), (485, 720), (698, 880), (700, 880), (704, 160), (1052, -720), (1059, 320), (1226, 80), (1251, -20), (1323, -240)]

def reductionPivot4470 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound4470 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1877).moment H =
      Integer.Sparse.eval reductionProjection4470 (momentVector H) := by
  have heq : reductionPivot4470 = (fun u v => (normalNode1877).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1877).moment H = injectiveMoment H reductionPivot4470 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1877).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot4470 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4470 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4470 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4468, reductionProjection844, reductionProjection3241, reductionProjection4418, reductionProjection4469] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4470 (0 : Fin 5)) = canonicalInput7550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4468 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7550 hH))).trans (reductionSound4468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4470 (1 : Fin 5)) = canonicalInput4049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4049 hH))).trans (reductionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4470 (2 : Fin 5)) = (normalNode1898).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3241 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4470 (3 : Fin 5)) = canonicalInput3861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4418 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3861 hH))).trans (reductionSound4418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4470 (4 : Fin 5)) = (normalNode1879).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4469 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4470 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4469 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1877).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4470 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1877).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4470 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 1440, 1440, 1440] ![20, 1, 1, 1, 1] reductionProjection4470 ![reductionProjection4468, reductionProjection844, reductionProjection3241, reductionProjection4418, reductionProjection4469]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4471 : Integer.Sparse (Fin 1613) := [(56, 3), (90, -1), (435, -9), (437, -9), (446, -9), (698, -2), (700, -2), (1059, -1)]

def reductionPivot4471 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound4471 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1897).moment H =
      Integer.Sparse.eval reductionProjection4471 (momentVector H) := by
  have heq : reductionPivot4471 = (fun u v => (normalNode1897).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1897).moment H = injectiveMoment H reductionPivot4471 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1897).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4471 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4471 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4471 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4357, reductionProjection4110, reductionProjection4118, reductionProjection3240] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4471 (0 : Fin 4)) = (normalNode6713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4471 (1 : Fin 4)) = canonicalInput4213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4213 hH))).trans (reductionSound4110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4471 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code446).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4118 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4471 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code437).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3240 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4471 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1897).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4471 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1897).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4471 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection4471 ![reductionProjection4357, reductionProjection4110, reductionProjection4118, reductionProjection3240]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4472 : Integer.Sparse (Fin 1613) := [(42, -1), (56, 6), (76, 3), (81, 6), (84, 3), (90, -4), (698, -5), (700, -4), (1059, -2), (1226, -2)]

def reductionPivot4472 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]

theorem reductionSound4472 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1888).moment H =
      Integer.Sparse.eval reductionProjection4472 (momentVector H) := by
  have heq : reductionPivot4472 = (fun u v => (normalNode1888).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1888).moment H = injectiveMoment H reductionPivot4472 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1888).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4472 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4472 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4472 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection990, oldProjection1235, reductionProjection4126, reductionProjection4316] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4472 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3101 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection990 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection990 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3101 hH))).trans (oldProjectionSound990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4472 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1976 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1976 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4472 (2 : Fin 4)) = canonicalInput3871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3871 hH))).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4472 (3 : Fin 4)) = canonicalInput3870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4316 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4472 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3870 hH))).trans (reductionSound4316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1888).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4472 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1888).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4472 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection4472 ![oldProjection990, oldProjection1235, reductionProjection4126, reductionProjection4316]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4473 : Integer.Sparse (Fin 1613) := [(0, -17), (42, 80), (56, -960), (76, -480), (81, -960), (84, -240), (90, 800), (94, 120), (243, 80), (435, 720), (437, 720), (446, 1440), (698, 1600), (700, 1040), (1059, 560), (1226, 640), (1251, -55), (1323, -240)]

def reductionPivot4473 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound4473 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1881).moment H =
      Integer.Sparse.eval reductionProjection4473 (momentVector H) := by
  have heq : reductionPivot4473 = (fun u v => (normalNode1881).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1881).moment H = injectiveMoment H reductionPivot4473 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1881).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4473 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4473 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 18, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4473 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1946, oldProjection1698, reductionProjection4471, reductionProjection4360, reductionProjection4472] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4473 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4473 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1698⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1698 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4473 (2 : Fin 5)) = (normalNode1897).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4471 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4473 (3 : Fin 5)) = (normalNode1889).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4360 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4473 (4 : Fin 5)) = (normalNode1888).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4472 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4473 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1881).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4473 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1881).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4473 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 18, 1440, 18] ![1, 10, 80, 1, 80] reductionProjection4473 ![oldProjection1946, oldProjection1698, reductionProjection4471, reductionProjection4360, reductionProjection4472]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4474 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -20), (20, 5), (56, -720), (58, -480), (81, -480), (90, 480), (94, 65), (243, 160), (437, 720), (446, 1440), (698, 1200), (700, 1200), (704, 160), (1052, -240), (1059, 560), (1226, 400), (1251, -70)]

def reductionPivot4474 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound4474 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1882).moment H =
      Integer.Sparse.eval reductionProjection4474 (momentVector H) := by
  have heq : reductionPivot4474 = (fun u v => (normalNode1882).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1882).moment H = injectiveMoment H reductionPivot4474 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1882).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4474 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4474 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4474 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2698, oldProjection2428, reductionProjection3241, reductionProjection4426, reductionProjection4360] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4474 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3090 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2698 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3090 hH))).trans (oldProjectionSound2698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4474 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1956 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1956 hH))).trans (oldProjectionSound2428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4474 (2 : Fin 5)) = (normalNode1898).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3241 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4474 (3 : Fin 5)) = canonicalInput3862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4426 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3862 hH))).trans (reductionSound4426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4474 (4 : Fin 5)) = (normalNode1889).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4360 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4474 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1882).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4474 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1882).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4474 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection4474 ![oldProjection2698, oldProjection2428, reductionProjection3241, reductionProjection4426, reductionProjection4360]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4475 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 40), (56, -120), (58, -240), (60, 40), (76, -120), (81, -240), (90, 40), (94, 40), (243, 120), (438, 360), (444, 720), (445, 360), (446, 360), (506, 360), (697, -240), (698, 520), (700, 600), (704, 120), (1052, -120), (1059, 160), (1226, 80), (1227, 40), (1251, 15)]

def reductionPivot4475 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound4475 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1884).moment H =
      Integer.Sparse.eval reductionProjection4475 (momentVector H) := by
  have heq : reductionPivot4475 = (fun u v => (normalNode1884).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1884).moment H = injectiveMoment H reductionPivot4475 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1884).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4475 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4475 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4475 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2753, oldProjection2426, reductionProjection4434, reductionProjection4132, reductionProjection4428] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4475 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3093 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2753 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3093 hH))).trans (oldProjectionSound2753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4475 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1962 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2426 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1962 hH))).trans (oldProjectionSound2426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4475 (2 : Fin 5)) = (normalNode1899).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4434 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4434 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4475 (3 : Fin 5)) = canonicalInput3865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4132 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3865 hH))).trans (reductionSound4132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4475 (4 : Fin 5)) = (normalNode1893).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4475 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1884).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4475 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1884).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4475 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 288, 1440, 1440] ![1, 1, 5, 1, 1] reductionProjection4475 ![oldProjection2753, oldProjection2426, reductionProjection4434, reductionProjection4132, reductionProjection4428]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4476 : Integer.Sparse (Fin 1613) := [(0, -11), (56, -720), (60, 160), (81, -960), (90, 480), (94, 90), (438, 720), (446, 1440), (698, 1760), (700, 1280), (1059, 400), (1226, 480), (1227, 160), (1251, -35)]

def reductionPivot4476 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound4476 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1885).moment H =
      Integer.Sparse.eval reductionProjection4476 (momentVector H) := by
  have heq : reductionPivot4476 = (fun u v => (normalNode1885).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1885).moment H = injectiveMoment H reductionPivot4476 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1885).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4476 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4476 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4476 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2699, oldProjection2427, reductionProjection4144, reductionProjection4127, reductionProjection4127] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4476 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3094 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2699 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3094 hH))).trans (oldProjectionSound2699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4476 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1963 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2427 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1963 hH))).trans (oldProjectionSound2427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4476 (2 : Fin 5)) = (normalNode1900).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4144 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4476 (3 : Fin 5)) = canonicalInput3866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3866 hH))).trans (reductionSound4127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4476 (4 : Fin 5)) = (normalNode1894).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4127 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4476 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1885).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4476 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1885).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4476 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 288, 1440, 1440] ![5, 2, 5, 1, 1] reductionProjection4476 ![oldProjection2699, oldProjection2427, reductionProjection4144, reductionProjection4127, reductionProjection4127]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4477 : Integer.Sparse (Fin 1613) := [(42, 2), (60, 1), (90, 1), (700, -1)]

def reductionPivot4477 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, -1, 3, -2], ![0, 3, -3, 0]]

theorem reductionSound4477 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6717).moment H =
      Integer.Sparse.eval reductionProjection4477 (momentVector H) := by
  have heq : reductionPivot4477 = (fun u v => (normalNode6717).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6717).moment H = injectiveMoment H reductionPivot4477 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6717).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot4477 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4477 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4477 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection37, oldProjection92, oldProjection95] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4477 (0 : Fin 3)) = canonicalInput24111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4477 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection37 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4477 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection37 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24111 hH))).trans (oldProjectionSound37 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4477 (1 : Fin 3)) = canonicalInput13547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4477 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection92 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4477 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection92 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13547 hH))).trans (oldProjectionSound92 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4477 (2 : Fin 3)) = canonicalInput13504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4477 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4477 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13504 hH))).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6717).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4477 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6717).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4477 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection4477 ![oldProjection37, oldProjection92, oldProjection95]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4478 : Integer.Sparse (Fin 1613) := [(42, -32), (53, 48), (56, 48), (58, 48), (60, -16), (84, 48), (90, -16), (94, 1), (243, -16), (440, -144), (698, -16), (700, -16), (1251, -3)]

def reductionPivot4478 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 3, -3, 0], ![1, 0, 0, -1]]

theorem reductionSound4478 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1902).moment H =
      Integer.Sparse.eval reductionProjection4478 (momentVector H) := by
  have heq : reductionPivot4478 = (fun u v => (normalNode1902).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1902).moment H = injectiveMoment H reductionPivot4478 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1902).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4478 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4478 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4478 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4477, reductionProjection4121, reductionProjection3239, reductionProjection4365] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4478 (0 : Fin 4)) = (normalNode6717).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4477 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4478 (1 : Fin 4)) = canonicalInput4216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4121 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4216 hH))).trans (reductionSound4121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4478 (2 : Fin 4)) = canonicalInput3875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3239 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3875 hH))).trans (reductionSound3239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4478 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code440).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4478 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1902).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4478 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1902).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4478 (j : Fin 4)))
      2 288 288 2 ![9, 144, 72, 1] ![32, 2, 4, 288] reductionProjection4478 ![reductionProjection4477, reductionProjection4121, reductionProjection3239, reductionProjection4365]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4479 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 32), (53, -48), (56, -144), (58, -96), (60, 16), (76, -48), (81, -96), (84, -48), (90, 80), (94, 8), (241, 16), (243, 48), (427, 144), (435, 144), (437, 288), (440, 144), (446, 144), (691, -48), (698, 160), (700, 208), (704, 16), (781, 144), (1052, -96), (1059, 64), (1226, 32), (1251, -7)]

def reductionPivot4479 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound4479 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1887).moment H =
      Integer.Sparse.eval reductionProjection4479 (momentVector H) := by
  have heq : reductionPivot4479 = (fun u v => (normalNode1887).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1887).moment H = injectiveMoment H reductionPivot4479 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1887).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4479 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4479 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4479 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1949, oldProjection1702, reductionProjection4478, reductionProjection3241, reductionProjection4471] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4479 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1949⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1949 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4479 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1702⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4479 (2 : Fin 5)) = (normalNode1902).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4478 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4479 (3 : Fin 5)) = (normalNode1898).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3241 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4479 (4 : Fin 5)) = (normalNode1897).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4471 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4479 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1887).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4479 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1887).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4479 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 288, 1440, 18] ![1, 1, 5, 1, 80] reductionProjection4479 ![oldProjection1949, oldProjection1702, reductionProjection4478, reductionProjection3241, reductionProjection4471]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

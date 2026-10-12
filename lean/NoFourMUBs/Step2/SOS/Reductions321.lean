import NoFourMUBs.Step2.SOS.Canonical196
import NoFourMUBs.Step2.SOS.Canonical210
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions130
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions140
import NoFourMUBs.Step2.SOS.Reductions141
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions320
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical176
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical177
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical181
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10272 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -80), (20, 20), (42, 160), (90, 320), (94, 85), (243, 320), (698, 1680), (700, 640), (701, 80), (704, 320), (1059, 320), (1226, 640), (1227, 480), (1251, -190)]

def reductionPivot10272 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound10272 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6689).moment H =
      Integer.Sparse.eval reductionProjection10272 (momentVector H) := by
  have heq : reductionPivot10272 = (fun u v => (normalNode6689).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6689).moment H = injectiveMoment H reductionPivot10272 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6689).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10272 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10272 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10272 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9772, reductionProjection10271, reductionProjection10271, oldProjection967, oldProjection2419] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10272 (0 : Fin 5)) = (normalNode6103).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9772 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9772 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9772 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10272 (1 : Fin 5)) = (normalNode6695).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10271 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10272 (2 : Fin 5)) = canonicalInput13516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10271 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13516 hH))).trans (reductionSound10271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10272 (3 : Fin 5)) = canonicalInput13518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection967 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13518 hH))).trans (oldProjectionSound967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10272 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2419⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2419 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10272 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6689).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10272 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6689).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10272 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 720, 1440] ![1, 5, 5, 2, 1] reductionProjection10272 ![reductionProjection9772, reductionProjection10271, reductionProjection10271, oldProjection967, oldProjection2419]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10273 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (94, -15), (243, -160), (700, -240), (704, -80), (1251, -20)]

def reductionPivot10273 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, 0, -1, 0]]

theorem reductionSound10273 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6698).moment H =
      Integer.Sparse.eval reductionProjection10273 (momentVector H) := by
  have heq : reductionPivot10273 = (fun u v => (normalNode6698).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6698).moment H = injectiveMoment H reductionPivot10273 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6698).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10273 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10273 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10273 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1286, reductionProjection4446, oldProjection1214, oldProjection951] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10273 (0 : Fin 4)) = canonicalInput13852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1286 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13852 hH))).trans (oldProjectionSound1286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10273 (1 : Fin 4)) = (normalNode6718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4446 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10273 (2 : Fin 4)) = canonicalInput13500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13500 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10273 (3 : Fin 4)) = canonicalInput13498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection951 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10273 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13498 hH))).trans (oldProjectionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6698).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10273 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6698).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10273 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 72, 9] ![2, 160, 20, 160] reductionProjection10273 ![oldProjection1286, reductionProjection4446, oldProjection1214, oldProjection951]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10274 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -16), (20, 4), (42, 32), (90, 32), (94, 3), (243, 64), (698, 80), (700, 128), (701, 16), (704, 64), (1059, 32), (1226, 32), (1251, 4)]

def reductionPivot10274 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, -1, 0]]

theorem reductionSound10274 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6690).moment H =
      Integer.Sparse.eval reductionProjection10274 (momentVector H) := by
  have heq : reductionPivot10274 = (fun u v => (normalNode6690).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6690).moment H = injectiveMoment H reductionPivot10274 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6690).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10274 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10274 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10274 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9892, reductionProjection10273, reductionProjection10273, oldProjection2422, oldProjection2699] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10274 (0 : Fin 5)) = (normalNode6109).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9892 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10274 (1 : Fin 5)) = (normalNode6698).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10273 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10274 (2 : Fin 5)) = canonicalInput13517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10273 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13517 hH))).trans (reductionSound10273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10274 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2422⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2422 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10274 (4 : Fin 5)) = canonicalInput13519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2699 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10274 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13519 hH))).trans (oldProjectionSound2699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6690).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10274 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6690).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10274 (j : Fin 5)))
      1 288 1440 5 ![288, 1440, 1440, 1440, 288] ![5, 1, 1, 1, 5] reductionProjection10274 ![reductionProjection9892, reductionProjection10273, reductionProjection10273, oldProjection2422, oldProjection2699]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10275 : Integer.Sparse (Fin 1613) := [(19, -4), (42, 16), (88, 16), (91, 16), (94, 1), (241, 16), (243, 48), (704, 16), (1251, 1)]

def reductionPivot10275 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 0, 3], ![0, 2, 2, -4], ![1, 1, -3, 1]]

theorem reductionSound10275 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6694).moment H =
      Integer.Sparse.eval reductionProjection10275 (momentVector H) := by
  have heq : reductionPivot10275 = (fun u v => (normalNode6694).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6694).moment H = injectiveMoment H reductionPivot10275 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6694).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10275 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10275 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10275 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection113, oldProjection87, oldProjection201] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10275 (0 : Fin 3)) = canonicalInput12578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10275 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection113 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10275 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12578 hH))).trans (oldProjectionSound113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10275 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5723 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10275 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10275 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5723 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10275 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5727 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10275 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection201 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10275 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5727 hH))).trans (oldProjectionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6694).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10275 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6694).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10275 (j : Fin 3)))
      3 144 144 3 ![3, 3, 48] ![48, 48, 3] reductionProjection10275 ![oldProjection113, oldProjection87, oldProjection201]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10276 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (56, 240), (60, -80), (94, -10), (698, -160), (700, -480), (1059, -240), (1251, 5)]

def reductionPivot10276 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![1, 0, -1, 0]]

theorem reductionSound10276 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6711).moment H =
      Integer.Sparse.eval reductionProjection10276 (momentVector H) := by
  have heq : reductionPivot10276 = (fun u v => (normalNode6711).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6711).moment H = injectiveMoment H reductionPivot10276 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6711).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10276 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10276 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10276 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection807, oldProjection811, reductionProjection4446, reductionProjection4357] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10276 (0 : Fin 4)) = canonicalInput17168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection807 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17168 hH))).trans (oldProjectionSound807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10276 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node811⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection811 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10276 (2 : Fin 4)) = (normalNode6718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4446 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10276 (3 : Fin 4)) = (normalNode6713).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4357 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10276 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6711).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10276 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6711).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10276 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 9, 9] ![2, 160, 160, 160] reductionProjection10276 ![oldProjection807, oldProjection811, reductionProjection4446, reductionProjection4357]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10277 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (56, 240), (81, 240), (90, -80), (94, -10), (698, -240), (700, -240), (1059, -80), (1227, -80), (1251, 5)]

def reductionPivot10277 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]

theorem reductionSound10277 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6709).moment H =
      Integer.Sparse.eval reductionProjection10277 (momentVector H) := by
  have heq : reductionPivot10277 = (fun u v => (normalNode6709).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6709).moment H = injectiveMoment H reductionPivot10277 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6709).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10277 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10277 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10277 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection952, oldProjection807, reductionProjection4446, reductionProjection4126] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10277 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection952 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10277 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection807 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10277 (2 : Fin 4)) = (normalNode6718).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4446 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10277 (3 : Fin 4)) = (normalNode6714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10277 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6709).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10277 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6709).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10277 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 9, 9] ![160, 2, 160, 160] reductionProjection10277 ![oldProjection952, oldProjection807, reductionProjection4446, reductionProjection4126]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10278 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 60), (56, -180), (60, 40), (81, -120), (90, 120), (94, 20), (698, 360), (700, 400), (1059, 180), (1226, 60), (1227, 40), (1251, -25)]

def reductionPivot10278 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 0, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound10278 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode6707).moment H =
      Integer.Sparse.eval reductionProjection10278 (momentVector H) := by
  have heq : reductionPivot10278 = (fun u v => (normalNode6707).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6707).moment H = injectiveMoment H reductionPivot10278 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6707).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10278 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10278 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10278 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2545, oldProjection2428, reductionProjection10276, reductionProjection10277, reductionProjection10240] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10278 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2545⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2545 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10278 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2428⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10278 (2 : Fin 5)) = canonicalInput13503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10276 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13503 hH))).trans (reductionSound10276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10278 (3 : Fin 5)) = (normalNode6709).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10277 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10278 (4 : Fin 5)) = (normalNode6708).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10240 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10278 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6707).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10278 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6707).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10278 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection10278 ![oldProjection2545, oldProjection2428, reductionProjection10276, reductionProjection10277, reductionProjection10240]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10279 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 120), (20, -10), (26, -80), (88, -80), (94, -40), (104, -240), (105, -160), (241, -400), (243, -400), (698, -240), (703, -80), (704, -160), (1226, -80), (1251, 5)]

def reductionPivot10279 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound10279 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6723).moment H =
      Integer.Sparse.eval reductionProjection10279 (momentVector H) := by
  have heq : reductionPivot10279 = (fun u v => (normalNode6723).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6723).moment H = injectiveMoment H reductionPivot10279 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6723).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10279 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10279 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10279 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection826, oldProjection1042, oldProjection763, reductionProjection4158] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10279 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node826⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection826 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10279 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5659 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5659 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10279 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5646 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection763 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5646 hH))).trans (oldProjectionSound763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10279 (3 : Fin 4)) = (normalNode6729).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4158 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10279 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6723).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10279 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6723).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10279 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 72, 144] ![20, 2, 20, 10] reductionProjection10279 ![oldProjection826, oldProjection1042, oldProjection763, reductionProjection4158]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10280 : Integer.Sparse (Fin 1613) := [(20, -1), (26, -16), (88, -16), (94, 2), (105, -48), (243, -64), (698, -16), (1251, 3)]

def reductionPivot10280 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, -2, 2], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound10280 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6724).moment H =
      Integer.Sparse.eval reductionProjection10280 (momentVector H) := by
  have heq : reductionPivot10280 = (fun u v => (normalNode6724).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6724).moment H = injectiveMoment H reductionPivot10280 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6724).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10280 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10280 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10280 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection833, oldProjection1031, reductionProjection4153, oldProjection795] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10280 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node833⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection833 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10280 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5663 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5663 hH))).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10280 (2 : Fin 4)) = (normalNode6733).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4153 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10280 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node795⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection795 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10280 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6724).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10280 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6724).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10280 (j : Fin 4)))
      2 288 288 2 ![9, 144, 9, 144] ![32, 2, 32, 2] reductionProjection10280 ![oldProjection833, oldProjection1031, reductionProjection4153, oldProjection795]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10281 : Integer.Sparse (Fin 1613) := [(26, 1), (88, 1), (243, 3), (698, 1), (703, 1), (704, 1), (1226, 1)]

def reductionPivot10281 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 1, -3, 2], ![1, 1, 2, -4]]

theorem reductionSound10281 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6771).moment H =
      Integer.Sparse.eval reductionProjection10281 (momentVector H) := by
  have heq : reductionPivot10281 = (fun u v => (normalNode6771).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6771).moment H = injectiveMoment H reductionPivot10281 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6771).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10281 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10281 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10281 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection106, oldProjection206, oldProjection76] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10281 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5775 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10281 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10281 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5775 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10281 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5705 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10281 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection206 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10281 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5705 hH))).trans (oldProjectionSound206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10281 (2 : Fin 3)) = canonicalInput13528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10281 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection76 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10281 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13528 hH))).trans (oldProjectionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6771).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10281 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6771).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10281 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection10281 ![oldProjection106, oldProjection206, oldProjection76]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10282 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (26, -80), (88, -80), (94, -15), (243, -160), (246, -80), (698, -80), (703, -160), (704, -80), (1226, -160), (1227, -80), (1251, -10)]

def reductionPivot10282 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 1, 2, -4]]

theorem reductionSound10282 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6742).moment H =
      Integer.Sparse.eval reductionProjection10282 (momentVector H) := by
  have heq : reductionPivot10282 = (fun u v => (normalNode6742).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6742).moment H = injectiveMoment H reductionPivot10282 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6742).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10282 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10282 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 3, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10282 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2350, oldProjection206, reductionProjection10281, oldProjection800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10282 (0 : Fin 4)) = (normalNode6494).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2350 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10282 (1 : Fin 4)) = canonicalInput13510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection206 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13510 hH))).trans (oldProjectionSound206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10282 (2 : Fin 4)) = (normalNode6771).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10281 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10282 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection800 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10282 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6742).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10282 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6742).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10282 (j : Fin 4)))
      2 1440 1440 2 ![72, 3, 9, 720] ![20, 480, 160, 2] reductionProjection10282 ![reductionProjection2350, oldProjection206, reductionProjection10281, oldProjection800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10283 : Integer.Sparse (Fin 1613) := [(0, 2), (3, -120), (4, 5), (19, -220), (20, 35), (26, 160), (88, 160), (94, 85), (104, 240), (105, 160), (241, 400), (243, 560), (246, 160), (698, 400), (703, 320), (704, 320), (1226, 320), (1227, 160), (1251, -15)]

def reductionPivot10283 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound10283 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6734).moment H =
      Integer.Sparse.eval reductionProjection10283 (momentVector H) := by
  have heq : reductionPivot10283 = (fun u v => (normalNode6734).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6734).moment H = injectiveMoment H reductionPivot10283 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6734).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10283 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10283 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10283 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2352, reductionProjection10279, oldProjection1042, reductionProjection10282, reductionProjection4200] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10283 (0 : Fin 5)) = (normalNode6471).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2352 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10283 (1 : Fin 5)) = (normalNode6723).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10283 (2 : Fin 5)) = canonicalInput13506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13506 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10283 (3 : Fin 5)) = (normalNode6742).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10282 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10283 (4 : Fin 5)) = (normalNode6745).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4200 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10283 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6734).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10283 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6734).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10283 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection10283 ![reductionProjection2352, reductionProjection10279, oldProjection1042, reductionProjection10282, reductionProjection4200]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10284 : Integer.Sparse (Fin 1613) := [(19, -4), (26, 16), (88, 16), (94, 1), (104, 16), (105, 16), (241, 32), (243, 32), (1251, 1)]

def reductionPivot10284 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 2, 2, -4], ![1, 0, -3, 2]]

theorem reductionSound10284 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6780).moment H =
      Integer.Sparse.eval reductionProjection10284 (momentVector H) := by
  have heq : reductionPivot10284 = (fun u v => (normalNode6780).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6780).moment H = injectiveMoment H reductionPivot10284 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6780).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10284 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10284 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10284 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection102, oldProjection75, oldProjection201] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10284 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5801 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10284 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection102 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10284 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5801 hH))).trans (oldProjectionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10284 (1 : Fin 3)) = canonicalInput13543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10284 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection75 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10284 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection75 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13543 hH))).trans (oldProjectionSound75 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10284 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5727 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10284 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection201 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10284 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5727 hH))).trans (oldProjectionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6780).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10284 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6780).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10284 (j : Fin 3)))
      3 144 144 3 ![3, 3, 48] ![48, 48, 3] reductionProjection10284 ![oldProjection102, oldProjection75, oldProjection201]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10285 : Integer.Sparse (Fin 1613) := [(3, 4), (19, -4), (20, -1), (26, -16), (88, -16), (94, 3), (104, -32), (105, -16), (241, -16), (243, -16), (698, -16), (703, -16), (1226, -16), (1251, 8)]

def reductionPivot10285 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, 0, -2, 1]]

theorem reductionSound10285 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6747).moment H =
      Integer.Sparse.eval reductionProjection10285 (momentVector H) := by
  have heq : reductionPivot10285 = (fun u v => (normalNode6747).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6747).moment H = injectiveMoment H reductionPivot10285 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6747).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10285 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10285 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 36, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10285 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2345, oldProjection201, oldProjection803, reductionProjection10284] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10285 (0 : Fin 4)) = (normalNode6498).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2345 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10285 (1 : Fin 4)) = canonicalInput13515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection201 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13515 hH))).trans (oldProjectionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10285 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10285 (3 : Fin 4)) = (normalNode6780).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10284 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10285 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6747).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10285 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6747).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10285 (j : Fin 4)))
      2 288 288 2 ![144, 48, 36, 144] ![2, 6, 8, 2] reductionProjection10285 ![reductionProjection2345, oldProjection201, oldProjection803, reductionProjection10284]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10286 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -60), (19, -60), (20, 15), (26, 160), (88, 160), (94, -20), (104, 240), (105, 320), (241, 80), (243, 400), (698, 240), (703, 160), (1226, 160), (1251, 30)]

def reductionPivot10286 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound10286 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6735).moment H =
      Integer.Sparse.eval reductionProjection10286 (momentVector H) := by
  have heq : reductionPivot10286 = (fun u v => (normalNode6735).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6735).moment H = injectiveMoment H reductionPivot10286 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6735).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10286 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10286 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10286 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2347, reductionProjection10280, oldProjection1031, oldProjection2409, reductionProjection10285] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10286 (0 : Fin 5)) = (normalNode6475).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2347 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10286 (1 : Fin 5)) = (normalNode6724).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10280 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10286 (2 : Fin 5)) = canonicalInput13507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13507 hH))).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10286 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2409⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2409 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10286 (4 : Fin 5)) = (normalNode6747).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10285 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10286 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6735).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10286 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6735).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10286 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 144, 1440, 288] ![5, 5, 10, 1, 5] reductionProjection10286 ![reductionProjection2347, reductionProjection10280, oldProjection1031, oldProjection2409, reductionProjection10285]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10287 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -15), (26, -80), (42, -160), (94, -30), (243, -320), (244, -80), (246, -80), (698, -240), (700, -400), (701, -240), (703, -160), (704, -400), (1059, -80), (1251, -20)]

def reductionPivot10287 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 3, -4]]

theorem reductionSound10287 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6754).moment H =
      Integer.Sparse.eval reductionProjection10287 (momentVector H) := by
  have heq : reductionPivot10287 = (fun u v => (normalNode6754).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6754).moment H = injectiveMoment H reductionPivot10287 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6754).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10287 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10287 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10287 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2529, reductionProjection4185, oldProjection798, oldProjection799] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10287 (0 : Fin 4)) = (normalNode6519).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2529 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10287 (1 : Fin 4)) = (normalNode6800).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4185 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10287 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5700 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection798 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection798 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5700 hH))).trans (oldProjectionSound798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10287 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5701 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection799 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10287 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5701 hH))).trans (oldProjectionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6754).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10287 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6754).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10287 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 144, 720] ![10, 10, 10, 2] reductionProjection10287 ![reductionProjection2529, reductionProjection4185, oldProjection798, oldProjection799]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10288 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -80), (4, 5), (19, -400), (20, 60), (26, 160), (40, -240), (42, 400), (94, 135), (104, 160), (105, 80), (106, 80), (241, 160), (243, 1040), (244, 320), (246, 160), (692, -240), (698, 880), (700, 1360), (701, 720), (703, 400), (704, 1280), (1052, -240), (1059, 320), (1251, 60)]

def reductionPivot10288 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 3, -4]]

theorem reductionSound10288 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6736).moment H =
      Integer.Sparse.eval reductionProjection10288 (momentVector H) := by
  have heq : reductionPivot10288 = (fun u v => (normalNode6736).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6736).moment H = injectiveMoment H reductionPivot10288 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6736).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10288 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10288 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10288 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10148, reductionProjection4187, reductionProjection10287, oldProjection2414, oldProjection2415] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10288 (0 : Fin 5)) = (normalNode6477).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10148 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10288 (1 : Fin 5)) = (normalNode6727).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4187 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10288 (2 : Fin 5)) = (normalNode6754).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10287 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10288 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2414⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2414 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10288 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2415⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2415 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10288 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6736).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10288 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6736).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10288 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 144] ![1, 5, 1, 1, 10] reductionProjection10288 ![reductionProjection10148, reductionProjection4187, reductionProjection10287, oldProjection2414, oldProjection2415]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10289 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (26, -16), (42, -32), (94, -3), (243, -32), (246, -16), (700, -16), (701, -16), (703, -32), (1251, -2)]

def reductionPivot10289 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 1, -2, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound10289 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6755).moment H =
      Integer.Sparse.eval reductionProjection10289 (momentVector H) := by
  have heq : reductionPivot10289 = (fun u v => (normalNode6755).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6755).moment H = injectiveMoment H reductionPivot10289 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6755).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10289 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10289 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10289 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection762, reductionProjection4177, oldProjection816, oldProjection817] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10289 (0 : Fin 4)) = (normalNode6520).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection762 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10289 (1 : Fin 4)) = (normalNode6803).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4177 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10289 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection816 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10289 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node817⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection817 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10289 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6755).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10289 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6755).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10289 (j : Fin 4)))
      2 288 288 2 ![144, 9, 72, 9] ![2, 32, 4, 32] reductionProjection10289 ![reductionProjection762, reductionProjection4177, oldProjection816, oldProjection817]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10290 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -100), (4, 5), (19, -240), (20, 45), (26, 160), (40, -240), (42, 400), (94, 60), (104, 240), (105, 80), (241, 80), (243, 640), (246, 160), (698, 160), (700, 320), (701, 320), (703, 400), (704, 640), (1251, 70)]

def reductionPivot10290 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound10290 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6737).moment H =
      Integer.Sparse.eval reductionProjection10290 (momentVector H) := by
  have heq : reductionPivot10290 = (fun u v => (normalNode6737).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6737).moment H = injectiveMoment H reductionPivot10290 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6737).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10290 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10290 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10290 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2369, reductionProjection4178, reductionProjection10289, oldProjection2416, oldProjection2417] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10290 (0 : Fin 5)) = (normalNode6479).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2369 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10290 (1 : Fin 5)) = (normalNode6728).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4178 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10290 (2 : Fin 5)) = (normalNode6755).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10289 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10290 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2416⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2416 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10290 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2417⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2417 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10290 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6737).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10290 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6737).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10290 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 1440, 1440] ![5, 5, 5, 1, 1] reductionProjection10290 ![reductionProjection2369, reductionProjection4178, reductionProjection10289, oldProjection2416, oldProjection2417]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10291 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 140), (20, -20), (26, -80), (42, -160), (94, -55), (104, -160), (105, -80), (241, -160), (243, -400), (698, -160), (700, -80), (701, -80), (703, -80), (704, -400), (1251, -40)]

def reductionPivot10291 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, 0, -2, 1]]

theorem reductionSound10291 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6758).moment H =
      Integer.Sparse.eval reductionProjection10291 (momentVector H) := by
  have heq : reductionPivot10291 = (fun u v => (normalNode6758).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6758).moment H = injectiveMoment H reductionPivot10291 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6758).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10291 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10291 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10291 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection755, oldProjection818, oldProjection819, reductionProjection4532] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10291 (0 : Fin 4)) = (normalNode6523).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection755 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10291 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node818⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection818 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10291 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10291 (3 : Fin 4)) = (normalNode6807).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4532 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10291 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6758).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10291 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6758).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10291 (j : Fin 4)))
      2 1440 1440 2 ![72, 144, 720, 144] ![20, 10, 2, 10] reductionProjection10291 ![reductionProjection755, oldProjection818, oldProjection819, reductionProjection4532]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10292 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (19, -300), (20, 50), (26, 160), (40, -240), (42, 400), (94, 115), (104, 240), (105, 240), (241, 560), (243, 1120), (698, 640), (700, 320), (701, 320), (703, 240), (704, 960), (1251, 35)]

def reductionPivot10292 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound10292 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6739).moment H =
      Integer.Sparse.eval reductionProjection10292 (momentVector H) := by
  have heq : reductionPivot10292 = (fun u v => (normalNode6739).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6739).moment H = injectiveMoment H reductionPivot10292 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6739).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10292 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10292 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10292 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10150, reductionProjection4169, oldProjection2417, oldProjection2418, reductionProjection10291] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10292 (0 : Fin 5)) = (normalNode6482).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10150 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10292 (1 : Fin 5)) = (normalNode6730).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4169 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10292 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2417⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2417 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10292 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2418⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2418 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10292 (4 : Fin 5)) = (normalNode6758).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10292 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6739).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10292 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6739).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10292 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection10292 ![reductionProjection10150, reductionProjection4169, oldProjection2417, oldProjection2418, reductionProjection10291]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10293 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (20, -5), (42, -80), (90, -80), (94, -25), (243, -160), (698, -480), (700, -480), (701, -80), (704, -240), (1059, -160), (1226, -80), (1227, -80)]

def reductionPivot10293 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound10293 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6772).moment H =
      Integer.Sparse.eval reductionProjection10293 (momentVector H) := by
  have heq : reductionPivot10293 = (fun u v => (normalNode6772).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6772).moment H = injectiveMoment H reductionPivot10293 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6772).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10293 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10293 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10293 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection836, oldProjection1041, oldProjection799, oldProjection798] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10293 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5776 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection836 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5776 hH))).trans (oldProjectionSound836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10293 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5707 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1041 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5707 hH))).trans (oldProjectionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10293 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5701 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection799 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5701 hH))).trans (oldProjectionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10293 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5700 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection798 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10293 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection798 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5700 hH))).trans (oldProjectionSound798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6772).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10293 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6772).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10293 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 720, 144] ![2, 4, 2, 10] reductionProjection10293 ![oldProjection836, oldProjection1041, oldProjection799, oldProjection798]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10294 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -36), (20, 6), (42, 32), (90, 32), (94, 22), (243, 96), (244, 16), (698, 272), (700, 208), (701, 48), (704, 128), (1059, 80), (1226, 32), (1227, 32), (1251, -21)]

def reductionPivot10294 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound10294 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6743).moment H =
      Integer.Sparse.eval reductionProjection10294 (momentVector H) := by
  have heq : reductionPivot10294 = (fun u v => (normalNode6743).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6743).moment H = injectiveMoment H reductionPivot10294 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6743).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10294 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10294 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 360, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10294 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2412, oldProjection1041, reductionProjection10293, reductionProjection10293, oldProjection2424] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10294 (0 : Fin 5)) = (normalNode6496).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2412 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10294 (1 : Fin 5)) = canonicalInput13511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1041 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13511 hH))).trans (oldProjectionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10294 (2 : Fin 5)) = (normalNode6772).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10293 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10294 (3 : Fin 5)) = canonicalInput13520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10293 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13520 hH))).trans (reductionSound10293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10294 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2424⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2424 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10294 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6743).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10294 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6743).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10294 (j : Fin 5)))
      1 288 1440 5 ![1440, 360, 1440, 1440, 1440] ![1, 4, 1, 1, 1] reductionProjection10294 ![reductionProjection2412, oldProjection1041, reductionProjection10293, reductionProjection10293, oldProjection2424]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10295 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (90, -80), (94, 15), (243, -240), (700, -160), (1226, -160), (1227, -80), (1251, 10)]

def reductionPivot10295 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound10295 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6775).moment H =
      Integer.Sparse.eval reductionProjection10295 (momentVector H) := by
  have heq : reductionPivot10295 = (fun u v => (normalNode6775).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6775).moment H = injectiveMoment H reductionPivot10295 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6775).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10295 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10295 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10295 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection847, oldProjection1063, oldProjection817, oldProjection816] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10295 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node847⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection847 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10295 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5710 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5710 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10295 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node817⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection817 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10295 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection816 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10295 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6775).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10295 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6775).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10295 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 9, 72] ![160, 2, 160, 20] reductionProjection10295 ![oldProjection847, oldProjection1063, oldProjection817, oldProjection816]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10296 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (42, -80), (90, -80), (94, -35), (241, -160), (243, -240), (698, -480), (700, -160), (704, -160), (1226, -160), (1251, 15)]

def reductionPivot10296 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, -2, 1]]

theorem reductionSound10296 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6776).moment H =
      Integer.Sparse.eval reductionProjection10296 (momentVector H) := by
  have heq : reductionPivot10296 = (fun u v => (normalNode6776).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6776).moment H = injectiveMoment H reductionPivot10296 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6776).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10296 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10296 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10296 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection850, oldProjection819, oldProjection818, oldProjection1063] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10296 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node850⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection850 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10296 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10296 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node818⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection818 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10296 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5710 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10296 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5710 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6776).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10296 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6776).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10296 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 144, 720] ![2, 2, 10, 2] reductionProjection10296 ![oldProjection850, oldProjection819, oldProjection818, oldProjection1063]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10297 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -100), (20, 20), (42, 160), (90, 160), (94, 55), (241, 160), (243, 480), (698, 560), (700, 320), (701, 80), (704, 400), (1226, 320), (1227, 160)]

def reductionPivot10297 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound10297 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6744).moment H =
      Integer.Sparse.eval reductionProjection10297 (momentVector H) := by
  have heq : reductionPivot10297 = (fun u v => (normalNode6744).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6744).moment H = injectiveMoment H reductionPivot10297 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6744).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10297 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10297 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10297 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2399, oldProjection1063, reductionProjection10295, oldProjection2425, reductionProjection10296] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10297 (0 : Fin 5)) = (normalNode6497).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2399 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10297 (1 : Fin 5)) = canonicalInput13512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13512 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10297 (2 : Fin 5)) = (normalNode6775).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10295 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10297 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2425⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2425 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10297 (4 : Fin 5)) = (normalNode6776).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10296 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10297 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6744).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10297 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6744).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10297 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection10297 ![reductionProjection2399, oldProjection1063, reductionProjection10295, oldProjection2425, reductionProjection10296]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10298 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -140), (20, 20), (42, 320), (58, -480), (60, 320), (94, 65), (243, 480), (244, 80), (698, 480), (700, 1520), (701, 240), (704, 640), (1059, 80), (1251, 105)]

def reductionPivot10298 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound10298 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6749).moment H =
      Integer.Sparse.eval reductionProjection10298 (momentVector H) := by
  have heq : reductionPivot10298 = (fun u v => (normalNode6749).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6749).moment H = injectiveMoment H reductionPivot10298 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6749).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10298 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10298 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 720, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10298 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2479, oldProjection2427, reductionProjection4481, reductionProjection4481, oldProjection2430] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10298 (0 : Fin 5)) = (normalNode6506).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2479 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10298 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2427⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2427 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10298 (2 : Fin 5)) = (normalNode6787).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4481 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10298 (3 : Fin 5)) = canonicalInput13526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4481 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13526 hH))).trans (reductionSound4481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10298 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2430⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2430 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10298 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6749).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10298 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6749).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10298 (j : Fin 5)))
      1 1440 1440 1 ![144, 720, 288, 288, 1440] ![10, 2, 5, 5, 1] reductionProjection10298 ![reductionProjection2479, oldProjection2427, reductionProjection4481, reductionProjection4481, oldProjection2430]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10299 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (20, 10), (42, 320), (58, -480), (60, 320), (94, 45), (241, 80), (243, 480), (698, 880), (700, 1840), (701, 80), (704, 400), (1052, -240), (1059, 400), (1251, -10)]

def reductionPivot10299 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound10299 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6750).moment H =
      Integer.Sparse.eval reductionProjection10299 (momentVector H) := by
  have heq : reductionPivot10299 = (fun u v => (normalNode6750).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6750).moment H = injectiveMoment H reductionPivot10299 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6750).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10299 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10299 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10299 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection850, oldProjection2428, reductionProjection4498, oldProjection2430, reductionProjection844] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10299 (0 : Fin 5)) = (normalNode6507).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection850 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10299 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2428⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10299 (2 : Fin 5)) = (normalNode6788).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4498 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10299 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2430⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2430 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10299 (4 : Fin 5)) = (normalNode6789).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10299 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6750).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10299 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6750).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10299 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection10299 ![reductionProjection850, oldProjection2428, reductionProjection4498, oldProjection2430, reductionProjection844]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10300 : Integer.Sparse (Fin 1613) := [(0, 3), (42, -80), (56, 240), (60, -80), (90, -80), (94, -10), (243, -80), (697, 240), (698, -400), (700, -480), (704, -80), (1058, 240), (1059, -240), (1226, -80), (1251, 35)]

def reductionPivot10300 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 1, -3, 1]]

theorem reductionSound10300 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6767).moment H =
      Integer.Sparse.eval reductionProjection10300 (momentVector H) := by
  have heq : reductionPivot10300 = (fun u v => (normalNode6767).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6767).moment H = injectiveMoment H reductionPivot10300 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6767).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10300 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10300 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 3, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10300 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection839, reductionProjection843, reductionProjection784, oldProjection802] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10300 (0 : Fin 4)) = canonicalInput13898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection839 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13898 hH))).trans (oldProjectionSound839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10300 (1 : Fin 4)) = (normalNode6790).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection843 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10300 (2 : Fin 4)) = (normalNode6783).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10300 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5691 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection802 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10300 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5691 hH))).trans (oldProjectionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6767).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10300 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6767).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10300 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 3, 360] ![2, 10, 480, 4] reductionProjection10300 ![oldProjection839, reductionProjection843, reductionProjection784, oldProjection802]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10301 : Integer.Sparse (Fin 1613) := [(0, 4), (42, -80), (56, 240), (90, -160), (94, -35), (243, -80), (697, 240), (698, -560), (700, -160), (704, -80), (1058, 240), (1226, -240), (1227, -240), (1251, 5)]

def reductionPivot10301 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound10301 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6764).moment H =
      Integer.Sparse.eval reductionProjection10301 (momentVector H) := by
  have heq : reductionPivot10301 = (fun u v => (normalNode6764).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6764).moment H = injectiveMoment H reductionPivot10301 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6764).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10301 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10301 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 3, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10301 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4008, reductionProjection784, reductionProjection4355, oldProjection801] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10301 (0 : Fin 4)) = (normalNode7037).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4008 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10301 (1 : Fin 4)) = (normalNode6783).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10301 (2 : Fin 4)) = (normalNode6778).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4355 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10301 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node801⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection801 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10301 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6764).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10301 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6764).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10301 (j : Fin 4)))
      2 1440 1440 2 ![720, 3, 72, 720] ![2, 480, 20, 2] reductionProjection10301 ![reductionProjection4008, reductionProjection784, reductionProjection4355, oldProjection801]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10302 : Integer.Sparse (Fin 1613) := [(0, 1), (42, 48), (56, -144), (60, 32), (90, 96), (94, 24), (243, 48), (697, -144), (698, 480), (700, 288), (704, 48), (1058, -144), (1059, 144), (1226, 144), (1227, 144), (1251, -57)]

def reductionPivot10302 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -3, 1]]

theorem reductionSound10302 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6759).moment H =
      Integer.Sparse.eval reductionProjection10302 (momentVector H) := by
  have heq : reductionPivot10302 = (fun u v => (normalNode6759).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6759).moment H = injectiveMoment H reductionPivot10302 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6759).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10302 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10302 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10302 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5563, reductionProjection10300, reductionProjection10300, reductionProjection10301, oldProjection2420] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10302 (0 : Fin 5)) = (normalNode7021).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10302 (1 : Fin 5)) = canonicalInput13522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10300 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13522 hH))).trans (reductionSound10300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10302 (2 : Fin 5)) = (normalNode6767).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10300 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10302 (3 : Fin 5)) = (normalNode6764).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10301 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10302 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2420⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2420 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10302 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2420 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6759).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10302 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6759).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10302 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection10302 ![reductionProjection5563, reductionProjection10300, reductionProjection10300, reductionProjection10301, oldProjection2420]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10303 : Integer.Sparse (Fin 1613) := [(0, -3), (42, 120), (56, -360), (60, 80), (90, 240), (94, 15), (695, -360), (698, 720), (700, 1120), (701, 120), (1059, 480), (1226, 120), (1251, -30)]

def reductionPivot10303 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]

theorem reductionSound10303 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6760).moment H =
      Integer.Sparse.eval reductionProjection10303 (momentVector H) := by
  have heq : reductionPivot10303 = (fun u v => (normalNode6760).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6760).moment H = injectiveMoment H reductionPivot10303 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6760).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10303 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10303 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10303 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2446, reductionProjection4334, reductionProjection4334, oldProjection2421, reductionProjection4310] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10303 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2446⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2446 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10303 (1 : Fin 5)) = canonicalInput13523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4334 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13523 hH))).trans (reductionSound4334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10303 (2 : Fin 5)) = (normalNode6768).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4334 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10303 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2421⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2421 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10303 (4 : Fin 5)) = (normalNode6765).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4310 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10303 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6760).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10303 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6760).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10303 (j : Fin 5)))
      1 720 1440 2 ![1440, 18, 18, 1440, 1440] ![1, 80, 80, 1, 1] reductionProjection10303 ![oldProjection2446, reductionProjection4334, reductionProjection4334, oldProjection2421, reductionProjection4310]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
